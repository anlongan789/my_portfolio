import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

GoRouter AppRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: "navScreen",
        builder: (context, state) => const NavigationScreen(),
        routes: [
          GoRoute(
            path: "home",
            name: "home",
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: "about",
            name: "about",
            builder: (context, state) => AboutScreen(),
          ),
          GoRoute(
            path: "education_and_skills",
            name: "education and skills",
            builder: (context, state) => TechScreen(),
          ),
          GoRoute(
            path: "projects",
            name: "projects",
            builder: (context, state) => ProjectScreen(),
          ),
          GoRoute(
            path: "contact",
            name: "contact",
            builder: (context, state) => ContactScreen(),
          ),
        ],
      )
    ],
  );
}
