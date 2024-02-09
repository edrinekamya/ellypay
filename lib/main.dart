import 'package:ellypay/models/auth_provider.dart';
import 'package:ellypay/models/styles.dart';
import 'package:ellypay/screens/accounts/accounts_screen.dart';
import 'package:ellypay/screens/airtime_screen.dart';
import 'package:ellypay/screens/home/home_screen.dart';
import 'package:ellypay/screens/login/login_screen.dart';
import 'package:ellypay/screens/reset/reset_password_screen.dart';
import 'package:ellypay/screens/scaffold_with_bottom_navigation_bar.dart';
import 'package:ellypay/screens/settings_screen.dart';
import 'package:ellypay/screens/history/transaction_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final _auth = AuthProvider();

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await _auth.loadAgent();

  runApp(
    const App(),
  );

  FlutterNativeSplash.remove();
}

final _nonRedirectRoutes = ['/login', '/reset-password'];

final GoRouter _routerConfig = GoRouter(
  redirect: (BuildContext context, GoRouterState state) {
    final isSignedIn = context.read<AuthProvider>().isSignedIn;
    if (!_nonRedirectRoutes.contains(state.matchedLocation) && !isSignedIn) {
      return '/login';
    }
    return null;
  },
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldWithBottomNavigationBar(
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: '/accounts',
          name: 'accounts',
          builder: (BuildContext context, GoRouterState state) {
            return const AccountsScreen();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsScreen();
      },
    ),
    GoRoute(
      path: '/airtime',
      builder: (BuildContext context, GoRouterState state) {
        return const AirtimeScreen();
      },
    ),
    GoRoute(
      path: '/history',
      builder: (BuildContext context, GoRouterState state) {
        return TransactionHistoryScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return LoginScreen();
      },
    ),
    GoRoute(
      path: '/reset-password',
      builder: (BuildContext context, GoRouterState state) {
        return const ResetPasswordScreen();
      },
    )
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _auth),
      ],
      child: MaterialApp.router(
        restorationScopeId: 'app',
        debugShowCheckedModeBanner: false,
        routerConfig: _routerConfig,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Styles.brandColor),
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: const AppBarTheme(
            color: Styles.brandColor,
            foregroundColor: Colors.white,
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
