import 'package:flutter/material.dart';

class FlutterSalesGraph extends StatefulWidget {
  final List<int> salesData;
  final List<String> labels;
  final double maxBarHeight;
  final double barWidth;
  final List<Color> colors;
  final double dateLineHeight;

  const FlutterSalesGraph({
    super.key,
    required this.salesData,
    required this.labels,
    required this.maxBarHeight,
    required this.barWidth,
    required this.colors,
    required this.dateLineHeight,
  });

  @override
  // ignore: library_private_types_in_public_api
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
