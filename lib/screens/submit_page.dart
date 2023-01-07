import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task/config/colors.dart';
import 'package:task/screens/successful_submit_screen.dart';
import 'package:task/widget/costumized_button.dart';

class Submitpage extends StatefulWidget {
  Submitpage({super.key});

  @override
  State<Submitpage> createState() => _SubmitpageState();
}

class _SubmitpageState extends State<Submitpage> {
  PickedFile? _imageFile;

  final ImagePicker _picker = ImagePicker();

  void _pickImage() async {
    try {
      final pickedFile = await _picker.getImage(source: ImageSource.gallery);
      setState(() {
        _imageFile = pickedFile;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Submit Your Test',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 0, right: 250, top: 30, bottom: 20),
              child: Text(
                'Test',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Text(
              "Create a brand identity copy for a fashion brand.\n"
              " Targe audience are 18 - 32 yrs and\n"
              " location is based in bangalore\n",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontWeight: FontWeight.w300,
              ),
            ),
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: 345.01,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(221, 221, 221, 0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8.62516)),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        child: Icon(
                          Icons.cloud_upload_outlined,
                          color: Color.fromRGBO(102, 102, 102, 1),
                        ),
                      ),
                      // SizedBox(
                      //   width: totalWidth * 0.02,
                      // ),
                      Text(
                        'Upload Sample',
                        style: textStyle5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Upload size must be less than 10MB",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => const SuccessfulSubmitpage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomizedButton(
                  context: context,
                  text: 'Submit TEST',
                  textStyle: textStyle6,
                  radius: 8.0,
                  width: 250.0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ]),
    );
  }
}
