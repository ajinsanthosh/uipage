import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiapp/screen/order.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DukaanScrn extends StatefulWidget {
  const DukaanScrn({super.key});

  @override
  State<DukaanScrn> createState() => _DukaanScrnState();
}

bool firstBool = false;
bool secondBool = false;
bool thirdBool = false;
bool fourthBool = false;
bool fifithBool = false;
bool sixthBool = false;

class _DukaanScrnState extends State<DukaanScrn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const videoUrl = 'https://youtu.be/id1E0lqnUtY?si=ne91PJ0ASwtoWfpI';
    final videoId =YoutubePlayer.convertUrlToId(videoUrl) ?? 'DEFAULT_VIDEO_ID';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff176dab),
        centerTitle: true,
        title: Text(
          "Dukaan Premium",
          style:
              GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      color: const Color(0xff176dab),
                      width: double.infinity,
                      height: 160,
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                         // height: size.height / 4 + 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 0),
                                blurRadius: 0.1,
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/dukaan.png',
                                  height: 60),
                              const SizedBox(height: 10),
                              Text(
                                'Get Dukaan Premium for just ₹4,999/- Year',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'All the advanced features for scaling your business.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade500,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DukaanHeadingTextWidget(title: 'Features'),
                      const SizedBox(height: 12),
                      FeatureListWidget(
                        size: size,
                        title: 'Custom domain name',
                        subtext:
                            'Get your own custom domain and build your brand on the internet.',
                        iconData: FontAwesomeIcons.earthAmericas,
                      ),
                      const SizedBox(height: 17),
                      FeatureListWidget(
                          size: size,
                          title: 'Verified seller badge',
                          subtext:
                              'Get green verified badge under your store name and build trust.',
                          iconData: Icons.verified_outlined),
                      const SizedBox(height: 17),
                      FeatureListWidget(
                          size: size,
                          title: 'Dukaan for PC',
                          subtext:
                              'Access all the exclusive premium features on Dukaan for PC.',
                          iconData: Icons.laptop_rounded),
                      const SizedBox(height: 17),
                      FeatureListWidget(
                          size: size,
                          title: 'Priority support',
                          subtext:
                              'Get your questions resolved with our priority customer support.',
                          iconData: Icons.support_agent_sharp),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Divider(
                    color: Colors.grey.shade300.withOpacity(0.6), thickness: 3),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DukaanHeadingTextWidget(
                          title: 'What is Dukaan Premium ?'),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId: videoId,
                            flags: const YoutubePlayerFlags(
                              autoPlay: false,
                              mute: true,
                              isLive: false,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Divider(
                    color: Colors.grey.shade300.withOpacity(0.6), thickness: 3),
                ListDukaanWidget(
                  title: 'What types of businesses can use Dukaan Premium ?',
                  subtitle:
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                  isSelected: firstBool,
                  size: size,
                  onTap: () {
                    if (firstBool == false) {
                      setState(() {
                        firstBool = true;
                      });
                    } else {
                      setState(() {
                        firstBool = false;
                      });
                    }
                  },
                ),
                ListDukaanWidget(
                  title: 'What is your refund policy ?',
                  subtitle:
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                  isSelected: secondBool,
                  size: size,
                  onTap: () {
                    if (secondBool == false) {
                      setState(() {
                        secondBool = true;
                      });
                    } else {
                      setState(() {
                        secondBool = false;
                      });
                    }
                  },
                ),
                ListDukaanWidget(
                  title:
                      'Will there be an automatic charge after the paid trial?',
                  subtitle:
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                  isSelected: thirdBool,
                  size: size,
                  onTap: () {
                    if (thirdBool == false) {
                      setState(() {
                        thirdBool = true;
                      });
                    } else {
                      setState(() {
                        thirdBool = false;
                      });
                    }
                  },
                ),
                ListDukaanWidget(
                  title: 'What payment methods do you offer?',
                  subtitle:
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                  isSelected: fourthBool,
                  size: size,
                  onTap: () {
                    if (fourthBool == false) {
                      setState(() {
                        fourthBool = true;
                      });
                    } else {
                      setState(() {
                        fourthBool = false;
                      });
                    }
                  },
                ),
                ListDukaanWidget(
                  title: 'What happens when my free trial ends?',
                  subtitle:
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                  isSelected: fifithBool,
                  size: size,
                  onTap: () {
                    if (fifithBool == false) {
                      setState(() {
                        fifithBool = true;
                      });
                    } else {
                      setState(() {
                        fifithBool = false;
                      });
                    }
                  },
                ),
                ListDukaanWidget(
                  title: 'What are the terms for the custom domain? ',
                  subtitle:
                      'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                  isSelected: sixthBool,
                  size: size,
                  onTap: () {
                    if (sixthBool == false) {
                      setState(() {
                        sixthBool = true;
                      });
                    } else {
                      setState(() {
                        sixthBool = false;
                      });
                    }
                  },
                ),
                const SizedBox(height: 12),
                Divider(
                    color: Colors.grey.shade300.withOpacity(0.6), thickness: 3),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SuperTextWidget(content: 'Need help? Get in touch'),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          NeedHelpContainerWidget(
                            size: size,
                            title: "Live Chat",
                            icon: FontAwesomeIcons.message,
                          ),
                          const SizedBox(width: 10),
                          NeedHelpContainerWidget(
                            size: size,
                            title: "Phone Call",
                            icon: Icons.phone_outlined,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                    color: Colors.grey.shade300.withOpacity(0.6), thickness: 3),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Domain',
                        style: GoogleFonts.poppins(
                            color: const Color(0xff176dab),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 50,
                        width: size.width / 2 - 10,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff176dab),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Get Premium',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NeedHelpContainerWidget extends StatelessWidget {
  const NeedHelpContainerWidget({
    super.key,
    required this.size,
    required this.icon,
    required this.title,
  });

  final Size size;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (size.width / 2) - 15 - 5,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 0),
            blurRadius: 0.2,
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.grey.shade800,
          ),
          SubTextWidget(content: title)
        ],
      ),
    );
  }
}

class ListDukaanWidget extends StatelessWidget {
  const ListDukaanWidget({
    super.key,
    required this.size,
    required this.isSelected,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final Size size;
  final bool isSelected;
  final String title;
  final String subtitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 2),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: SizedBox(
              width: size.width,
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width - 40 - 14,
                    child: SubTextWidget(content: title),
                  ),
                  isSelected
                      ? const Icon(Icons.minimize_outlined)
                      : const Icon(Icons.add),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isSelected,
            child: Text(
              subtitle,
              style: GoogleFonts.montserrat(fontSize: 15, color: Colors.grey),
            ),
          ),
          Divider(color: Colors.grey.shade300.withOpacity(0.6), thickness: 1.6),
        ],
      ),
    );
  }
}

class DukaanHeadingTextWidget extends StatelessWidget {
  const DukaanHeadingTextWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(fontSize: 22, fontWeight: FontWeight.w700),
    );
  }
}

class FeatureListWidget extends StatelessWidget {
  const FeatureListWidget({
    super.key,
    required this.size,
    required this.title,
    required this.subtext,
    required this.iconData,
  });

  final Size size;
  final String title;
  final String subtext;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff176dab),
                  spreadRadius: 1.5,
                )
              ]),
          child: Center(
            child: Icon(
              iconData,
              color: const Color(0xff176dab),
              size: 35,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SuperTextWidget(content: title),
            const SizedBox(height: 5),
            SizedBox(
              height: 30,
              width: size.width / 1.5,
              child: Text(
                subtext,
                style: GoogleFonts.montserrat(
                    color: Colors.grey.shade500,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        )
      ],
    );
  }
}
