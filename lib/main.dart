import 'package:bookly_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arch/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kLeadingBooks);
  await Hive.openBox<BookEntity>(kNewestBooks);

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}
