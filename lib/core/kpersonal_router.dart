import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:kpersonal/features/home/presentation/pages/home_page.dart';
import 'package:kpersonal/features/options/presentation/pages/options_page.dart';
import 'package:kpersonal/features/task_module/presentation/pages/task_module_page.dart';

class KPersonalRouter extends GoRouter {
  KPersonalRouter()
      : super(
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (
                BuildContext context,
                GoRouterState state,
              ) {
                return const HomePage();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'task_module',
                  builder: (
                    BuildContext context,
                    GoRouterState state,
                  ) {
                    return const TaskModulePage();
                  },
                ),
                GoRoute(
                  path: 'options',
                  builder: (
                    BuildContext context,
                    GoRouterState state,
                  ) {
                    return const OptionsPage();
                  },
                ),
              ],
            ),
          ],
        );
}
