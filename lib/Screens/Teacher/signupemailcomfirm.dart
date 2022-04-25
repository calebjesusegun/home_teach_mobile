import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/constant.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class EmailComfirm extends StatefulWidget {
  const EmailComfirm({Key? key}) : super(key: key);

  @override
  _EmailComfirmState createState() => _EmailComfirmState();
}

class _EmailComfirmState extends State<EmailComfirm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: kpadding,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                      Text(
                        'Back',
                        style: kStyle,
                      )
                    ],
                  ),
                  Padding(
                    padding: kpadding,
                    child: Icon(
                      Icons.contact_support_outlined,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              Image(
                image: AssetImage('assets/images/emailicon.png'),
                width: 800,
                height: 200,
              ),
              Text(
                'Confirm your Email Address',
                style: kStyle,
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: ksymatric,
                child: Text(
                  'We have sent a One Time Password\n to your email',
                  style: kTextstyle,
                ),
              ),
              qContainer(
                icon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                text: "Enter OTP",
              ),
              kContainer(
                text: 'Continue',
              ),
              Padding(
                padding: kPadding,
                child: Text(
                  'Did not receive a mail? chech your spam folder,',
                  style: kTstyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
