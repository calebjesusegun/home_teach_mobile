import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              onPressed: () {
                //BAVK FUNCTION FO PROFILE
              },
              iconSize: 25,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          leadingWidth: 35,
          title: InkWell(
            onTap: () => {
              //BACK TO THE
            },
            child: Text(
              'Back',
              style: textblack18.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.edit_sharp,
                    size: 25,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    //HELP BUTTON FUNCTION
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () => {
                      //EDIT BUTTON FUNCTION
                    },
                    child: Text('Edit',
                        style: textblack18.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            )
          ],
        ),
        body: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * .4,
                  width: width,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              //colorFilter: ColorFilter.mode(Colors.green.withOpacity(0.5), BlendMode.dstATop),
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/asset_images_png/profilebg.png'))),
                      height: height * .28,
                      width: width,
                    ),
                    Container(
                      height: height * .20,
                      width: width,
                      // color: Colors.green.withOpacity(0.7),
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.7),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(45))),
                    ),
                    Positioned(
                      top: height * .16,
                      left: width * .07,
                      child: Card(
                        elevation: 4,
                        shadowColor: Colors.green,
                        color: Colors.white.withOpacity(0.9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          height: height * .19,
                          width: width * .85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20),
                              Text(teachername,
                                  style: textblack25.copyWith(
                                      fontWeight: FontWeight.w700)),
                              Text(role, style: textred12)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * .10,
                      right: width * .37,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      ContentHeader(contentText: subjects),
                      ContentContainer2(
                        asset1: 'subject1',
                        asset2: 'subject2',
                      ),
                      SizedBox(height: 15),
                      ContentHeader(contentText: student),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/dp.png'),
                        ),
                        title: Text(
                          'Tunji Chibuike',
                          style: textblack16,
                        ),
                        subtitle: Text(
                          'Nursery Class',
                          style: textred12,
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/dp.png'),
                        ),
                        title: Text(
                          'Tunji Doe',
                          style: textblack16,
                        ),
                        subtitle: Text(
                          'Primary Class',
                          style: textred12,
                        ),
                      ),
                      BookingRequestCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
