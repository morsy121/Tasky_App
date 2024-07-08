import 'package:go_router/go_router.dart';
import 'package:taskyapp/Features/Add_Tasks/presentaion/view/add_task_view.dart';
import 'package:taskyapp/Features/Auth/presentaion/view/sign_in_view.dart';
import 'package:taskyapp/Features/Auth/presentaion/view/sign_up_view.dart';
import 'package:taskyapp/Features/OnBoarding/presentaion/views/onBoarding_view.dart';
import 'package:taskyapp/Features/Splash/presentaion/views/splash_view.dart';
import 'package:taskyapp/Features/home_Tasks/presentaion/view/home_task_view.dart';
import 'package:taskyapp/Features/home_Tasks/presentaion/view/home_task_view_details.dart';
import 'package:taskyapp/Features/profile/presentaion/views/profile_view.dart';

abstract class AppRouter {
  static const konBoardingView = '/onBoardingView';
  static const ksigninview = '/signinview';
  static const ksignupview = '/signupview';
  static const khometasksview = '/hometasksview';
  static const khometasksdetailsview = '/hometasksdetailsview';
  static const kaddtaskview = '/addtaskview';
  static const kprofileView = '/profileView';
  
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: konBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: ksigninview,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: ksignupview,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: khometasksview,
        builder: (context, state) => const HomeTasksView(),
      ),
      GoRoute(
        path: khometasksdetailsview,
        builder: (context, state) => const HomeTaskDetailsView(),
      ),
      GoRoute(
        path: kaddtaskview,
        builder: (context, state) => const AddTaskView(),
      ),
      GoRoute(
        path: kprofileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
