import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/appwrite_service.dart';
import 'features/auth/data/auth_datasource.dart';
import 'features/auth/data/auth_repository_impl.dart';
import 'features/auth/presentation/auth_controller.dart';
import 'features/auth/presentation/login_screen.dart';
import 'features/auth/presentation/cambiar_password_screen.dart';
import 'features/auth/presentation/recuperar_password_screen.dart';
import 'features/electoral/domain/repositories/electoral_repository_impl.dart';
import 'features/electoral/presentation/controllers/electoral_controller.dart';
import 'features/electoral/presentation/screens/panel_provincial_screen.dart';
import 'features/electoral/presentation/screens/panel_coordinador_screen.dart';
import 'features/electoral/presentation/screens/panel_veedor_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appwriteService = AppwriteService();
    final authRepository = AuthRepositoryImpl(
      AuthDatasource(appwriteService),
    );
    final electoralRepository = ElectoralRepositoryImpl(appwriteService);

    return MultiProvider(
      providers: [
        Provider<AppwriteService>.value(value: appwriteService),
        ChangeNotifierProvider(
          create: (_) => AuthController(authRepository),
        ),
        ChangeNotifierProvider(
          create: (_) => ElectoralController(electoralRepository),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => const LoginScreen(),
          '/cambiar-password': (_) => const CambiarPasswordScreen(),
          '/recuperar-password': (_) => const RecuperarPasswordScreen(),
          '/provincial': (_) => const PanelProvincialScreen(),
          '/coordinador': (_) => const PanelCoordinadorScreen(),
          '/veedor': (_) => const PanelVeedorScreen(),
        },
      ),
    );
  }
}
