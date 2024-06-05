import 'package:dados/config/config.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Home owo"),
        elevation: 3,
      ),
      body: const Center(child: Dado()),
    );
  }
}
