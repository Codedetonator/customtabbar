import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: Duration(seconds: 1),
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('TabBars'),
          ),
          body: Column(
            children: [
              const TabBar(
                  labelColor: Colors.black,
                  isScrollable: true,
                  indicatorWeight: 2.3,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 35)),
                      color: Colors.green),
                  splashBorderRadius: BorderRadius.all(Radius.circular(20)),
                  padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                  tabs: [
                    Text("chat"),
                    Text("status"),
                    Text("call"),
                    Text("setting"),
                    Text("profile"),
                    Text("setting"),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  const Tab(
                    text: 'chat',
                  ),
                  const Tab(
                    text: 'status',
                  ),
                  const Tab(
                    text: 'calls',
                  ),
                  const Tab(
                    text: 'setting',
                  ),
                  const Tab(
                    text: 'Profile',
                  ),
                  const Tab(
                    text: 'Profile',
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
