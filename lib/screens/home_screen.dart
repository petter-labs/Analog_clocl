import 'package:analog_clock/screens/components/body.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/Settings.svg"),
        onPressed: null,
        color: Theme.of(context).primaryColor,
      ),
      actions: [
        buildAddButton(context),
      ],
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionateScreenWidth(32),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor, shape: BoxShape.circle),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
