import 'package:bavaris/views/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/chart_data.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  final List<ChartData> chartData = [
    ChartData('IT Beratung', '', 42, const Color(0xFFE20F00)),
    ChartData('Service', '', 30, Colors.grey),
    ChartData('Support', '', 15, Colors.grey[700]),
    ChartData('Installation', '', 9, Colors.grey[600]),
    ChartData("Reparatunen", '', 3, Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100.0,
        backgroundColor: const Color(0xFFE20F00),
        centerTitle: true,
        title: Image.asset("assets/images/splashText.png",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 2,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 15),
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      height: 300,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SfCircularChart(
                          annotations: <CircularChartAnnotation>[
                            CircularChartAnnotation(
                              widget: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'AuftragScan',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '101.977,50 \u{20AC}',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),)
                          ],
                          legend: const Legend(
                              padding: 5,
                              itemPadding: 1.0,
                              isVisible: true,
                              textStyle: TextStyle(fontSize: 12, color: Colors.white),
                              iconHeight: 5,
                              iconWidth: 5,
                              // Legend will be placed at the left
                              position: LegendPosition.left
                          ),
                          title: ChartTitle(
                              alignment: ChartAlignment.near,
                              text: "Top Artikel",
                              textStyle: TextStyle(fontSize: 18, color: Colors.white)
                          ),

                          series: <CircularSeries>[
                            // Render pie chart
                            DoughnutSeries<ChartData, String>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.month,
                                yValueMapper: (ChartData data, _) => data.sales,
                                pointColorMapper: (ChartData data, _) => data.color,
                                legendIconType: LegendIconType.circle,
                                radius: '60%',
                                innerRadius: '60%',
                                explode: true,
                                explodeIndex: null,
                                explodeOffset: "1.9%",
                                explodeAll: true
                              //dataLabelSettings: DataLabelSettings(isVisible: true),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    CustomWidgets().details('IT Beratung', '42.702,00 \u{20AC}'),
                    SizedBox(height: 10,),
                    CustomWidgets().details('Service', '30.894,00 \u{20AC}'),
                    SizedBox(height: 10,),
                    CustomWidgets().details('Support', '15.434,07 \u{20AC}'),
                    SizedBox(height: 10,),
                    CustomWidgets().details('Installation', '9.664,00 \u{20AC}'),
                    SizedBox(height: 10,),
                    CustomWidgets().details('Schulung', '3.283,43 \u{20AC}'),
                    Divider(color: Colors.grey,),
                    CustomWidgets().details('Summe', '101.977,50 \u{20AC}'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Container(
          width: 50,
          height: 60,
          decoration: const BoxDecoration(
            color: Color(0xFFE20F00),
          ),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 18.0, top: 5),
            child: Center(
              child: Text("Zuruck", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      )
    );
  }
}
