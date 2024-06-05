import 'package:dados/config/config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dados",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.deepPurple,
          primarySwatch: Colors.purple,),
      home: Home(),
    );
  }
}
