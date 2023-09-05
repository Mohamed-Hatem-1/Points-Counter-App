import 'package:flutter/material.dart';

class PointsCounterApp extends StatefulWidget {
  const PointsCounterApp({super.key});

  @override
  State<PointsCounterApp> createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(fontSize: 48),
                  ),
                  Text(
                    "$teamAPoints",
                    style: const TextStyle(fontSize: 120),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
                    child: const Text(
                      "Add 1 Point",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
                    child: const Text(
                      "Add 2 Point",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
                    child: const Text(
                      "Add 3 Point",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 400,
                child: VerticalDivider(
                  width: 50,
                  indent: 20,
                  color: Color(0xFFA0A0A0),
                  thickness: 1.5,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(fontSize: 48),
                  ),
                  Text(
                    "$teamBPoints",
                    style: const TextStyle(fontSize: 120),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
                    child: const Text(
                      "Add 1 Point",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
                    child: const Text(
                      "Add 2 Point",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
                    child: const Text(
                      "Add 3 Point",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, fixedSize: const Size(140, 50)),
            child: const Text(
              "Reset",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
