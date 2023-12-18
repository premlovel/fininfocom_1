import 'package:fininfocom_1/exports.dart';

class controller extends GetxController {
  ApiServices apiServices = Get.put(ApiServices());
  void onInit() {
    profile();
    fget();
    super.onInit();
  }

  RxString? url = ''.obs;
  var isloading = false.obs;
  Future<String> fget() async {
    isloading(true);
    try {
      final response = await apiServices
          .getcalling('https://dog.ceo/api/breeds/image/random');
      if (response.statusCode == 200) {
        url!.value = response.data['message'];
      } else if (response.statusCode == 404) {
        url!.value = "";
      }
      return url!.value;
    } catch (e) {
      url!.value = "";
      Get.snackbar(
        "FinInfocom",
        "Something Went Wrong!!",
        icon: const Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
      return url!.value;
    } finally {
      isloading(false);
    }
  }

  RxList person = [].obs;
  RxMap person1 = {}.obs;
  var profileloading = false.obs;
  Future<void> profile() async {
    try {
      profileloading(true);
      final response =
          await apiServices.getcalling('https://randomuser.me/api/');
      //print(response);

      person.value = response.data['results'];
      //print(person);
      person1.value = person[0];
    } catch (e) {
      Get.snackbar(
        "FinInfocom",
        "Something Went Wrong!!",
        icon: const Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      profileloading(false);
    }
  }

  Duration diff() {
    DateTime dt1 = DateTime.parse(person1['registered']['date'].toString());
    DateTime dt2 = DateTime.now();
    return dt2.difference(dt1);
  }
}
