import 'package:clean_architecture/Feature/home/presentation/views/book_details_view.dart';
import 'package:clean_architecture/Feature/home/presentation/views/home_view.dart';
import 'package:clean_architecture/Feature/search/presntation/view/search_view.dart';
import 'package:clean_architecture/Feature/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );

}