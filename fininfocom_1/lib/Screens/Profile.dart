import 'package:fininfocom_1/exports.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    controller profilecontrol = Get.put(controller());
    final DateTime puredate =
        DateTime.parse(profilecontrol.person1['dob']['date']);
    return Scaffold(
        body: Obx(() => profilecontrol.profileloading == false
            ? Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: TextButton(
                            onPressed: () {
                              profilecontrol.profile();
                            },
                            child: const Text(
                              'Refresh',
                            )),
                      ),
                      SizedBox(height: 50.h),
                      Text(
                        'Name: ' +
                            profilecontrol.person1["name"]['first'] +
                            profilecontrol.person1["name"]['title'] +
                            profilecontrol.person1["name"]['last'],
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                            color: Color.fromARGB(255, 3, 3, 5),
                            letterSpacing: 2.5.sp),
                      ),
                      Row(
                        children: [
                          Text(
                              'Address: ' +
                                      profilecontrol.person1["location"]
                                              ['street']['number']
                                          .toString() ??
                                  "",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color.fromARGB(255, 3, 3, 5),
                                  letterSpacing: 2.5.sp)),
                          Text(
                              ' , ' +
                                      profilecontrol.person1["location"]
                                          ['street']['name'] ??
                                  "",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color.fromARGB(255, 3, 3, 5),
                                  letterSpacing: 2.5.sp)),
                        ],
                      ),
                      Text('email: ' + profilecontrol.person1['email'] ?? "",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color.fromARGB(255, 3, 3, 5),
                              letterSpacing: 2.5.sp)),
                      Text(
                          'Date Of Birth:' +
                                  "${puredate.day}-${puredate.month}-${puredate.year}" ??
                              "",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color.fromARGB(255, 3, 3, 5),
                              letterSpacing: 2.5.sp)),
                      Text(
                          'Difference in days is :' +
                              profilecontrol.diff().inDays.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color.fromARGB(255, 3, 3, 5),
                              letterSpacing: 2.5.sp)),
                      Container(
                        alignment: Alignment.center,
                        height: 200.h,
                        padding: EdgeInsets.all(15),
                        child: Image.network(
                          profilecontrol.person1['picture']['large'],
                          errorBuilder: (context, error, stackTrace) {
                            return Center(child: Text('No Img OCCURED'));
                          },
                          fit: BoxFit.contain,
                        ),
                      )
                    ]),
              )
            : Center(child: CircularProgressIndicator())));
  }
}
