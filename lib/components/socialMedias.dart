import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialMedia(() {
          _launchURL('https://www.facebook.com/luiz.faizi');
        }, 'assets/icon/fb1.webp'),
        gyap(0, 20),
        _socialMedia(() {
          _launchURL('https://www.instagram.com/fzy_faizy/');
        }, 'assets/icon/insta.webp'),
        gyap(0, 20),
        _socialMedia(() {
          _launchURL('https://github.com/faizalfaizygithub');
        }, 'assets/icon/github.png'),
        gyap(0, 20),
        _socialMedia(() {
          _launchURL(
              'https://www.linkedin.com/in/muhammed-faizal-v-528a6b279/');
        }, 'assets/icon/link2.webp'),
      ],
    );
  }

  _socialMedia(
    Function() action,
    String image,
  ) {
    return GestureDetector(
      onTap: action,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
