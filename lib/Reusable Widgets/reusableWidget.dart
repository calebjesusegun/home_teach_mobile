import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/constant.dart';
import 'package:home_teach_mobile/Constant/styles.dart';

// ignore: camel_case_types
class kContainer extends StatelessWidget {
  final text;
  const kContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ksymatric,
      // width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: kText,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class qContainer extends StatelessWidget {
  final String text;
  final icon;
  const qContainer({Key? key, required this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ksymatric,
      height: 45,
      child: TextField(
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: icon,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintText: text),
      ),
    );
  }
}

class ContentContainer2 extends StatelessWidget {
  final String asset1;
  final String asset2;

  const ContentContainer2({
    required this.asset1,
    required this.asset2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Image.asset('assets/images/$asset1.png'),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Image.asset('assets/images/$asset2.png'),
          ),
        ),
      ],
    );
  }
}

class ContentHeader extends StatelessWidget {
  final String contentText;
  final bool useViewALL;

  const ContentHeader({
    required this.contentText,
    this.useViewALL = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          contentText,
          style: textblack16,
        ),
        useViewALL
            ? Text(
                viewall,
                style: textred12,
              )
            : SizedBox(),
      ],
    );
  }
}

class ContentContainer extends StatelessWidget {
  final String asset;

  const ContentContainer({
    required this.asset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: Image.asset('assets/images/asset_images_png/$asset.png'),
      ),
    );
  }
}

class BookingRequestCard extends StatelessWidget {
  const BookingRequestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .25,
      width: width,
      child: Column(
        children: [
          ContentHeader(contentText: booking),
          Row(
              children: List.generate(
            5,
            (index) => Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                child: index == 4
                    ? Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(23, 15, 0, 0),
                            child: Text(
                              '5+',
                              style: textblack18,
                            ),
                          ),
                          Opacity(
                            opacity: 0.3,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/dp.png'),
                            ),
                          ),
                        ],
                      )
                    : CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/dp.png'),
                      )),
          ))
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      height: 45,
      width: double.infinity,
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey.shade400,
            ),
            hintText: search,
            hintStyle: textblack16.copyWith(color: Colors.grey.shade400)),
      ),
    );
  }
}

class Paymentpage extends StatelessWidget {
  final text;
  const Paymentpage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: konly,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFF3E8A23),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: Text(
          text,
          style: kText,
        ),
      ),
    );
  }
}
