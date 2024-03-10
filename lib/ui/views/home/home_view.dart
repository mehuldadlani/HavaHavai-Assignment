import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked_tempelate/file_exporter.dart';

part 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.wWise),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  verticalSpaceMedium,
                  Text(
                    "Dubai Airport - DXB",
                    style: TextStyle(
                        fontFamily: "Uber Move",
                        fontSize: 24.hWise,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  verticalSpaceSmall,
                  Text(
                    "Dubai . 🇦🇪 United Arab Emirates",
                    style: TextStyle(
                        fontFamily: "Uber Move",
                        fontSize: 12.hWise,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                  verticalSpaceMedium,
                  Container(
                    height: 300.hWise,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/banner.jpg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.wWise, vertical: 10.hWise),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 140.hWise,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/cloud.svg",
                                          height: 20.hWise,
                                        ),
                                        verticalSpace(2),
                                        Text(
                                          "19 C",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Cloudy",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/calendar.svg",
                                          height: 20.hWise,
                                        ),
                                        verticalSpace(5),
                                        Text(
                                          "30 Jan",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Mon",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/time.svg",
                                          height: 20.hWise,
                                        ),
                                        verticalSpace(5),
                                        Text(
                                          "8:45 PM",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "GMT+4",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/currency.svg",
                                          height: 20.hWise,
                                        ),
                                        verticalSpace(2),
                                        Text(
                                          "19 C",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "1\$=3.67 AED",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  height: 0.5,
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/direction.svg",
                                          height: 20.hWise,
                                        ),
                                        horizontalSpace(10),
                                        Text(
                                          "Get Direction",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 20.hWise,
                                      width: 0.5,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/call_blue.svg",
                                          height: 20.hWise,
                                        ),
                                        horizontalSpace(10),
                                        Text(
                                          "Call airport",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40.hWise,
                        width: 80.hWise,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Transport",
                            style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.hWise,
                        width: 80.hWise,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Terminal",
                            style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.hWise,
                        width: 60.hWise,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Forex",
                            style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.hWise,
                        width: 100.hWise,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Contact Info",
                            style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  Container(
                    padding: EdgeInsets.all(10.hWise),
                    height: 280.hWise,
                    width: context.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          " Taxi Service",
                          style: TextStyle(
                              fontFamily: "Uber Move",
                              fontSize: 20.hWise,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).alignCL,
                        verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 5,
                              child: Container(
                                height: 90.hWise,
                                width: 110.hWise,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/uber.png",
                                      height: 30.hWise,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "\$\$\$\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[200]),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 5,
                              child: Container(
                                height: 90.hWise,
                                width: 110.hWise,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/careem.png",
                                      height: 30.hWise,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "\$\$\$\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[200]),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 5,
                              child: Container(
                                height: 90.hWise,
                                width: 110.hWise,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/yango.png",
                                      height: 30.hWise,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "\$\$\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "\$\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[200]),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 5,
                              child: Container(
                                height: 90.hWise,
                                width: 110.hWise,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/blacklane.png",
                                      height: 30.hWise,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "\$\$\$\$\$",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 12.hWise,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 90.hWise,
                              width: 110.hWise,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 90.hWise,
                              width: 110.hWise,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.hWise),
                    height: 180.hWise,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Public transport",
                          style: TextStyle(
                              fontFamily: "Uber Move",
                              fontSize: 20.hWise,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).alignCL,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/metro.svg",
                                  height: 20.hWise,
                                ),
                                horizontalSpace(10),
                                Text(
                                  "Metro",
                                  style: TextStyle(
                                      fontFamily: "Uber Move",
                                      fontSize: 16.hWise,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "6am - 10pm",
                                  style: TextStyle(
                                      fontFamily: "Uber Move",
                                      fontSize: 12.hWise,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                20.wGap,
                                SvgPicture.asset(
                                  "assets/arrow.svg",
                                  height: 12.hWise,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/bus.svg",
                                  height: 20.hWise,
                                ),
                                horizontalSpace(12),
                                Text(
                                  "Bus",
                                  style: TextStyle(
                                      fontFamily: "Uber Move",
                                      fontSize: 16.hWise,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Available 24 hours",
                                  style: TextStyle(
                                      fontFamily: "Uber Move",
                                      fontSize: 12.hWise,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                20.wGap,
                                SvgPicture.asset(
                                  "assets/arrow.svg",
                                  height: 12.hWise,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.hWise),
                      height: 220.hWise,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Self Parking",
                            style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 20.hWise,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ).alignCL,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60.hWise,
                                    width: 60.hWise,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "T1",
                                        style: TextStyle(
                                            fontFamily: "Uber Move",
                                            fontSize: 16.hWise,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(15),
                                  Container(
                                    height: 60.hWise,
                                    width: 60.hWise,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "T2",
                                        style: TextStyle(
                                            fontFamily: "Uber Move",
                                            fontSize: 16.hWise,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row()
                            ],
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/two_wheeler.svg",
                                          height: 20.hWise,
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          "  Two Wheeler",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "AED 50 / day",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        horizontalSpace(5),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 20.hWise,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                5.hGap,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/cart.svg",
                                          height: 20.hWise,
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          " Car Parking",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "AED 100 / day",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        horizontalSpace(5),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 20.hWise,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                5.hGap,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/electric_car.svg",
                                          height: 20.hWise,
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          " Electric Car Parking",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "AED 100 / day",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 14.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        horizontalSpace(5),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 20.hWise,
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ])
                        ],
                      )),
                  verticalSpaceMedium,
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.hWise),
                      height: 240.hWise,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Terminal Map",
                            style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 20.hWise,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ).alignCL,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60.hWise,
                                    width: 60.hWise,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "T1",
                                        style: TextStyle(
                                            fontFamily: "Uber Move",
                                            fontSize: 16.hWise,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(15),
                                  Container(
                                    height: 60.hWise,
                                    width: 60.hWise,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "T2",
                                        style: TextStyle(
                                            fontFamily: "Uber Move",
                                            fontSize: 16.hWise,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(15),
                                  Container(
                                    height: 60.hWise,
                                    width: 60.hWise,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "T3",
                                        style: TextStyle(
                                            fontFamily: "Uber Move",
                                            fontSize: 16.hWise,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row()
                            ],
                          ),
                          Container(
                            height: 100.hWise,
                            width: context.w,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/map.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 30.hWise,
                                width: 70.hWise,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    "View",
                                    style: TextStyle(
                                        fontFamily: "Uber Move",
                                        fontSize: 12.hWise,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  verticalSpaceMedium,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.hWise),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        10.hGap,
                        Text(
                          "Foreign Exchange",
                          style: TextStyle(
                            fontFamily: "Uber Move",
                            fontSize: 20.hWise,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ).alignCL,
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            collapsedBackgroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            title: Text(
                              "Travelex",
                              style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            childrenPadding: const EdgeInsets.only(left: 20),
                            children: [
                             
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(
                                      "Terminal 3-\nAirside Dept Downtown. Concourse B,\nTerminal 3, beside Winston Smoking room",
                                      style: TextStyle(
                                        fontFamily: "Uber Move",
                                        fontSize: 14.hWise,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 0.5,
                          color: Colors.grey[200],
                        ),
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            collapsedBackgroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            title: Text(
                              "Al Ansari Exchange",
                              style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            childrenPadding: const EdgeInsets.only(left: 20),
                            children: [
                            
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(
                                      "Terminal 3-\nAirside Dept Downtown. Concourse B,\nTerminal 3, beside Winston Smoking room",
                                      style: TextStyle(
                                        fontFamily: "Uber Move",
                                        fontSize: 14.hWise,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                 
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 0.5,
                          color: Colors.grey[200],
                        ),
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            collapsedBackgroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            title: Text(
                              "Emirates NBD",
                              style: TextStyle(
                                fontFamily: "Uber Move",
                                fontSize: 14.hWise,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            childrenPadding: const EdgeInsets.only(left: 20),
                            children: [
                             
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(
                                      "Terminal 3-\nAirside Dept Downtown. Concourse B,\nTerminal 3, beside Winston Smoking room",
                                      style: TextStyle(
                                        fontFamily: "Uber Move",
                                        fontSize: 14.hWise,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                 Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.hWise),
                    height: 280.hWise,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Contact Airport",
                          style: TextStyle(
                              fontFamily: "Uber Move",
                              fontSize: 20.hWise,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).alignCL,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Police",
                              style: TextStyle(
                                  fontFamily: "Uber Move",
                                  fontSize: 18.hWise,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                           Container(
                             height: 30.hWise,
                             width: 60.hWise,
                             decoration: BoxDecoration(
                               color: Colors.grey[200],
                               borderRadius: BorderRadius.circular(15)
                             ),
                             child: Center(
                               child: SvgPicture.asset("assets/call_black.svg",height: 20.hWise,),
                             ),
                           )
                          ],
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.grey[200],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lost & Found",
                              style: TextStyle(
                                  fontFamily: "Uber Move",
                                  fontSize: 18.hWise,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                           Container(
                             height: 30.hWise,
                             width: 60.hWise,
                             decoration: BoxDecoration(
                               color: Colors.grey[200],
                               borderRadius: BorderRadius.circular(15)
                             ),
                             child: Center(
                               child: SvgPicture.asset("assets/call_black.svg",height: 20.hWise,),
                             ),
                           )
                          ],
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.grey[200],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transport",
                              style: TextStyle(
                                  fontFamily: "Uber Move",
                                  fontSize: 18.hWise,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                           Container(
                             height: 30.hWise,
                             width: 60.hWise,
                             decoration: BoxDecoration(
                               color: Colors.grey[200],
                               borderRadius: BorderRadius.circular(15)
                             ),
                             child: Center(
                               child: SvgPicture.asset("assets/call_black.svg",height: 20.hWise,),
                             ),
                           )
                          ],
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.grey[200]
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Head Office",
                              style: TextStyle(
                                  fontFamily: "Uber Move",
                                  fontSize: 18.hWise,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                           Container(
                             height: 30.hWise,
                             width: 60.hWise,
                             decoration: BoxDecoration(
                               color: Colors.grey[200],
                               borderRadius: BorderRadius.circular(15)
                             ),
                             child: Center(
                               child: SvgPicture.asset("assets/call_black.svg",height: 20.hWise,),
                             ),
                           )
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                  verticalSpaceLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50.hWise,
                        width: 180.hWise,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/direction_right.svg",
                                          height: 20.hWise,
                                        ),
                                        horizontalSpace(10),
                                        Text(
                                          "Get Direction",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                      ),
                       Container(
                        height: 50.hWise,
                        width: 180.hWise,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/call_white.svg",
                                          height: 20.hWise,

                                        ),
                                        horizontalSpace(10),
                                        Text(
                                          "Call Airport",
                                          style: TextStyle(
                                              fontFamily: "Uber Move",
                                              fontSize: 16.hWise,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                      ),
                    ],
                  ),
                  verticalSpaceLarge,
                  //main body column
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
