import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/views/bin.dart';
import 'package:memories/views/home.dart';
import 'package:memories/views/note.dart';
import 'package:memories/views/settings.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          );
        },
      ),
      routes: [
        GoRoute(
          path: 'note',
          name: 'note',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const NoteScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeIn)),
                ),
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: 'settings',
          name: 'settings',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SettingsScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeIn)),
                ),
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: 'bin',
          name: 'bin',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const BinScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeIn)),
                ),
                child: child,
              );
            },
          ),
        ),
      ],
    ),
  ],
  debugLogDiagnostics: true,
);
