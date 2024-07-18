import 'package:go_router/go_router.dart';
import 'package:provider/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: Catalog.name,
    builder: (context, state) => const Catalog(),
  ),
  GoRoute(
    path: '/card',
    name: Cart.name,
    builder: (context, state) => const Cart(),
  ),
]);
