import 'package:ejl_visual_components_tests/screens/dialogs_screen.dart';
import 'package:ejl_visual_components_tests/screens/elevated_buttons_screen.dart';
import 'package:ejl_visual_components_tests/screens/form_fields_screen.dart';
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
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "Buttons",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 16),
                    EJLElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ElevatedButtonsScreen(),
                          ),
                        );
                      },
                      labelText: "EJL Elevated Buttons",
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            /// Dialogs section
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "Dialogs",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 16),
                    EJLElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DialogsScreen(),
                          ),
                        );
                      },
                      labelText: "EJL Dialogs",
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            /// FormFields section
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "Form fields",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),

                    SizedBox(height: 16),

                    EJLElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EJLFormFieldsScreen(),
                          ),
                        );
                      },
                      labelText: "EJL Form Fields",
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
