import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButtons extends StatefulWidget {
  final String link;
  final IconData icon;
  const SocialMediaButtons(
    this.link,
    this.icon, {
    super.key,
  });

  @override
  State<SocialMediaButtons> createState() => _SocialMediaButtonsState();
}

class _SocialMediaButtonsState extends State<SocialMediaButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SizedBox(
        height: 41,
        width: 41,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                padding: const MaterialStatePropertyAll(EdgeInsets.all(5)),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0x00000000)),
                fixedSize: MaterialStateProperty.all(const Size(10, 35)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                            color: Color.fromRGBO(179, 141, 95, 0.988))))),
            child: IconButton(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 1.5),
              icon: Icon(widget.icon),
              color: const Color.fromRGBO(179, 141, 95, 0.988),
              onPressed: () => _launchedUrl(widget.link),
            )),
      ),
    );
  }
}

_launchedUrl(String link) async {
  final Uri url = Uri.parse(link);
  print(link);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
