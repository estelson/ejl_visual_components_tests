import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_elevated_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/dialogs/ejl_alert_dialog.dart';
import 'package:ejl_visual_components_tests/screens/widgets/dialogs/ejl_loading_dialog.dart';
import 'package:ejl_visual_components_tests/screens/widgets/others/ejl_text.dart';
import 'package:flutter/material.dart';

class DialogsScreen extends StatelessWidget {
  const DialogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text("Dialogs"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// EJL Alert Dialog demo
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "EJL Alert Dialog",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 16),
                    EJLElevatedButton(
                      onPressed: () {
                        return showEJLAlertDialog(
                          context: context,
                          titleText: "Test",
                          messageText: "EJLAlertDialog test",
                          btnOkText: "Ok",
                          onOkPressed: () {
                            dismissEJLAlertDialog(context: context);
                          },
                          btnCancelText: "Cancel",
                          onCancelPressed: () {
                            dismissEJLAlertDialog(context: context);
                          },
                          showCloseIcon: true,
                        );
                      },
                      labelText: "Show EJLAlertDialog",
                      fontWeight: FontWeight.bold,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            /// EJL Loading Dialog demo
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EJLText(
                      text: "EJL Loading Dialog",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 16),
                    EJLElevatedButton(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: true,
                          useSafeArea: true,
                          context: context,
                          builder: (context) => EJLLoadingDialog(
                            messageText: "EJLLoadingDialog test...",
                          ),
                        );
                      },
                      labelText: "Show EJLLoadingDialog",
                      fontWeight: FontWeight.bold,
                      textColor: Colors.white,
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
