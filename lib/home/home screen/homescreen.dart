import 'package:eqraa/core/app_color.dart';
import 'package:eqraa/home/home%20screen/provider/homescreenprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.orage700,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Consumer<HomeScreenProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  return CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 211, 112, 76),
                    radius: 100,
                    child: Column(
                      children: [
                        Divider(
                          height: 10.h,
                          color: Colors.transparent,
                        ),
                        Center(
                            child: Text(
                                "${context.read<HomeScreenProvider>().homeScreenState.conter}")),
                        const SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 40.w,
                              height: 7.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<HomeScreenProvider>()
                                      .increment();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(184, 124, 67, 37),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50))),
                                child: Text(
                                  "سبح ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                              height: 1.h,
                            ),
                            SizedBox(
                              width: 15.w,
                              height: 2.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<HomeScreenProvider>()
                                      .decrement();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50))),
                                child: Text(
                                  "Reset ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 5.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(
              height: 3.h,
              color: Colors.transparent,
            ),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              padding: const EdgeInsets.all(30),
              children: [
                Container(
                  color: AppColor.orage200,
                  height: 10.h,
                  width: 20.w,
                ),
                Container(
                  color: Colors.green,
                  height: 15.h,
                  width: 20.w,
                ),
                Container(
                  color: Colors.yellow,
                  height: 15.h,
                  width: 20.w,
                ),
                Container(
                  color: Colors.red,
                  height: 15.h,
                  width: 20.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
