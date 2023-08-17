import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shrine/app/ui/widgets/app_colors.dart';
import 'package:shrine/app/ui/widgets/button_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainBackgroundColor,
        leading: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.filter_list,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.tune,
                color: Colors.black,
              )),
        ],
        title: Row(
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              ),
              onPressed: () {},
              child: Icon(
                Icons.diamond_outlined,
                color: Colors.black,
              ),
            ),
            Text(
              'Shrine',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Material(
        // color: ,
        color: Colors.white,
        // width: double.infinity,
        elevation: 10,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),

        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Colors.red,
                              width: 200,
                              height: 280,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("title"),
                            Text("price"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: MyIconButtonWidget(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    width: 200,
                    height: 280,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
