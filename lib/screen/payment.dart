import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PaymentScrn extends StatefulWidget {
  const PaymentScrn({super.key});

  @override
  State<PaymentScrn> createState() => _PaymentScrnState();
}

bool paymentOverview = false;
String choise = 'Payouts (15)';

class _PaymentScrnState extends State<PaymentScrn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff176dab),
        centerTitle: true,
        title: Text(
          "Payments",
          style:
              GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.error_outline,color: Colors.black,),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: size.height / 4 +1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transaction Limit",
                        style: GoogleFonts.poppins(
                            fontSize: 20,color:const Color.fromARGB(255, 14, 14, 14), fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Text(
                        "A free limit up to which you will receive  the online payments ditectly in your bank.",
                        style: GoogleFonts.poppins(fontSize: 17)),
                    const SizedBox(height: 10),
                    LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(10),
                        minHeight: 7,
                        value: 0.3,
                        color: const Color(0xff176dab),
                        backgroundColor: Colors.grey.shade300),
                    const SizedBox(height: 10),
                    Text("36,668 left out of 50,000/-",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff176dab)),
                          onPressed: () {},
                          child: const Text("increase limit ",
                              style:TextStyle(color: Colors.white,fontSize: 18))),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ListItemsWidget(
                  row: const [],
                  size: size,
                  title: 'Default Method',
                  subtitle: 'Online Payments'),
              ListItemsWidget(
                  row: const [],
                  size: size,
                  title: 'Payment Profile',
                  subtitle: 'Bank Account'),
              const Divider(
                height: 8,
              ),
              ListItemsWidget(
                row: [
                  Row(
                    children: [
                      ColorContainerWidget(
                          size: size,
                          color: Colors.deepOrangeAccent,
                          title: 'AMOUNT ON HOLD',
                          subtitle: '₹0'),
                      const SizedBox(width: 10),
                      ColorContainerWidget(
                          size: size,
                          color: Colors.green,
                          title: 'AMOUNT RECEIVED',
                          subtitle: '₹13,332'),
                    ],
                  )
                ],
                size: size,
                title: 'Payment Overview',
                subtitle: 'Life Time',
                onTap: () {
                  if (paymentOverview) {
                    setState(() {
                      paymentOverview = false;
                    });
                  } else {
                    setState(() {
                      paymentOverview = true;
                    });
                  }
                },
                booltrue: paymentOverview,
              ),
              const SizedBox(height: 10),
              Text(
                'Transactions',
                style: GoogleFonts.poppins(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TransactionChoiceChipWidget(
                      choiceName: 'On hold',
                      selected: choise == 'On hold' ? true : false,
                      onselected: (value) {
                        if (choise != 'On hold') {
                          setState(() {
                            choise = 'On hold';
                          });
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: TransactionChoiceChipWidget(
                      
                      choiceName: 'Payouts (15)',
                      selected: choise == 'Payouts (15)' ? true : false,
                      onselected: (value) {
                        if (choise != 'Payouts (15)') {
                          setState(() {
                            choise = 'Payouts (15)';
                          });
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: TransactionChoiceChipWidget(
                      choiceName: 'Refunds',
                      selected: choise == 'Refunds' ? true : false,
                      onselected: (value) {
                        if (choise != 'Refunds') {
                          setState(() {
                            choise = 'Refunds';
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/s-st27-vebnor-original-imagpgs4aheazzqc.jpg',
                  orderNo: 'Order #1688068',
                  price: '₹799',
                  date: 'Jul 12, 02:06 PM',
                  status: 'Successful',
                  deposited: '₹799 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/640px-Cup_and_Saucer_LACMA_47.35.6a-b_(1_of_3).jpg',
                  orderNo: 'Order #1457741',
                  price: '₹397.4',
                  date: 'Apr 26, 07:47 AM',
                  status: 'Successful',
                  deposited: '₹397.4 deposited to. 58860200000138'),
              
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/New-Mockups---no-hanger---TShirt-Yellow_600x.webp',
                  orderNo: 'Order #1369633',
                  price: '₹1123.5',
                  date: 'Apr 2, 11:26 AM',
                  status: 'Successful',
                  deposited: '₹1123.5 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/640px-Cup_and_Saucer_LACMA_47.35.6a-b_(1_of_3).jpg',
                  orderNo: 'Order #14370125',
                  price: '₹1722.75',
                  date: 'Apr 2, 11:26 AM',
                  status: 'Successful',
                  deposited: '₹397.4 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc: 'assets/images/1417275820_2_1_16.jpg',
                  orderNo: 'Order #1408896',
                  price: '₹686.42',
                  date: 'Apr 11, 10:54 AM',
                  status: 'Successful',
                  deposited: '₹686.42 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/s-st27-vebnor-original-imagpgs4aheazzqc.jpg',
                  orderNo: 'Order #1688068',
                  price: '₹799',
                  date: 'Jul 12, 02:06 PM',
                  status: 'Successful',
                  deposited: '₹799 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/640px-Cup_and_Saucer_LACMA_47.35.6a-b_(1_of_3).jpg',
                  orderNo: 'Order #1457741',
                  price: '₹397.4',
                  date: 'Apr 26, 07:47 AM',
                  status: 'Successful',
                  deposited: '₹397.4 deposited to. 58860200000138'),
              
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/New-Mockups---no-hanger---TShirt-Yellow_600x.webp',
                  orderNo: 'Order #1369633',
                  price: '₹1123.5',
                  date: 'Apr 2, 11:26 AM',
                  status: 'Successful',
                  deposited: '₹1123.5 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc:
                      'assets/images/640px-Cup_and_Saucer_LACMA_47.35.6a-b_(1_of_3).jpg',
                  orderNo: 'Order #14370125',
                  price: '₹1722.75',
                  date: 'Apr 2, 11:26 AM',
                  status: 'Successful',
                  deposited: '₹397.4 deposited to. 58860200000138'),
              PayoutsListWidget(
                  size: size,
                  imgSrc: 'assets/images/1417275820_2_1_16.jpg',
                  orderNo: 'Order #1408896',
                  price: '₹686.42',
                  date: 'Apr 11, 10:54 AM',
                  status: 'Successful',
                  deposited: '₹686.42 deposited to. 58860200000138')
            ],
          ),
        ),
      ),
    );
  }
}

class PayoutsListWidget extends StatelessWidget {
  const PayoutsListWidget({
    super.key,
    required this.size,
    required this.imgSrc,
    required this.orderNo,
    required this.price,
    required this.date,
    required this.status,
    required this.deposited,
  });

  final Size size;
  final String imgSrc;
  final String orderNo;
  final String price;
  final String date;
  final String status;
  final String deposited;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 5),
      width: double.infinity,
      height: 95 + 14,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imgSrc,
                  width: 55,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  SizedBox(
                    width: size.width - 50 - 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            orderNo,
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          price,
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.montserrat(
                              color: const Color(0xff176dab),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: size.width - 50 - 45,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            date,
                            style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(width: size.width / 7.9),
                        const CircleAvatar(
                            radius: 5, backgroundColor: Colors.green),
                        const SizedBox(width: 3),
                        Text(
                          status,
                          style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            deposited,
            style: GoogleFonts.montserrat(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class TransactionChoiceChipWidget extends StatelessWidget {
  const TransactionChoiceChipWidget({
    super.key,
    required this.choiceName,
    required this.selected,
    this.onselected,
  });
  final String choiceName;
  final bool selected;
  final void Function(bool)? onselected;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip.elevated(
      label: Text(
        choiceName,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: selected ? Colors.white : Colors.grey,
            fontSize: 15),
      ),
      selectedColor: const Color(0xff176dab),
      onSelected: onselected,
      selected: selected,
      disabledColor: Colors.grey.shade300,
    );
  }
}

class ColorContainerWidget extends StatelessWidget {
  const ColorContainerWidget({
    super.key,
    required this.size,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  final Size size;
  final Color color;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(19),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: color,
      ),
      width: size.width / 2 - 10 - 10,
      height: size.height / 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}

class ListItemsWidget extends StatelessWidget {
  const ListItemsWidget({
    super.key,
    required this.size,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.booltrue = false,
    required this.row,
  });
  final String title;
  final String subtitle;
  final Size size;
  final void Function()? onTap;
  final bool booltrue;
  final List<Widget> row;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: booltrue ? 170 : 40,
      width: size.width,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
                Expanded(
                  child: Text(
                    subtitle,
                    style: GoogleFonts.poppins(fontSize: 12),
                    textAlign: TextAlign.right,
                  ),
                ),
                booltrue
                    ? const Icon(Icons.keyboard_arrow_down)
                    : const Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
          const SizedBox(height: 10),
          booltrue
              ? Row(
                  children: row,
                )
              : const Row()
        ],
      ),
    );
  }
}
