import 'package:flutter/material.dart';
import 'package:food_app/resources/colors.dart';
import 'package:food_app/widgets/customWidgets.dart';
import 'package:food_app/widgets/dividers.dart';

class RoleSelector extends StatefulWidget {
  RoleSelector({Key? key}) : super(key: key);

  @override
  _RoleSelectorState createState() => _RoleSelectorState();
}

class _RoleSelectorState extends State<RoleSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: backButton(() {}),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: "Hello!", color: primaryBlack, fontSize: 40.0, fontWeight: FontWeight.bold),
            CustomText(
              text: "Welcome to Vyanjan",
              color: primaryBlack,
              fontSize: 20.0,
            ),
            Divider(),
            CustomText(
              text: "Please help us to know you better",
              color: Colors.grey,
              fontSize: 15.0,
            ),
            CustomText(
              text: 'Are you a',
              color: primaryBlack,
              fontSize: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: CustomText(
                        text: 'Food Seeker',
                        color: primaryBlack,
                      )),
                  CustomText(
                    text: 'OR',
                    color: primaryBlack,
                    fontWeight: FontWeight.bold,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: CustomText(
                        text: 'Food Seeker',
                        color: primaryBlack,
                      ))
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: primaryGreen,
              child: CustomText(
                text: 'Continue',
                color: white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
