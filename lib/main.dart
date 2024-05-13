import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nissan 0514',
      home: const MyHomePage(),
      theme: ThemeData(colorSchemeSeed: Colors.white),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedModel = "Ninguno";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff171818),
        title: const Text("Nissan Muñoz 0514",
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Modelo Seleccionado: $selectedModel",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: RadioMenuButton(
                value: "Kicks",
                groupValue: selectedModel,
                onChanged: (selectedValue) {
                  setState(() => selectedModel = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff1975ab)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      child: Image.asset("assets/images/kicks.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Kicks",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: RadioMenuButton(
                value: "Versa",
                groupValue: selectedModel,
                onChanged: (selectedValue) {
                  setState(() => selectedModel = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffcb1130)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      child: Image.asset("assets/images/versa.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Versa",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: RadioMenuButton(
                value: "Urvan",
                groupValue: selectedModel,
                onChanged: (selectedValue) {
                  setState(() => selectedModel = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff606b72)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      child: Image.asset("assets/images/urvan.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Urvan",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
