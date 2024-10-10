import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Basic Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 190, 255),
        title: Center(child: Text(' Basic Calculator')),
      ),
      body: Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey.shade200,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 + no2;

                          result = "The sum of $no1 and $no2 is $sum";

                          setState(() {});
                        },
                        child: Text('Add'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var sub = no1 - no2;

                            result = "The sub of $no1 and $no2 is $sub";

                            setState(() {});
                          },
                          child: Text('Sub')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var mul = no1 * no2;

                            result = "The mul of $no1 and $no2 is $mul";

                            setState(() {});
                          },
                          child: Text('Mul')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var div = no1 / no2;

                            result = "The div of $no1 and $no2 is $div";

                            setState(() {});
                          },
                          child: Text('Div')),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(21),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        MyHomePage();
                      });
                    },
                    child: Text('Reset'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
