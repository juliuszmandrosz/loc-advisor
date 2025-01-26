import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loc_advisor/app/auth/application/sign_in_cubit.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_input.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  final String email;

  const SignInPage({this.email = '', super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<SignInCubit>();
        if (email.isNotEmpty) {
          cubit.setEmail(email);
        }
        return cubit;
      },
      child: LoaderOverlay(
        child: BlocConsumer<SignInCubit, SignInState>(
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
                await AutoRouter.of(context).replaceAll([const HomeRoute()]);
            }
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () => context.unfocus(),
              child: Scaffold(
                body: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.teal.shade400,
                        Colors.teal.shade200,
                        Colors.teal.shade100,
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
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
                                'Witaj w LocAdvisor!',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.teal.shade800,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Zaloguj się, aby kontynuować',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(height: 40),
                              // Email Field
                              LocAdvisorTextInput(
                                value: state.email.value,
                                onChanged: context.read<SignInCubit>().setEmail,
                                onValidate:
                                    context.read<SignInCubit>().validateEmail,
                                isFormValid: state.isFormValid,
                                errorText: state.email.error?.message,
                                keyboardType: TextInputType.emailAddress,
                                hintText: 'Email',
                                prefixIcon: Icons.email,
                              ),
                              const SizedBox(height: 20),
                              LocAdvisorTextInput(
                                value: state.password.value,
                                onChanged:
                                    context.read<SignInCubit>().setPassword,
                                onValidate: context
                                    .read<SignInCubit>()
                                    .validatePassword,
                                isFormValid: state.isFormValid,
                                errorText: state.password.error?.message,
                                keyboardType: TextInputType.visiblePassword,
                                hintText: 'Hasło',
                                prefixIcon: Icons.lock,
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () async {
                                    context.unfocus();
                                    await context.replaceRoute(
                                      ForgotPasswordRoute(
                                        email: state.email.value,
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Zresetuj hasło',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              ElevatedButton(
                                onPressed: context.read<SignInCubit>().signIn,
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
                                  'Zaloguj się',
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
                                  await context.replaceRoute(SignUpRoute());
                                },
                                child: const Text(
                                  'Nie masz konta? Zarejestruj się',
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
