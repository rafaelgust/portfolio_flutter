import 'package:go_router/go_router.dart';

import '../core/utils/deferred_route.dart';

import '../core/widgets/error_view.dart';
import '../core/widgets/loading_view.dart';

import '../modules/home/views/home_view.dart' deferred as home_view;

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) => ErrorPage(state.error!.message),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return DeferredRoute(
            home_view.loadLibrary,
            () => home_view.HomeView(),
          );
        },
        routes: [
          GoRoute(
            path: 'wait',
            builder: (context, state) {
              return const LoadingPage();
            },
          ),
        ],
      ),
      /* GoRoute(
        path: '/projects',
        builder: (context, state) {
          return DeferredRoute(
            project_view.loadLibrary,
            () => project_view.ProjectView(),
          );
        },
        routes: [
          GoRoute(
            path: 'item/:id',
            builder: (context, state) {
              return DeferredRoute(
                project_view.loadLibrary,
                () => project_view.ProjectView(
                  id: state.pathParameters["id"],
                ),
              );
            },
          ),
        ],
      ), */
    ],
  );
}
