import 'package:assignment_cse3212/model/contact.dart';
import 'package:flutter/material.dart';

class ContactDetailScreen extends StatelessWidget {
  final Contact contact;

  const ContactDetailScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(contact.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(contact.imagePath),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${contact.name}', style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 8),
                    Text('Phone: ${contact.phoneNumber}'),
                    const SizedBox(height: 8),
                    Text('Email: ${contact.email}'),
                    const SizedBox(height: 8),
                    Text('Address: ${contact.address}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}