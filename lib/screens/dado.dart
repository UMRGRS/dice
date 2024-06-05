import 'dart:math';

import 'package:dados/config/config.dart';
import 'package:toast/toast.dart';

class Dado extends StatefulWidget {
  const Dado({super.key});

  @override
  State<Dado> createState() => _DadoState();
}

class _DadoState extends State<Dado> {
  int? d1, d2;

  void rand() {
    d1 = Random().nextInt(6) + 1;
    d2 = Random().nextInt(6) + 1;
  }

  @override
  void initState() {
    rand();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Column(
      children: <Widget>[
        Expanded(
            child: IconButton(
                onPressed: () {
                  Toast.show("Tirando dado", duration: Toast.lengthShort);
                  setState(() {
                    d1 = Random().nextInt(6) + 1;
                  });
                },
                icon: Image.asset("images/dice$d1.png"))),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Cambiando"),
                        FilledButton(onPressed: () {}, child: Text("OwO"))
                      ],
                    ),
                    backgroundColor: Colors.black,
                  ));
                  setState(() {
                    d2 = Random().nextInt(6) + 1;
                  });
                },
                icon: Image.asset("images/dice$d2.png"))),
      ],
    );
  }
}
