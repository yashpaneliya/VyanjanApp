import 'package:flutter/material.dart';
import 'package:food_app/resources/colors.dart';
import 'package:food_app/widgets/customWidgets.dart';
import 'package:food_app/widgets/dividers.dart';

/// Screen for taking [Restaurant details]
class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({Key? key}) : super(key: key);

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppbar(
        onBackPressed: () {},
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Restaurant Details',
                  color: primaryBlack,
                  fontSize: 20.0,
                ),
                CustomText(
                  text: 'Name, address and location',
                  color: grey,
                ),

                /// [Name input field]
                TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Restaurant name *',
                  ),
                  cursorColor: primaryGreen,
                ),
                height40,
                CustomText(
                  text: 'Complete Address*',
                ),
                height10,

                /// [Address section]
                TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Floor/Building',
                  ),
                  cursorColor: primaryGreen,
                ),
                TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Landmark',
                  ),
                  cursorColor: primaryGreen,
                ),
                TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Pincode',
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: primaryGreen,
                ),
                height40,

                /// [Map location section]
                /// To intigrate Google maps for fetching location,
                /// You need to purchase API key from GCP
                /// Or You can also use any other Geolocation APIs available
                CustomText(
                  text: 'Select a location *',
                ),
                height10,
                TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: primaryGreen,
                      ),
                      hintText: 'Select location',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: grey))),
                  keyboardType: TextInputType.number,
                  cursorColor: primaryGreen,
                ),
                height10,

                /// [Option to choose current location directly]
                /// For this you need to first enable the permissions on mobile for accessing location of device
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.location_searching,
                    color: primaryGreen,
                  ),
                  title: Text(
                    'Use current location',
                    style: TextStyle(
                      color: primaryGreen,
                    ),
                  ),
                  subtitle: Text('Restaurant name, Address'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: primaryGreen,
                  ),
                ),
                height20,

                /// [Continue button]
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: CustomButton(text: 'Continue', onpressed: () {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
