import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loc_advisor/app/auth/application/sign_up_cubit.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/recommendation_type.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_input.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  final String? recommendationId;
  final RecommendationType? recommendationType;

  const SignUpPage({
    this.recommendationId,
    this.recommendationType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<SignUpCubit>();
        if (recommendationId != null && recommendationType != null) {
          cubit.setSelectedRecommendation(
            recommendationId!,
            recommendationType!,
          );
        }
        return cubit;
      },
      child: LoaderOverlay(
        child: BlocConsumer<SignUpCubit, SignUpState>(
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
                                'Stwórz konto',
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
                                onChanged: context.read<SignUpCubit>().setEmail,
                                onValidate:
                                    context.read<SignUpCubit>().validateEmail,
                                isFormValid: state.isFormValid,
                                errorText: state.email.error?.message,
                                keyboardType: TextInputType.emailAddress,
                                hintText: 'Email',
                                prefixIcon: Icons.email,
                              ),
                              const SizedBox(height: 16),
                              LocAdvisorTextInput(
                                value: state.password.value,
                                onChanged:
                                    context.read<SignUpCubit>().setPassword,
                                onValidate: context
                                    .read<SignUpCubit>()
                                    .validatePassword,
                                isFormValid: state.isFormValid,
                                errorText: state.password.error?.message,
                                keyboardType: TextInputType.visiblePassword,
                                hintText: 'Hasło',
                                prefixIcon: Icons.lock,
                              ),
                              const SizedBox(height: 16),
                              LocAdvisorTextInput(
                                value: state.confirmPassword.value,
                                onChanged: context
                                    .read<SignUpCubit>()
                                    .setConfirmPassword,
                                onValidate: context
                                    .read<SignUpCubit>()
                                    .validateConfirmPassword,
                                isFormValid: state.isFormValid,
                                errorText: state.confirmPassword.error?.message,
                                keyboardType: TextInputType.visiblePassword,
                                hintText: 'Powtórz hasło',
                                prefixIcon: Icons.lock,
                              ),
                              const SizedBox(height: 40),
                              ElevatedButton(
                                onPressed: context.read<SignUpCubit>().signUp,
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
                                  'Zarejestruj się',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              state.recommendationId.fold(
                                () => Column(
                                  children: [
                                    const SizedBox(height: 24),
                                    TextButton(
                                      onPressed: () async {
                                        context.unfocus();
                                        await context
                                            .replaceRoute(SignInRoute());
                                      },
                                      child: const Text(
                                        'Masz już konto? Zaloguj się',
                                        style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                (_) => const SizedBox(),
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
