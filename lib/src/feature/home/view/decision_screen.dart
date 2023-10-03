import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class DecisionScreen extends HookWidget {
  DecisionScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>(debugLabel: '_GuestBookState');
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final myValue = useState(false);
    Future showBottomDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(
                'Admin only',
              ),
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      obscureText: true,
                      decoration:
                          const InputDecoration(hintText: 'Enter Password'),
                      controller: controller,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value != 'admin') {
                          return 'Enter right password';
                        }
                        return null;
                      },
                      onChanged: (val) {
                        if (val.length > 3) {
                          /* setState(() {
                          _myValue = true;
                        });*/
                        }
                      },
                    ),
                    Visibility(
                        visible: myValue.value,
                        child: const Text(
                          'Wrong password!!',
                          style: TextStyle(color: Colors.red),
                        ))
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      appRoute.push(const AdminRoute());
                      // await widget.addMessage(_controller.text);

                      /*   Navigator.of(context).pop();
                      // setValue(kState, kAdmin);
                      await Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const AdminPage())); */
                      // setState(() {});
                      //_controller.clear();
                    }
                  },
                  child: const Text('Submit'),
                )
              ],
            ));
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showBottomDialog(context);
                },
                child: Container(
                  width: 281,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF264D9B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  appRoute.push(const LoginRoute());
                },
                child: Container(
                  width: 281,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF0F7852),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Patient',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
