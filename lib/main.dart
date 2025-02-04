import 'package:devloper_app/app_router.dart';
import 'package:devloper_app/presentaion/screen/widget/bouttom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget(
    appRouter: AppRouter(),
  ));
}

class MyWidget extends StatefulWidget {
  final AppRouter appRouter;

  const MyWidget({Key? key, required this.appRouter}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late final AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = widget.appRouter;  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    //  home:BottomNavigation()
    );
  }
}
