// import 'package:flutter/material.dart';

// class FlutterSalesGraph extends StatefulWidget {
//   final List<int> salesData;
//   final List<String> labels;
//   final double maxBarHeight;
//   final double barWidth;
//   final List<Color> colors;
//   final double dateLineHeight;

//   const FlutterSalesGraph({
//     Key? key,
//     required this.salesData,
//     required this.labels,
//     required this.maxBarHeight,
//     required this.barWidth,
//     required this.colors,
//     required this.dateLineHeight,
//   }) : super(key: key);

//   @override
//   _FlutterSalesGraphState createState() => _FlutterSalesGraphState();
// }

// class _FlutterSalesGraphState extends State<FlutterSalesGraph> {
//   int? selectedIndex;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: widget.maxBarHeight,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(widget.salesData.length, (index) {
//               final color = widget.colors[index % widget.colors.length];
//               final value = widget.salesData[index];
//               final barHeight = (value / 350) * widget.maxBarHeight;

//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedIndex = index;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     if (selectedIndex == index)
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 5.0),
//                         child: Text(
//                           value.toString(),
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     Container(
//                       width: widget.barWidth,
//                       height: barHeight,
//                       color: color,
//                     ),
//                   ],
//                 ),
//               );
//             }),
//           ),
//         ),
//         SizedBox(height: widget.dateLineHeight),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: widget.labels
//               .map((label) => SizedBox(
//                     width: widget.barWidth,
//                     child: Center(
//                       child: Text(
//                         label,
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   ))
//               .toList(),
//         ),
//       ],
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/material.dart';

class FlutterSalesGraph extends StatefulWidget {
  final List<int> salesData;
  final List<String> labels;
  final double maxBarHeight;
  final double barWidth;
  final List<Color> colors;
  final double dateLineHeight;

  const FlutterSalesGraph({
    Key? key,
    required this.salesData,
    required this.labels,
    required this.maxBarHeight,
    required this.barWidth,
    required this.colors,
    required this.dateLineHeight,
  }) : super(key: key);

  @override
  _FlutterSalesGraphState createState() => _FlutterSalesGraphState();
}

class _FlutterSalesGraphState extends State<FlutterSalesGraph> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.maxBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(widget.salesData.length, (index) {
              final color = widget.colors[index % widget.colors.length];
              final value = widget.salesData[index];
              print(
                  "=====================================================${widget.salesData[index]}");
              final barHeight = (value / 350) * widget.maxBarHeight;

              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (selectedIndex == index)
                    Transform.rotate(
                      angle: -90 * 3.1416 / 180,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.euro,
                            size: 12,
                          ),
                          Text(
                            value.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        print(
                            "===============================================Selected Index: $selectedIndex");
                      });
                    },
                    child: Container(
                      width: widget.barWidth,
                      height: barHeight * .5,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        SizedBox(height: widget.dateLineHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widget.labels
              .map((label) => SizedBox(
                    width: 30,
                    child: Center(
                      child: Transform.rotate(
                        angle: -90 * 3.1416 / 180,
                        child: Text(
                          label,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
