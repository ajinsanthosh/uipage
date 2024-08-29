
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AdditionalScrn extends StatefulWidget {
  const AdditionalScrn({super.key});

  @override
  State<AdditionalScrn> createState() => _AdditionalScrnState();
}

bool switchvalue = true;

class _AdditionalScrnState extends State<AdditionalScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Additional Information"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Listtile(
            leadingicon: Icons.share_outlined,
            text: "Share Dukaan App",
            trailingicon: Icons.chevron_right,
          ),
          const Listtile(
              leadingicon: Icons.speaker_notes,
              text: "Change Language",
              trailingicon: Icons.chevron_right),
          Listtile(
              leadingicon: FontAwesomeIcons.whatsapp,
              text: "WhatsApp Chat Support",
              trailbool: true,
              trail: Switch(value: switchvalue, onChanged: (s) {})),
          const Listtile(
              leadingicon: Icons.lock_open_outlined, text: 'Privacy Policy'),
          const Listtile(
              leadingicon: Icons.star_border_outlined, text: "Rate Us"),
          const Listtile(leadingicon: Icons.logout_outlined, text: "Sign Out "),
        ]),
      ),
    );
  }
}

class Listtile extends StatelessWidget {
  const Listtile({
    super.key,
    required this.leadingicon,
    required this.text,
    this.trailingicon,
    this.trail,
    this.trailbool = false,
  });
  final IconData leadingicon;
  final IconData? trailingicon;
  final String text;
  final Widget? trail;
  final bool trailbool;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(leadingicon, color: Colors.black),
        title: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 20),
        ),
        trailing: trailbool
            ? trail
            : IconButton(
                onPressed: () {},
                icon: Icon(trailingicon),
                color: Color.fromARGB(255, 5, 5, 5),
                iconSize: 30,
              ));
  }
}
