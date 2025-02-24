import 'package:ejl_visual_components_tests/screens/elevated_buttons_screen.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_elevated_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/others/ejl_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: EJLText(
          text: "EJL Visual Widgets",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Buttons section
            EJLText(
              text: "Buttons",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.blueGrey,
            ),
            Divider(),
            EJLElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ElevatedButtonsScreen(),
                  ),
                );
              },
              labelText: "EJLElevatedButtons",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
            ),

            SizedBox(height: 24),

            /// Dialogs section
            EJLText(
              text: "Dialogs",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.blueGrey,
            ),
            Divider(),

            SizedBox(height: 24),

            /// FormFields section
            EJLText(
              text: "FormFields",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.blueGrey,
            ),
            Divider(),

            SizedBox(height: 24),

            /// Validators section
            EJLText(
              text: "Validations",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.blueGrey,
            ),
            Divider(),

            SizedBox(height: 24),

            /// Others section
            EJLText(
              text: "Others",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.blueGrey,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
