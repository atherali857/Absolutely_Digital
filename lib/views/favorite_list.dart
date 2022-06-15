import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../utils/image_utils.dart';
import '../utils/size_config.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  _FavoriteListState createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  List userList = [
    {
      'image': ImageUtils.image1,
      'name': 'Alex',
      'email': 'Alex@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
    {
      'image': ImageUtils.image2,
      'name': 'Berry',
      'email': 'Berry@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
    {
      'image': ImageUtils.image3,
      'name': 'Jone',
      'email': 'Jone@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
    {
      'image': ImageUtils.image4,
      'name': 'Chris',
      'email': 'Chris@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
    {
      'image': ImageUtils.image5,
      'name': 'Jerry',
      'email': 'Jerry@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
    {
      'image': ImageUtils.image6,
      'name': 'Tom',
      'email': 'Tom@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
    {
      'image': ImageUtils.image7,
      'name': 'Misheal',
      'email': 'Misheal@gmail.com',
      'address': 'Lot 13 • Oakland, CA',
      'about': "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Favorites",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      //fontFamily: FontUtils.modernistBold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal:SizeConfig.widthMultiplier * 4),
                    child: GestureDetector(
                        onTap: (){
                         /* Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType
                                      .fade,
                                  child:
                                  UsersInfo(
                                    image: userList[index]['image'],
                                    name: userList[index]['name'],
                                    email: userList[index]['email'],
                                    address: userList[index]['address'],
                                    about: userList[index]['about'],
                                  )
                              ));*/

                        },
                        child:
                        // model.listOfAllBars[index].is_follow == true ?
                        Container(
                          padding: EdgeInsets.symmetric( horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(0, 5), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(userList[index]['image'],
                                  width: 60,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ) ,
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(userList[index]['name'],
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Icon(
                                          index==0 || index==1 ?Icons.favorite_border : Icons.favorite_outlined,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text(userList[index]['email'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(userList[index]['address'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Divider(),
                                    SizedBox(height: 5),
                                    Text(userList[index]['about'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      // : Container()
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height:  SizeConfig.heightMultiplier * 2.5,);
                },
                itemCount: userList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
