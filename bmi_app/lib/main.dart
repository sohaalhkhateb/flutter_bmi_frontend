
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bmi/layout/bmi_app/bmi/bmi_screen.dart';
import 'package:my_bmi/shared/cubit2/cubit.dart';
import 'package:my_bmi/shared/cubit2/states.dart';
import 'package:my_bmi/shared/network/local/cache_helper.dart';
import 'shared/styles/themes.dart';
//import 'package:hexcolor/hexcolor.dart';
void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();

 // databaseFactory = databaseFactorySqflitePlugin;

  bool isDark = CacheHelper.getBoolean(key: 'isDark');

  runApp(MyApp(isDark));

  MyApp app = MyApp(isDark);
}

class MyApp extends StatelessWidget
{
  final bool isDark;

  const MyApp(this.isDark, {super.key});

  @override
  Widget build(BuildContext context)
  {

    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) =>
          AppCubit()..changeAppMode(isDark,),),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: BmiScreen(),
          );
        },
      ),
    );
  }

}