import 'package:flut/dirs/btn_widget.dart';
import 'package:flut/dirs/dialog.dart';
import 'package:flut/dirs/func_sized_box_widget.dart';
import 'package:flut/dirs/placeholder_widget.dart';
import 'package:flut/dirs/search_field_widget.dart';
import 'package:flut/dirs/signup.dart';
import 'package:flut/dirs/stack_widget.dart';
import 'package:flut/dirs/text_widget.dart';
import 'package:flut/widgets/custom_row_widget.dart';
import 'package:flutter/material.dart';
import 'dirs/bar.dart';
import 'dirs/actionbutton.dart';
import 'dirs/btmnavbar.dart';

class Metlist extends StatelessWidget {
  const Metlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: AppBar(
            title: Text('Metlist'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              CustomRowWidget(
                txt1: "App Bar",
                clr1: Colors.redAccent,
                link1: Bar(),
                txt2: "Floating Action Button",
                clr2: Colors.tealAccent,
                link2: ActionButton(),
              ),
              SizedBox(height: 5),
              CustomRowWidget(
                txt1: "Bottom Navigation Bar",
                clr1: Colors.teal,
                link1: Btmnavbar(),
                txt2: "Action Button",
                clr2: Colors.purple,
                link2: ActionButton(),
              ),
              SizedBox(height: 5),
              CustomRowWidget(
                txt1: "Dialog Box",
                clr1: const Color.fromARGB(255, 105, 255, 163),
                link1: DialogWidget(),
                txt2: "Search Field",
                clr2: Colors.tealAccent,
                link2: SearchFieldWidget(),
              ),
              SizedBox(height: 5),
              CustomRowWidget(
                txt1: "Sign up page",
                clr1: Colors.limeAccent,
                link1: SignUpPage(),
                clr2: Colors.black,
                link2: TextWidget(),
                txt2: "Rich Text",
              ),
              CustomRowWidget(
                txt1: "Placeholder",
                clr1: Colors.purple,
                link1: PlaceholderWidget(),
                txt2: "Stack",
                clr2: Colors.brown,
                link2: StackWidget(),
              ),
              CustomRowWidget(
                txt1: "FunctionallySizedBox",
                clr1: Colors.amber,
                link1: FuncSizedBoxWidget(),
                txt2: "Button",
                clr2: Colors.blueGrey,
                link2: BtnWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
