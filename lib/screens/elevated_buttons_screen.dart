import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_elevated_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_elevated_button_icon.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_icon_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_outlined_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_outlined_button_icon.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_text_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_text_button_icon.dart';
import 'package:ejl_visual_components_tests/screens/widgets/others/ejl_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedButtonsScreen extends StatelessWidget {
  const ElevatedButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text("Elevated Buttons"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Filled buttons
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "Filled buttons",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 16),
                    EJLElevatedButton(
                      onPressed: () {},
                      labelText: "EJLElevatedButton",
                      fontWeight: FontWeight.bold,
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 16),
                    EJLElevatedButtonIcon(
                      onPressed: () {},
                      icon: CupertinoIcons.check_mark_circled_solid,
                      labelText: "EJLElevatedButtonIcon",
                      fontWeight: FontWeight.bold,
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: EJLIconButton(
                        icon: CupertinoIcons.check_mark_circled_solid,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            /// Outlined buttons
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "Outlined buttons",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 16),
                    EJLOutlinedButton(
                      onPressed: () {},
                      labelText: "EJLOutlinedButton",
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 16),
                    EJLOutlinedButtonIcon(
                      onPressed: () {},
                      icon: CupertinoIcons.check_mark_circled_solid,
                      labelText: "EJLOutlinedButtonIcon",
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            /// Text buttons
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "Text buttons",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 8),
                    Center(
                      child: EJLTextButton(
                        onPressed: () {},
                        labelText: "EJLTextButton",
                      ),
                    ),
                    SizedBox(height: 8),
                    Center(
                      child: EJLTextButtonIcon(
                        onPressed: () {},
                        icon: CupertinoIcons.check_mark_circled_solid,
                        labelText: "EJLTextButtonIcon",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
