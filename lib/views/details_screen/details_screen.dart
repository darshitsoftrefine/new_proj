import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

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
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 15),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54
                  ),
                  width: 394,
                  height: 242,
                  child: const Card(
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                ),
                //Text("Hello")
              ],
            ),
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
