import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _onPress() {
    print("Search Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: const Text("Fence Day"),

        actions: <Widget> [
          IconButton(onPressed: ()=> debugPrint("Icon Tapped"), icon: const Icon(Icons.send)),
          IconButton(onPressed: _onPress, icon: const Icon(Icons.search))
        ],
      ),

      backgroundColor: Colors.grey.shade300,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Hello", style: TextStyle(
              fontSize: 14.5,
              fontWeight: FontWeight.w400,
              color: Colors.deepOrange
            ),),

            InkWell(
              child: const Text("Button"),
              onTap: () => debugPrint("Button Tapped"),
            )
          ],
        ),
      ),

      floatingActionButton:  FloatingActionButton(
          onPressed: () => debugPrint("Pressed"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going Up',
        child: const Icon(Icons.call_missed),
      ),
      
      bottomNavigationBar: BottomNavigationBar(items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Hey"),
        BottomNavigationBarItem(icon: Icon(Icons.print), label: "Nope"),
        BottomNavigationBarItem(icon: Icon(Icons.call_missed), label: "Hello")

      ], onTap: (int i) => debugPrint("Hey Touched $i"),),

    );
  }

}