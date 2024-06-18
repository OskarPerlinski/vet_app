import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';


var services = ['Vaccine', 'Surgery', 'Spa & Treatment', 'Consultation'];
var selectedServices = 0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hello, Human!",
                      style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.shoppingBag,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              AspectRatio(
                aspectRatio: 336 / 184,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.blue),
                  child: Stack(
                    children: [
                      Image.asset(
                        "images/background_card.png",
                        height: double.maxFinite,
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "Your ",
                                style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 3.5 / 100,
                                    height: 150 / 100),
                                children: [
                                  TextSpan(
                                      text: "Caterine ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: "will get \nvaccination "),
                                  TextSpan(
                                      text: "tomorrow \nat 07:00 am! ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.4),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(.12),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'See details',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(14)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        FeatherIcons.search,
                        color: Colors.black.withOpacity(.4),
                      ),
                      hintText: "Find best vaccinate, treatment...",
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.4))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 36,
                  child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: selectedServices == index
                                    ? Colors.blue
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: Text(
                              services[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: selectedServices == index
                                      ? Colors.white
                                      : Colors.black.withOpacity(.4)),
                            )),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                      itemCount: services.length)),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.grey[100],
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/drtwo.png",
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text(
                            'Dr. Stone',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Vaccine, Surgery',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                               Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.black.withOpacity(.4),
                              ),
                              Text(
                                '10km',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.4),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Material(
                elevation: 5,
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/drone.jpeg",
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text(
                            'Dr. Kerr',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Vaccine, Surgery',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                               Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.black.withOpacity(.4),
                              ),
                              Text(
                                '15km',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.4),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
               Material(
                elevation: 5,
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/wete1.jpg",
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text(
                            'Dr. Harries',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Vaccine, Surgery',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                               Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.black.withOpacity(.4),
                              ),
                              Text(
                                '22km',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.4),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
