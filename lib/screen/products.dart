import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiapp/screen/dukaan.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isSelected = true;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff176dab),
          centerTitle: true,
          title: Text("Catalogue",
              style: GoogleFonts.montserrat(
                  fontSize: 25, fontWeight: FontWeight.w500)),
          actions: [
            IconButton(
              icon: const Icon(Icons.search,size: 30,color: Colors.black,),
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DukaanScrn()),
          );
              },
            ),
          ],
          bottom: TabBar(
            labelStyle: GoogleFonts.montserrat(
                fontSize: 17, fontWeight: FontWeight.w500),
            indicatorColor: Colors.white,
            tabs: const [
              Tab(text: "Products",),
              Tab(text: "Categories"),
            ],
            labelColor: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xfff5f5f5),
        body: TabBarView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListContainerProductsWidget(
                      size: size,
                      isSelected: isSelected,
                      imageSrc: 'assets/images/kids_combo.jpeg',
                      title: 'Couch Potato | Women',
                      price: '₹799',
                    ),
                    const SizedBox(height: 10),
                    ListContainerProductsWidget(
                      size: size,
                      isSelected: isSelected,
                      imageSrc: 'assets/images/kids.jpeg',
                      title: 'Couch Potato | Kids',
                      price: '₹599',
                    ),
                    const SizedBox(height: 10),
                    ListContainerProductsWidget(
                      size: size,
                      isSelected: isSelected,
                      imageSrc: 'assets/images/kids_combo.jpeg',
                      title: 'Couch Potato | Men',
                      price: '₹999',
                    ),
                    const SizedBox(height: 10),
                    ListContainerProductsWidget(
                      size: size,
                      isSelected: isSelected,
                      imageSrc: 'assets/images/cup.jpeg',
                      title: 'Mug | Explore',
                      price: '₹399',
                    ),
                    const SizedBox(height: 10),
                    ListContainerProductsWidget(
                      size: size,
                      isSelected: isSelected,
                      imageSrc: 'assets/images/71SLA6xC9RL.jpg',
                      title: 'Mug | Orchard',
                      price: '₹449',
                    ),
                    const SizedBox(height: 10),
                    ListContainerProductsWidget(
                      size: size,
                      isSelected: isSelected,
                      imageSrc: 'assets/images/kids_combo.jpeg',
                      title: 'Couch Potato | Women',
                      price: '₹799',
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const Center(
              child: Text("Categories Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

class ListContainerProductsWidget extends StatelessWidget {
  const ListContainerProductsWidget({
    super.key,
    required this.size,
    required this.isSelected,
    required this.title,
    required this.imageSrc,
    required this.price,
  });

  final Size size;
  final bool isSelected;
  final String title;
  final String imageSrc;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
     // height: size.height / 3.3 + 1.49,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageSrc,
                  width: 110,
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width - 130 - 25,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(fontSize: 20),
                          ),
                        ),
                        const Icon(Icons.more_vert_outlined)
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '1 piece',
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 9),
                  Text(
                    price,
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 9),
                  SizedBox(
                    width: size.width - 130 - 25,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'In stock',
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.green),
                          ),
                        ),
                        Switch(
                          value: isSelected,
                          onChanged: (value) {},
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Divider(color: Colors.grey.withOpacity(0.4), thickness: 1),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.share_outlined, size: 35),
              const SizedBox(width: 10),
              Text('Share Product', style: GoogleFonts.poppins(fontSize: 20))
            ],
          )
        ],
      ),
    );
  }
}
