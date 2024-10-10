import 'package:assignment_cse3212/Screens/add_new_product_screen.dart';
import 'package:assignment_cse3212/model/contact_list.dart';
import 'package:assignment_cse3212/widgets/app_bar.dart';
import 'package:flutter/material.dart';


class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(title: 'Contact List'),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          final contact = contactList[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(contact.imagePath),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            trailing: IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {},
            ),
            onTap: () {

            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewContactScreen(),
            ),
          );
        },
        child: const Icon(Icons.person_add),
        tooltip: 'Add Contact',
      ),
    );
  }
}
