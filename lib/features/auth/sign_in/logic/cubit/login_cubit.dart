import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mandoob/features/auth/sign_in/data/models/login_request_body.dart';
import 'package:mandoob/features/auth/sign_in/data/repos/login_repo.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_state.dart';
import 'package:mandoob/core/api/dio_factory.dart';
import 'package:mandoob/core/cache/cache_helper.dart';
import 'package:mandoob/core/cache/cache_keys.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    try {
      final response = await _loginRepo.login(loginRequestBody);

      response.when(success: (loginResponse) async {
        print("Login Success: ${loginResponse.data?.token}");
        await saveUserToken(loginResponse.data?.token ?? '');
        emit(LoginState.success(loginResponse));
      }, failure: (error) {
        print("Login Failed: $error");
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      });
    } catch (e) {
      print("Error: $e");
      emit(const LoginState.error(error: "An unexpected error occurred"));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  Future<void> logout(BuildContext context) async {
    Future<void> logout(BuildContext context) async {
      await SharedPrefHelper.clearAllSecuredData();
      await SharedPrefHelper.removeData(SharedPrefKeys.userToken);

      // إزالة التوكن من هيدر Dio
      DioFactory.removeTokenFromHeader();

      // إعادة الحالة إلى البداية (تسجيل الخروج)
      emit(const LoginState.initial());

      // يمكنك إضافة إعادة التوجيه إلى صفحة تسجيل الدخول هنا
      GoRouter.of(context).go('/SignIn');
    }
  }
}
