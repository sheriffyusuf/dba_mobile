import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/home/doctor_model.dart';
import 'package:dba_mobile/src/Models/home/history_model.dart';
import 'package:dba_mobile/src/Models/home/product_model.dart';
import 'package:dba_mobile/src/Models/home/queue_model.dart';
import 'package:dba_mobile/src/Models/login/register_model.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_binding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

final doctorsList = <DoctorModel>[
  DoctorModel(
      id: '1',
      availability: 'no',
      name: "Dr. Cody Fisher",
      /*  rating: '4.5',
      rewiews: "100",
      hospital: "Dhaka Medical, bangladesh", */
      hospital: "Sickbay Ahmadu Bello",
      yearsOfExpe: "5",
      gender: '',
      nubCount: '',
      speciality: "General physician",
      imageUrl: Assets.images.doctorMale.path),
  DoctorModel(
      name: "Dr. Amina Musa",
      /*  rating: '5.0',
      rewiews: "200",
      */
      id: '1',
      gender: '',
      availability: 'no',
      hospital: "Sickbay Ahmadu Bello",
      yearsOfExpe: "7",
      nubCount: '',
      speciality: "General physician",
      imageUrl: Assets.images.doctorFemale.path),
  DoctorModel(
      name: "Dr. John Foo",
      /*  rating: '4.3',
      rewiews: "100",
     */
      id: '1',
      gender: '',
      availability: 'no',
      hospital: "Sickbay Ahmadu Bello",
      yearsOfExpe: "4",
      nubCount: '',
      speciality: "General physician",
      imageUrl: Assets.images.doctorMale.path),
];

class HomeController extends GetxController {
  var isFinished = false.obs;
  var isToQueue = false.obs;
  var docList = <DoctorModel>[].obs;
  var patientList = <RegisterModel>[].obs;
  var queueList = <QueueModel>[].obs;
  var appointmentList = <HistoryModel>[].obs;
  var videoLink = ''.obs;
  var selectedTime = ''.obs;
  var selectedDate = ''.obs;
  final searchController = TextEditingController();
  final nameController = TextEditingController();
  final symptomsController = TextEditingController();
  final phoneController = TextEditingController();
  final periodFromController = TextEditingController();
  final dateFromController = TextEditingController();
  final Rxn<DoctorModel> selectedModel = Rxn(DoctorModel(
      id: '',
      name: '',
      speciality: '',
      yearsOfExpe: '',
      availability: '',
      gender: '',
      imageUrl: '',
      nubCount: '',
      hospital: ''));

/*   DoctorModel selectedModel =
  
   DoctorModel(
      id: '',
      name: '',
      speciality: '',
      yearsOfExpe: '',
      availability: '',
      imageUrl: '',
      hospital: ''); */

  final productModelList = <ProductModel>[
    ProductModel(
      name: 'Paracetamol',
      price: "6.99",
      imageUrl: Assets.images.parastamol.path,
    ),
    ProductModel(
      name: 'Covidd vaccine',
      price: "10.99",
      imageUrl: Assets.images.covid.path,
    ),
  ];

  //post doctor stuff
  final yearexpeController = TextEditingController();
  final specialityController = TextEditingController();
  final dateController = TextEditingController();
  final fullNameController = TextEditingController();
  final hospitalController = TextEditingController();

  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final dropDownValue = 'Male'.obs;
  @override
  void onInit() {
    //getHomeThings();

    super.onInit();
  }

  gotoDoctorBinding() {
    DoctorAppointBindings().dependencies();
    appRoute.push(const DoctorAppointRoute());
  }

  void gotoDoctorDetail(DoctorModel doctor) {
    isToQueue.value = true;
    selectedModel.value = doctor;
    //  DoctorAppointBindings().dependencies();
    // Get.find<DoctorAppointController>().selectedModel = doctor;
    appRoute.push(const JoinQueueRoute());
  }

  void gotoBookNowPage(DoctorModel doctor) {
    selectedModel.value = doctor;
    //  DoctorAppointBindings().dependencies();
    appRoute.push(const JoinQueueRoute());
  }

  void gotoPopularPage() {
    DoctorAppointBindings().dependencies();
    appRoute.push(const PopularDoctorRoute());
  }

  void gotoJoinQueue() {
    appRoute.push(const DoctorsRoomRoute());
  }

  void emergencyPage() {
    appRoute.push(const EmergencyRoomRoute());
  }

  void bookApointmentDoctor() {
    appRoute.push(const BookAppointDoctorRoute());
  }

  getAllDoctor() {
    FirebaseFirestore.instance
        .collection('doctors')
        .get()
        .then((QuerySnapshot querySnapshot) {
      print('i dey 2');
      docList.clear();
      for (var doc in querySnapshot.docs) {
        final data = doc.data()! as Map<String, dynamic>;
        DoctorModel model = DoctorModel.fromJson(data);
        model.id = doc.id;

        docList.add(model);
        print('i dey 3');
      }
    });
  }
    getAllPatientRecord() {
    FirebaseFirestore.instance
        .collection('Users')
        .get()
        .then((QuerySnapshot querySnapshot) {
      print('i dey 2');
      patientList.clear();
      for (var doc in querySnapshot.docs) {
        final data = doc.data()! as Map<String, dynamic>;
        RegisterModel model = RegisterModel.fromJson(data);
        model.id = doc.id;

        patientList.add(model);
        print('i dey 3');
      }
    });
  }

  void postDoctorMethod(BuildContext context) {
    final isValidForm = registerFormKey.currentState?.validate() ?? false;
    if (!isValidForm) return;
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Post Doctor'),
              content: const Text('Are you sure you want to register Doctor'),
              actions: <Widget>[
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    if (dropDownValue.value == 'Male') {
                      dropDownValue.value = 'm';
                    } else if (dropDownValue.value == 'Female') {
                      dropDownValue.value = 'f';
                    }
                    Navigator.of(context).pop();
                    FirebaseFirestore.instance.collection('doctors').add({
                      /* 
                       final yearexpeController = TextEditingController();
    final specialityController = TextEditingController();
  final dateController = TextEditingController();
  final fullNameController = TextEditingController();
  final hospitalController = TextEditingController(); */
                      //  'docId':selectedModel.value!.id,
                      'name': fullNameController.text,
                      'availability': 'yes',
                      'gender': dropDownValue.value,
                      'hospital': hospitalController.text,
                      'imageurl': 'lllll',
                      'nubCount': '0',
                      'speciality': specialityController.text,
                      'yearsOfExpe': yearexpeController.text,
                    }).then((value) {
                      // gotoHome();
                      appRoute.pop();
                    });
                  },
                )
              ],
            ));
    docList.clear();
  }

  getAllAppointment() {
    appointmentList.clear();
    FirebaseFirestore.instance
        .collection('bookedAppointment')
        .get()
        .then((QuerySnapshot querySnapshot) {
      print('i dey 2');
      for (var doc in querySnapshot.docs) {
        final data = doc.data()! as Map<String, dynamic>;
        HistoryModel model = HistoryModel.fromJson(data);
        model.id = doc.id;
        appointmentList.add(model);
        print('i dey 3');
      }
    });
  }

  getAllQueue() {
    FirebaseFirestore.instance
        .collection('queue')
        .doc(selectedModel.value!.id)
        .collection('list')
        .get()
        .then((QuerySnapshot querySnapshot) {
      print('i dey 2');
      queueList.clear();
      for (var doc in querySnapshot.docs) {
        final data = doc.data()! as Map<String, dynamic>;
        QueueModel model = QueueModel.fromJson(data);
        model.id = doc.id;
        queueList.add(model);
        queueList.sort((a, b) => a.count!.compareTo(b.count!));
        print('i dey 3');
      }
    });
  }

  void joinQueueReal(BuildContext context) {
    int number = 0;
    FirebaseFirestore.instance
        .collection('doctors')
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        if (doc.id == selectedModel.value!.id) {
          final data = doc.data()! as Map<String, dynamic>;
          DoctorModel model = DoctorModel.fromJson(data);
          number = model.nubCount.toInt() + 1;
          FirebaseFirestore.instance
              .collection('doctors')
              .doc(doc.id)
              .update({'nubCount': '$number'});
          FirebaseFirestore.instance
              .collection('queue')
              .doc(doc.id)
              .collection('list')
              .add({
            'id': FirebaseAuth.instance.currentUser!.uid,
            'docId': selectedModel.value!.id,
            'name': nameController.text,
            'phone': phoneController.text,
            'count': '$number',
            'status': 'active',
          }).then((value) {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: const Text('Queue'),
                      content: Text(
                          'Congratulations! You have successfully joined the queue, you are in number $number, Please stay put, you will be called when it your turn'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop();

                            gotoHome();
                          },
                        )
                      ],
                    ));
          });
        }
      }
    });
  }

  void emergencyMethod(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Emergency'),
              content:
                  const Text('Are you sure you want to register for emergency'),
              actions: <Widget>[
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    FirebaseFirestore.instance.collection('emergency').add({
                      'id': FirebaseAuth.instance.currentUser!.uid,
                      //  'docId':selectedModel.value!.id,
                      'name': nameController.text,
                      'phone': phoneController.text,
                    }).then((value) {
                      gotoHome();
                    });
                  },
                )
              ],
            ));
    docList.clear();
  }

  void gotoHome() {
    appRoute.replaceAll([const DashboardRoute()]);
  }

  void bookAppointMethod(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Book Appointment'),
              content: const Text(
                  'Are you sure you want to Book Appointment with this Doctor'),
              actions: <Widget>[
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    FirebaseFirestore.instance
                        .collection('bookedAppointment')
                        .add({
                      'id': FirebaseAuth.instance.currentUser!.uid,
                      'docId': selectedModel.value!.id,
                      'name': nameController.text,
                      'phone': phoneController.text,
                      'symptoms': symptomsController.text,
                      'time': selectedTime.value,
                      'date': selectedDate.value,
                      'status': 'active',
                    }).then((value) {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Book Appointment'),
                                content: const Text(
                                    'Congratulations! You have successfully book an appointment'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      gotoHome();
                                    },
                                  )
                                ],
                              ));
                      //  gotoHome();
                    });
                  },
                )
              ],
            ));
    // docList.clear();
  }

  Future<String> selectTime(BuildContext context) async {
    TimeOfDay initialTime = TimeOfDay.now();
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, Widget? child) {
        final Widget mediaQueryWrapper = MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: false,
          ),
          child: child!,
        );
        // A hack to use the es_US dateTimeFormat value.
        if (Localizations.localeOf(context).languageCode == 'es') {
          return Localizations.override(
            context: context,
            locale: const Locale('es', 'US'),
            child: mediaQueryWrapper,
          );
        }
        return mediaQueryWrapper;
      },
    );

    if (picked != null) {
      // DateFormat('HH:mm').format(picked);
      String hour = picked.hour.toString().length == 1
          ? '0${picked.hour}'
          : picked.hour.toString();
      hour = hour.contains('00') ? '12' : hour;
      hour = int.parse(hour) > 12 ? '${int.parse(hour) - 12}' : hour;
      hour = hour.toString().length == 1 ? '0$hour' : picked.hour.toString();
      hour = int.parse(hour) > 12 ? '${int.parse(hour) - 12}' : hour;
      hour = hour.toString().length == 1 ? '0$hour' : hour.toString();
      String minute = picked.minute.toString().length == 1
          ? '0${picked.minute}'
          : picked.minute.toString();
      selectedTime.value = '$hour:$minute${picked.period.name}';
      return '$hour:$minute${picked.period.name}';
    }
    return '';
  }

  void cancelAppointment(BuildContext context, HistoryModel model) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Cancel Appointment'),
              content:
                  const Text('Are you sure you want to cancel the Appointment'),
              actions: <Widget>[
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    FirebaseFirestore.instance
                        .collection('bookedAppointment')
                        .doc(model.id)
                        .update({'status': 'cancel'}).then((value) {
                      getAllAppointment();
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Cancel'),
                                content: const Text(
                                    'Appointment has been cancelled'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      gotoHome();
                                    },
                                  )
                                ],
                              ));
                    });
                  },
                )
              ],
            ));
  }

  void makeAppointmentActive(BuildContext context, HistoryModel model) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Renew Appointment'),
              content:
                  const Text('Are you sure you want to Renew the Appointment'),
              actions: <Widget>[
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    FirebaseFirestore.instance
                        .collection('bookedAppointment')
                        .doc(model.id)
                        .update({'status': 'active'}).then((value) {
                      getAllAppointment();
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Cancel'),
                                content: const Text(
                                    'Appointment has been Renenewed'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      gotoHome();
                                    },
                                  )
                                ],
                              ));
                    });
                  },
                )
              ],
            ));
  }

  void gotoDoctorQueue() {
    appRoute.push(const DoctorsQueueRoute());
  }
}
