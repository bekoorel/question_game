import 'package:flutter/material.dart';
import 'package:tools_app/core/style/styles.dart';
import 'package:tools_app/featurs/insert_quwetshan/widget/button_widget.dart';
import 'package:tools_app/featurs/insert_quwetshan/widget/fild_widget.dart';

class InsertPage extends StatelessWidget {
  const InsertPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller =TextEditingController();
    return Scaffold(
      backgroundColor: Styles.black,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: fildWidget(controller),
              ),
              Expanded(
                flex: 1,
                child: buttonWidget(controller.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
