import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController nameTEController = TextEditingController();
  final TextEditingController lastNameTEController = TextEditingController();
  final TextEditingController mobileTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  final TextEditingController postalCodeTEController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final RegExp _emailRegExp = RegExp(
      r'^(cse_|eee_|thm_|bba_|archi_)\d{16}@lus.ac.bd$'); // Email validation
  final RegExp _nameRegExp = RegExp(r'^[a-zA-Z]+$'); // First name validation

  final RegExp _mobileRegExp =
      RegExp(r'^(\+880)[ -]?\d{10}$'); // Mobile number validation
  final RegExp _passwordRegExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$'); // Password validation
  final RegExp _postalCodeRegExp = RegExp(r'^\d{4}$'); // Postal code validation

  bool _obscurePassword = true; // Password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regex Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: _buildTextFormField(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailTEController,
            decoration: const InputDecoration(
              hintText: 'cse/eee/thm/bba/arch... @lus.ac.bd',
              labelText: 'Enter your email ',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your email';
              } else if (!_emailRegExp.hasMatch(value)) {
                return 'Enter a valid email ending with @lus.ac.bd';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: nameTEController,
            decoration: const InputDecoration(
              hintText: ' Ibshar',
              labelText: 'Enter your name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your  name';
              } else if (!_nameRegExp.hasMatch(value)) {
                return 'Enter a valid  name';
              }
              return null;
            },
          ),

          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: postalCodeTEController,
            decoration: const InputDecoration(
              hintText: 'Postal Code',
              labelText: 'Enter your postal code (4 digits)',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your postal code';
              } else if (!_postalCodeRegExp.hasMatch(value)) {
                return 'Enter a valid 4-digit postal code';
              }
              return null;
            },
          ),

          const SizedBox(height: 20),

          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: passwordTEController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Enter your password',
              suffixIcon: IconButton(
                icon: _obscurePassword
                    ? Lottie.asset('assets/images/eye.json',
                        width: 24, height: 24) // Animation for visible state
                    : Lottie.asset('assets/images/eye.json',
                        width: 24, height: 24),
                // Animation for obscured state
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your password';
              } else if (!_passwordRegExp.hasMatch(value)) {
                return 'Enter a valid password';
              }
              return null;
            },
          ),

          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: mobileTEController,
            decoration: const InputDecoration(
              hintText: 'Mobile',
              labelText: 'Enter phone number (+880xxxxxxxxxx)',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your mobile number';
              } else if (!_mobileRegExp.hasMatch(value)) {
                return 'Enter a valid mobile number';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Check form validation'),
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      String email = emailTEController.text;
      String name = nameTEController.text;

      String mobile = mobileTEController.text;
      String password = passwordTEController.text;
      String postalCode = postalCodeTEController.text;

      showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.black,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Submitted Form'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email: $email'),
                Text('Name: $name '),
                Text('Mobile: $mobile'),
                Text('Password: $password'),
                Text('Postal Code: $postalCode'),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.white,
          );
        },
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form submitted successfully!')),
      );

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pop(context);
        _clearForm();
      });
    }
  }

  void _clearForm() {
    emailTEController.clear();
    nameTEController.clear();
    mobileTEController.clear();
    passwordTEController.clear();
    postalCodeTEController.clear();
  }
}
