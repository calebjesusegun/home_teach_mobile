import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

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
                //BACK PROFILE STUDENT
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
              children: [
                Container(
                  height: height * .45,
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
                          height: height * .25,
                          width: width * .85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 40),
                              Text('Tunji Chibuike',
                                  style: textblack25.copyWith(
                                      fontWeight: FontWeight.w700)),
                              Text('Student', style: textred12),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Completed',
                                        style: textred12.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(width: 25),
                                    Text('Ongoing',
                                        style: textred12.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('6',
                                      style: textblack25.copyWith(
                                          fontWeight: FontWeight.w700)),
                                  SizedBox(width: 80),
                                  Text('4',
                                      style: textblack25.copyWith(
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
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
                      ContentHeader(contentText: 'Favorites'),
                      ContentContainer2(
                        asset1: 'subject1',
                        asset2: 'subject2',
                      ),
                      SizedBox(height: 15),
                      ContentHeader(
                        contentText: 'Progress',
                        useViewALL: false,
                      ),
                      Column(
                        children: List.generate(
                            _subjectProgressData.length,
                            (index) => SubjectProgress(
                                _subjectProgressData[index].subject,
                                _subjectProgressData[index].progress)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class SubjectProgress extends StatelessWidget {
  final String subjName;
  final dynamic subjectProgress;
  const SubjectProgress(this.subjName, this.subjectProgress, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Text(
          subjName,
          style: textred12.copyWith(color: primaryColor),
        ),
        subjectProgress,
        SizedBox(height: 3)
      ],
    );
  }
}

class Progressdata {
  String subject;
  dynamic progress;
  Progressdata({required this.subject, required this.progress, g});
}

List<Progressdata> _subjectProgressData = [
  Progressdata(
    subject: "Mathemtaics",
    progress: Container(
      height: 5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
    ),
  ),
  Progressdata(
    subject: "English",
    progress: Container(
      height: 5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
    ),
  ),
  Progressdata(
    subject: "Basic Science",
    progress: Stack(
      children: [
        Container(
          height: 5,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
        ),
        Container(
          height: 5,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),
  Progressdata(
    subject: "Home Economics",
    progress: Stack(
      children: [
        Container(
          height: 5,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
        ),
        Container(
          height: 5,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),
  Progressdata(
    subject: "Business Studies",
    progress: Container(
      height: 5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
    ),
  ),
  Progressdata(
    subject: "Social Studies",
    progress: Container(
      height: 5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
    ),
  ),
];

// import 'package:flutter/material.dart';

// import 'Product.dart';

// class Cart {
//   final Product product;
//   final int numOfItem;

//   Cart({@required this.product, @required this.numOfItem});
// }

// // Demo data for our cart

// List<Cart> demoCarts = [
//   Cart(product: demoProducts[0], numOfItem: 2),
//   Cart(product: demoProducts[1], numOfItem: 1),
//   Cart(product: demoProducts[3], numOfItem: 1),
// ];
