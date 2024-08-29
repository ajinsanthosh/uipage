import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiapp/screen/additional.dart';
import 'package:uiapp/screen/order.dart';
import 'package:uiapp/screen/products.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState

    extends State<BottomNavigationBarExample> {

  int _currentIndex = 3;
  final List<Widget> _pages = [
    HomePage(),
    const OrdersPage(),
    ProductsPage(),
    ManagePage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
         showUnselectedLabels: true,
        selectedLabelStyle:
            GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
        fixedColor: const Color(0xff176dab),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers_sharp),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

//Home page screeen

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Home Page')),
    );
  }
}


class ManagePage extends StatelessWidget {
  const ManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff176dab),
        centerTitle: true,
        title: Text(
          'Manage Store',
          style:
              GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdditionalScrn()),
          );
        }, icon: const Icon(Icons.menu)),
      ),
      backgroundColor: const Color(0xfff5f5f5),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ManageStoreOptionsWidget(
                      size: size,
                      color: const Color(0xfff07017),
                      title: 'Marketing Designs',
                      icon: Icons.volume_up_outlined),
                  const SizedBox(width: 10),
                  ManageStoreOptionsWidget(
                    size: size,
                    title: 'Online Payments',
                    icon: Icons.currency_rupee,
                    color: const Color(0xff5fd661),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ManageStoreOptionsWidget(
                      size: size,
                      color: const Color(0xfff3b256),
                      title: 'Discount Coupons',
                      icon: Icons.discount_outlined),
                  const SizedBox(width: 10),
                  ManageStoreOptionsWidget(
                    size: size,
                    title: 'My\nCustomers',
                    icon: Icons.people_outline_rounded,
                    color: const Color(0xff1ca89e),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ManageStoreOptionsWidget(
                      size: size,
                      color: const Color(0xff7b7b7b),
                      title: 'Store QR Code',
                      icon: Icons.qr_code_scanner_sharp),
                  const SizedBox(width: 10),
                  ManageStoreOptionsWidget(
                    size: size,
                    title: 'Extra\nCharges',
                    icon: Icons.money,
                    color: const Color(0xff5fd661),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ManageStoreOptionsWidget(
                      size: size,
                      color: const Color(0xffc05a88),
                      title: 'Order\nForm',
                      icon: Icons.format_align_left,
                      newBool: true),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//account page

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account Page'),
    );
  }
}


class ManageStoreOptionsWidget extends StatelessWidget {
  const ManageStoreOptionsWidget({
    super.key,
    required this.size,
    required this.title,
    required this.color,
    required this.icon,
    this.ontap,
    this.newBool = false,
  });
  final String title;
  final Size size;
  final Color color;
  final IconData? icon;
  final void Function()? ontap;
  final bool newBool;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 10),
        width: size.width / 2 - 10 - 5,
        height: size.height / 5.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                newBool
                    ? Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'New',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    : Container()
              ],
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: GoogleFonts.montserrat(
                  fontSize: 25, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
