import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/widgets/splashView.dart';

abstract class AppRouter{
 static final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashView()),
  GoRoute(path: '/homeview', builder: (context, state) => const HomeView())
, GoRoute(path: '/bookdetails', builder: (context, state) => const BookDetailsView())

]);

}