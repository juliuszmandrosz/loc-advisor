import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loc_advisor/app/auth/application/forgot_password_cubit.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_input.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {
  final String email;

  const ForgotPasswordPage({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<ForgotPasswordCubit>();
        if (email.isNotEmpty) {
          cubit.setEmail(email);
        }
        return cubit;
      },
      child: LoaderOverlay(
        child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
          listenWhen: (previous, current) =>
              previous.status != current.status ||
              previous.authFailureOrSuccessOption !=
                  current.authFailureOrSuccessOption,
          listener: (context, state) async {
            switch (state.status) {
              case StateStatus.initial:
              case StateStatus.loading:
                context.unfocus();
                context.loaderOverlay.show();
              case StateStatus.failure:
                context.loaderOverlay.hide();
                state.authFailureOrSuccessOption.fold(
                  () {},
                  (failure) => context.showSnackbarMessage(failure.message),
                );
              case StateStatus.success:
                context.loaderOverlay.hide();
                context.showSnackbarMessage(
                  'Link do resetowania hasła wysłany',
                );
                await context.replaceRoute(
                  SignInRoute(email: state.email.value),
                );
            }
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () => context.unfocus(),
              child: Scaffold(
                body: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF80CBC4),
                        Color(0xFF4DB6AC),
                        Color(0xFF00897B),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color: Colors.white.withOpacity(0.95),
                        margin: const EdgeInsets.all(24),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 36.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Odzyskaj hasło',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.teal.shade800,
                                ),
                              ),
                              const SizedBox(height: 40),
                              LocAdvisorTextInput(
                                value: state.email.value,
                                onChanged: context
                                    .read<ForgotPasswordCubit>()
                                    .setEmail,
                                onValidate: context
                                    .read<ForgotPasswordCubit>()
                                    .validateEmail,
                                isFormValid: state.isFormValid,
                                errorText: state.email.error?.message,
                                keyboardType: TextInputType.emailAddress,
                                hintText: 'Email',
                                prefixIcon: Icons.email,
                              ),
                              const SizedBox(height: 40),
                              ElevatedButton(
                                onPressed: context
                                    .read<ForgotPasswordCubit>()
                                    .sendResetPasswordEmail,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.teal.shade700,
                                  foregroundColor: Colors.white,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  elevation: 5,
                                ),
                                child: const Text(
                                  'Wyślij link do resetowania hasła',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              TextButton(
                                onPressed: () async {
                                  context.unfocus();
                                  await context.replaceRoute(
                                    SignInRoute(email: state.email.value),
                                  );
                                },
                                child: const Text(
                                  'Wróć do logowania',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
