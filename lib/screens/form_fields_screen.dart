import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ejl_visual_components_tests/screens/widgets/buttons/ejl_elevated_button.dart';
import 'package:ejl_visual_components_tests/screens/widgets/dialogs/ejl_alert_dialog.dart';
import 'package:ejl_visual_components_tests/screens/widgets/form_fields/ejl_text_form_field.dart';
import 'package:ejl_visual_components_tests/screens/widgets/others/ejl_text.dart';
import 'package:ejl_visual_components_tests/screens/widgets/validators/ejl_password_validation_markers.dart';
import 'package:flutter/material.dart';

class EJLFormFieldsScreen extends StatefulWidget {
  const EJLFormFieldsScreen({super.key});

  @override
  State<EJLFormFieldsScreen> createState() => _EJLFormFieldsScreenState();
}

class _EJLFormFieldsScreenState extends State<EJLFormFieldsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _simpleTextFormFieldController = TextEditingController();
  final TextEditingController _textFormFieldWithCounterController = TextEditingController();
  final TextEditingController _disabledTextFormFieldController = TextEditingController();
  final TextEditingController _errorTextFormFieldController = TextEditingController();
  final TextEditingController _passwordFormFieldController = TextEditingController();

  IconData _iconPassword = Icons.disabled_visible;
  bool _obscurePassword = true;

  bool containsUpperCase = false;
  bool containsLowerCase = false;
  bool containsNumber = false;
  bool containsSpecialChar = false;
  bool contains8Length = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text("Form Fields"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Text form field
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EJLText(
                        text: "Text form fields",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blueGrey,
                      ),
                      SizedBox(height: 16),
                      EJLTextFormField(
                        controller: _simpleTextFormFieldController,
                        labelText: "Simple text form field",
                        hintText: "Simple text form field",
                      ),
                      SizedBox(height: 16),
                      EJLTextFormField(
                        controller: _textFormFieldWithCounterController,
                        labelText: "Text form field with counter",
                        hintText: "Text form field with counter",
                        maxLength: 100,
                        maxLines: 5,
                      ),
                      SizedBox(height: 16),
                      EJLTextFormField(
                        controller: _disabledTextFormFieldController,
                        labelText: "Disabled text form field",
                        hintText: "Disabled text form field",
                        isEnabled: false,
                      ),
                      SizedBox(height: 16),
                      EJLTextFormField(
                        controller: _errorTextFormFieldController,
                        labelText: "Error text form field",
                        hintText: "Error text form field",
                        errorMessage: "Error message",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EJLText(
                        text: "Password and validations",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blueGrey,
                      ),
                      SizedBox(height: 16),
                      EJLTextFormField(
                        controller: _passwordFormFieldController,
                        labelText: "Password form field",
                        hintText: "Password form field",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;

                              if (_obscurePassword) {
                                _iconPassword = Icons.disabled_visible;
                              } else {
                                _iconPassword = Icons.visibility;
                              }
                            });
                          },
                          icon: Icon(
                            _iconPassword,
                            color: Colors.blue,
                          ),
                        ),
                        isObscureText: _obscurePassword,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill in this field';
                          } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^]).{8,}$').hasMatch(value)) {
                            return 'Please enter a valid password';
                          }

                          return null;
                        },
                        onChanged: (value) {
                          _passwordValidation(value);
                        },
                      ),
                      SizedBox(height: 16),
                      EJLPasswordValidationMarkers(
                        containsUpperCase: containsUpperCase,
                        containsLowerCase: containsLowerCase,
                        containsNumber: containsNumber,
                        containsSpecialChar: containsSpecialChar,
                        contains8Length: contains8Length,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: EJLElevatedButton(
                    onPressed: () {
                      _validateForm(context);
                    },
                    labelText: "Validate and show values",
                    fontWeight: FontWeight.bold,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validateForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      showEJLAlertDialog(
        context: context,
        titleText: "Form validation",
        messageText: "Form is valid",
        btnOkText: "Close",
        onOkPressed: () {
          Navigator.pop(context);
        },
        dialogType: DialogType.success,
      );
    } else {
      showEJLAlertDialog(
        context: context,
        titleText: "Form validation",
        messageText: "Form is not valid",
        btnOkText: "Close",
        onOkPressed: () {
          Navigator.pop(context);
        },
        dialogType: DialogType.error,
      );
    }
  }

  void _passwordValidation(String value) {
    if (value.contains(RegExp(r'[A-Z]'))) {
      setState(() {
        containsUpperCase = true;
      });
    } else {
      setState(() {
        containsUpperCase = false;
      });
    }
    if (value.contains(RegExp(r'[a-z]'))) {
      setState(() {
        containsLowerCase = true;
      });
    } else {
      setState(() {
        containsLowerCase = false;
      });
    }
    if (value.contains(RegExp(r'[0-9]'))) {
      setState(() {
        containsNumber = true;
      });
    } else {
      setState(() {
        containsNumber = false;
      });
    }
    if (value.contains(RegExp(r'^(?=.*?[!@#$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^])'))) {
      setState(() {
        containsSpecialChar = true;
      });
    } else {
      setState(() {
        containsSpecialChar = false;
      });
    }
    if (value.length >= 8) {
      setState(() {
        contains8Length = true;
      });
    } else {
      setState(() {
        contains8Length = false;
      });
    }
  }
}
