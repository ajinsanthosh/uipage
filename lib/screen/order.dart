import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiapp/screen/payment.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff176dab),
        centerTitle: true,
        title: Text(
          "Orders #1688068",
          style:
              GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'May 31, 05:42 PM',
                    style: GoogleFonts.poppins(
                        fontSize: 17, fontWeight: FontWeight.normal),
                  )),
                  const CircleAvatar(
                      radius: 10, backgroundColor: Color(0xff176dab)),
                  const SizedBox(width: 5),
                  Text(
                    'Delivered',
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Divider(color: const Color.fromARGB(255, 134, 50, 50).withOpacity(0.4), thickness: 1),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Expanded(
                      child: HeadingTextWidget(
                    title: '1 ITEM',
                  ),
                  ),
                  const Icon(
                    Icons.receipt_outlined,
                    size: 30,
                    color: Color(0xff176dab),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'RECEIPT',
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff176dab)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                          'assets/images/s-st27-vebnor-original-imagpgs4aheazzqc.jpg',
                          width: 90)
                          ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore | Men | Navy Blue',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                      Text(
                        '1 piece',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      Text(
                        'Size: XL',
                        style: GoogleFonts.poppins(
                            fontSize: 17, color: Colors.grey.shade600),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: size.width - 199,
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.blue.shade100.withOpacity(0.2),
                                      border: Border.all(
                                          color: const Color(0xff176dab),
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Align(
                                    child: Text(
                                      '1',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: const Color(0xff176dab)),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 9),
                                Text('x',
                                    style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(width: 5),
                                Text('₹799',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          Text(
                            '₹799',
                            style: GoogleFonts.montserrat(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: Colors.grey.withOpacity(0.4), thickness: 1),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Item Total',
                    style: GoogleFonts.montserrat(
                        fontSize: 19, fontWeight: FontWeight.w500),
                  )),
                  Text(
                    '₹799',
                    style: GoogleFonts.montserrat(
                        fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Delivery',
                    style: GoogleFonts.montserrat(
                        fontSize: 19, fontWeight: FontWeight.w500),
                  )),
                  Text(
                    'FREE',
                    style: GoogleFonts.montserrat(
                        color: Colors.green,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Grand Total',
                    style: GoogleFonts.montserrat(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  )),
                  Text(
                    '₹799',
                    style: GoogleFonts.montserrat(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(color: Colors.grey.withOpacity(0.4), thickness: 1),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Expanded(
                      child: HeadingTextWidget(title: 'CUSTOMER DETAILS')),
                  const Icon(
                    Icons.share_outlined,
                    size: 30,
                    color: Color(0xff176dab),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'SHARE',
                    style: GoogleFonts.montserrat(
                        color: const Color(0xff176dab),
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deepa',
                          style: GoogleFonts.montserrat(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '+91-7829000484',
                          style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.phone, color: Color(0xff176dab)),
                  const SizedBox(width: 10),
                  const Icon(FontAwesomeIcons.whatsapp,
                      color: Colors.green, size: 35)
                ],
              ),
              const SizedBox(height: 10),
              const SuperTextWidget(content: 'Address'),
              const SizedBox(height: 5),
              const SubTextWidget(
                  content: 'D 1101 Chartered Beverly Hills,Subramanyapura P.O'),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SuperTextWidget(content: 'City'),
                        SizedBox(height: 5),
                        SubTextWidget(content: 'Bangalore')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SuperTextWidget(content: 'Pincode'),
                        SizedBox(height: 5),
                        SubTextWidget(content: '560061')
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const SuperTextWidget(content: 'Payment'),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Expanded(child: SubTextWidget(content: 'Online')),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100.withOpacity(0.2),
                        border:Border.all(color: Colors.green.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'PAID',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Divider(color: Colors.grey.withOpacity(0.4), thickness: 1),
              const SizedBox(height: 10),
              const HeadingTextWidget(title: 'ADDITIONAL INFORMATION'),
              const SizedBox(height: 10),
              const SuperTextWidget(content: 'State'),
              const SizedBox(height: 5),
              const SubTextWidget(content: 'Karnataka'),
              const SizedBox(height: 10),
              const SuperTextWidget(content: 'Email'),
              const SizedBox(height: 5),
              const SubTextWidget(content: 'greeniceaqua@gmail.com'),
              const SizedBox(height: 25),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        side: const BorderSide(color: Color(0xff176dab)),
                      ),
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PaymentScrn(),
                         ));
                      },
                      child: Text(
                        'Share receipt',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xff176dab),
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingTextWidget extends StatelessWidget {
  const HeadingTextWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
          color: Colors.grey.shade600,
          fontSize: 19,
          fontWeight: FontWeight.w600),
    );
  }
}

class SubTextWidget extends StatelessWidget {
  const SubTextWidget({
    super.key,
    required this.content,
  });
  final String content;
  @override
  Widget build(BuildContext context) {
    return Text(content,
        style: GoogleFonts.montserrat(
            fontSize: 19, fontWeight: FontWeight.normal));
  }
}

class SuperTextWidget extends StatelessWidget {
  const SuperTextWidget({
    super.key,
    required this.content,
  });
  final String content;
  @override
  Widget build(BuildContext context) {
    return Text(content,
        style:
            GoogleFonts.montserrat(fontSize: 19, fontWeight: FontWeight.w600));
  }
}
