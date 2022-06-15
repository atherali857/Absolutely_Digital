import 'package:absolutely_digital_test/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class UsersInfo extends StatefulWidget {

  String? image;
  String? name;
  String? email;
  String? address;
  String? about;


   UsersInfo({Key? key, this.image, this.name, this.email, this.address, this.about }) : super(key: key);

  @override
  _UsersInfoState createState() => _UsersInfoState();
}

class _UsersInfoState extends State<UsersInfo> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            key: _scaffoldKey,
            body: Container(
              padding: EdgeInsets.only(top: 40),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        //model.navigateBack();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        padding: EdgeInsets.all(8),
                        //height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child:
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                        //height: 10,
                      ),
                    ),
                    actions: [
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.more_vert_rounded,
                      //       color: ColorUtils.transparent,
                      //     ))
                    ],
                    floating: true,
                    pinned: false,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    expandedHeight: 280,
                    flexibleSpace: FlexibleSpaceBar(
                      background:
                      Image.asset(
                        widget.image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              //color of shadow
                              spreadRadius: 5,
                              //spread radius
                              blurRadius: 5,
                              // blur radius
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistBold,
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(widget.name!,
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistBold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(),

                              SizedBox(height: 5),
                              Text(
                                "Email",
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistBold,
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(widget.email!,
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistRegular,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Divider(),
                              SizedBox(height: 5),
                              Text(
                                "About",
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistBold,
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(widget.about!,
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistRegular,
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 10),

                              //Interest
                              Divider(),
                              SizedBox(height: 5),
                            Text(
                              "Interest",
                              style: TextStyle(
                                //fontFamily: FontUtils.modernistBold,
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                              SizedBox(height: 20),

                              //Favorite Drink
                              Text(
                                widget.about!,
                                style: TextStyle(
                                  //fontFamily: FontUtils.modernistBold,
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
