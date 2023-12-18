import 'package:fininfocom_1/exports.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    //Controllers controller = Get.put(Controllers());
    controller Contrl = Get.put(controller());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(dogImage);
              },
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: const BorderSide(
                              color: Color.fromRGBO(139, 195, 74, 1)))),
                  textStyle: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(fontSize: 40);
                    }
                    return TextStyle(fontSize: 20);
                  })),
              child: Container(
                  width: double.infinity,
                  height: 50.h,
                  child: Center(child: Text('Screen1'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                //Contrl.profile();

                Get.toNamed(Profile_screen);
              },
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: const BorderSide(color: Colors.lightGreen))),
                  textStyle: MaterialStateProperty.resolveWith((states) {
                    // If the button is pressed, re
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(fontSize: 40);
                    }
                    return TextStyle(fontSize: 20);
                  })),
              child: Container(
                  width: double.infinity,
                  height: 50.h,
                  child: Center(child: Text('Screen2'))),
            ),
          )
        ],
      ),
    );
  }
}
