import 'package:fininfocom_1/exports.dart';

class Dog1 extends StatelessWidget {
  const Dog1({super.key});

  @override
  Widget build(BuildContext context) {
    controller Imag = Get.put(controller());

    return Scaffold(
      body: Obx(() => Imag.isloading.value == false
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Imag.fget();
                    },
                    child: const Text(
                      'Refresh',
                    )),
                Container(
                    margin: EdgeInsets.all(8),
                    height: 300.h,
                    width: double.infinity,
                    child: Imag.url!.value != ""
                        ? Image.network(
                            Imag.url!.value,
                            errorBuilder: (context, error, stackTrace) =>
                                Center(child: Text('No Img OCCURED')),
                            fit: BoxFit.cover,
                          )
                        : const Center(child: Text('ERROR OCCURED')))
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            )),
    );
  }
}
