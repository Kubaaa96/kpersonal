import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:kpersonal/pages/home_page.dart';
import 'package:kpersonal/pages/options_page.dart';
import 'package:kpersonal/pages/task_module_page.dart';

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
