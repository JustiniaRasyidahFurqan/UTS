import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height, width;

  List iconImages = [
    "assets/flight.png",
    "assets/condo.png",
    "assets/plate.png",
    "assets/front-of-bus.png",
    "assets/flight.png",
    "assets/condo.png",
    "assets/plate.png",
    "assets/front-of-bus.png",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.07,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: 
                          TextStyle(
                            color: Colors.black, 
                            fontWeight: FontWeight.w700, 
                            fontSize: width*0.059,
                            ),
                        ),
                        Text(
                          "Explore your world beauty",
                          style: 
                          TextStyle(
                            color: Colors.black, 
                            fontWeight: FontWeight.w500, 
                            fontSize: width*0.037,
                            ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.5,
                    ),
                    Container(
                      height: height * 0.052,
                      width: width * 0.052,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/girl.png"),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                height: height * 0.073,
                width: width * 0.90,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here...",
                        hintStyle: TextStyle(
                            color: Colors.black, 
                            fontWeight: FontWeight.w800, 
                            fontSize: width*0.045,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black54,
                          size: width * 0.08,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: iconImages.length,
                  itemBuilder: (context, int index) { 
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card ( 
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          height: height * 0.080,
                          width: width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image(
                              height: height * 0.70,
                              image: AssetImage(
                                iconImages[index]
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                width: width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All",
                      style: 
                      TextStyle(
                        color: Colors.black54, 
                        fontWeight: FontWeight.w500, 
                        fontSize: width * 0.04,
                      ),
                    ),
                    Text(
                      "New",
                      style: 
                      TextStyle(
                        color: Colors.black54, 
                        fontWeight: FontWeight.w500, 
                        fontSize: width * 0.04,
                      ),
                    ),
                    Text(
                      "Tours",
                      style: 
                      TextStyle(
                        color: Colors.blue, 
                        fontWeight: FontWeight.w500, 
                        fontSize: width * 0.04,
                      ),
                    ),
                    Text(
                      "Asian",
                      style: 
                      TextStyle(
                        color: Colors.black54, 
                        fontWeight: FontWeight.w500, 
                        fontSize: width * 0.04,
                      ),
                    ),
                    Text(
                      "Adventure",
                      style: 
                      TextStyle(
                        color: Colors.black54, 
                        fontWeight: FontWeight.w500, 
                        fontSize: width * 0.04,
                      ),
                    ), 
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.44,
                width: width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  // itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.01,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/aeroplane.png")
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
