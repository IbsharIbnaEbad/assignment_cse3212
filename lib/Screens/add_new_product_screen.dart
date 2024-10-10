import 'package:assignment_cse3212/model/contact.dart';
import 'package:assignment_cse3212/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class AddNewContactScreen extends StatefulWidget {
  const AddNewContactScreen({super.key});

  @override
  State<AddNewContactScreen> createState() => _AddNewContactScreenState();
}

class _AddNewContactScreenState extends State<AddNewContactScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String phoneNumber = '';
  String email = '';
  String address = '';
  String imagePath = '';

  void _addContact() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      Contact newContact = Contact(
        id: DateTime.now().toString(),
        name: name,
        phoneNumber: phoneNumber,
        email: email,
        address: address,
        imagePath: imagePath,
      );


      Navigator.pop(context, newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Add to Contact List'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  phoneNumber = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value ?? '';
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address'),
                onSaved: (value) {
                  address = value ?? '';
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Image Path'),
                onSaved: (value) {
                  imagePath = value ?? ''; // Save image path
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addContact,
                child: const Text('Add Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
