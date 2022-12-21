import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtDate =
  TextEditingController(text: "${DateTime.now()}");
  TextEditingController cuDate = TextEditingController();
  TextEditingController cuMonth = TextEditingController();
  TextEditingController cuYear = TextEditingController();
  int date = 00;
  int month = 00;
  int year = 0000;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.all_inclusive),
          backgroundColor: const Color(0xFF203A43),
          centerTitle: true,
          title: const Text("Age Calculator",
              style: TextStyle(color: Colors.white, letterSpacing: 2)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Today's Date",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 15,
                    color: Color(0xFF203A43),
                  ),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: txtDate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color(0xFF203A43),
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Date of Birth",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuYear,
                          decoration: InputDecoration(
                            hintText: "DD",

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuMonth,
                          decoration: InputDecoration(
                            hintText: "MM",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuDate,
                          decoration: InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFF203A43),
                          ),
                        ),
                        child: const Text("Clear",
                            style: TextStyle(
                                color: Color(0xFF203A43),
                                fontSize: 20,
                                letterSpacing: 2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            const Color(0xFF203A43),
                            Colors.teal.shade700,
                            //Color(0xFF203A43),
                          ]),
                        ),
                        child: const Text("Calculate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Present Age",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Color(0xFF13547A),
                      Color(0xFF203A43),
                    ]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          // border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "  $year\nYear",
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "  $month\nMM",
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          " $date\nDD",
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Next Birthday",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF6BBED9),
                        Color(0xFF006ABC),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "  $month\nMM",
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          //border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          " $date\nDD",
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}