import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile',
            style: GoogleFonts.aboreto(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olivia Doe',
                        style: GoogleFonts.aboreto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Olivia.doe@gmail.com',
                        style: GoogleFonts.aboreto(
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Account',
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_pin_rounded),
                      title: Text(
                        'Manage Profile',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                    ),
                    Divider(thickness: 0.5, indent: 20, endIndent: 20),
                    ListTile(
                      leading: Icon(Icons.lock_outline_rounded),
                      title: Text(
                        'Password & Security',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                    ),
                    Divider(thickness: 0.5, indent: 20, endIndent: 20),
                    ListTile(
                      leading: Icon(Icons.circle_notifications),
                      title: Text(
                        'Notifications',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                    ),
                    Divider(thickness: 0.5, indent: 20, endIndent: 20),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text(
                        'Language',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'English',
                            style: GoogleFonts.roboto(
                              fontSize: 13,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_rounded, size: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Preferences',
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.info_outline_rounded),
                    title: Text(
                      'About Us',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                  ),
                  Divider(thickness: 0.5, indent: 20, endIndent: 20),
                  ListTile(
                    leading: Icon(Icons.color_lens_outlined),
                    title: Text(
                      'Theme',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Light',
                          style: GoogleFonts.roboto(
                            fontSize: 13,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_rounded, size: 16),
                      ],
                    ),
                  ),
                  Divider(thickness: 0.5, indent: 20, endIndent: 20),
                  ListTile(
                    leading: Icon(Icons.calendar_month_outlined),
                    title: Text(
                      'Appointments',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Support',
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.help_outline_rounded),
                    title: Text(
                      'Help Center',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                  ),
                  Divider(thickness: 0.5, indent: 20, endIndent: 20),
                  ListTile(
                    leading: Icon(Icons.feedback_outlined),
                    title: Text(
                      'Feedback',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded, size: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
