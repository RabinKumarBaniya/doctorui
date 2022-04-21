
import'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
         elevation: 0.0,
         backgroundColor: Theme.of(context).primaryColor,
         title: const Text("Doctors"),
         leading: const Icon(
           Icons.menu,
           color: Colors.white,
         ),
         actions: [
           GestureDetector(
             child: Container(
               margin:const EdgeInsets.only(right: 10),
               child: const Icon(
                 Icons.notifications_rounded,
                 color: Colors.white,
               )
             ),
             ),
           
         ],

      ),
     
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Center(
                child: Text(
                  "Nearby Doctors",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.only(top:25, left:20, right: 20),
              decoration: BoxDecoration( 
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0*14000000),
                    offset: Offset(0, 10),
                    blurRadius: 15,
                  )
                ]
              ),
              height: 60,
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.only(left:10, right: 10),

                      child: const TextField(
                        maxLines: 1,
                        autofocus: false,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                         border: InputBorder.none,
                        hintText: "Search"
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ]
                

              ),
            ),
            Container(
              height: 120,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoCategories("assets/images/drop.jpg", "Drop", ""),
                  demoCategories("assets/images/search.png", "", ""),
                  demoCategories("assets/images/contact.jpg", "", ""),
                  demoCategories("", "", ""),
                ],
              ), 
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
               child: ListView(
                 children: [
                   demoTopRatedDr(
                     "assets/images/doctor.jpg",
                     "Ram Bahadur",
                     "General Physcian",
                    ),
                     demoTopRatedDr(
                     "assets/images/doctor.jpg",
                     "Ram Bahadur",
                     "General Physcian",
                    ),
                     demoTopRatedDr(
                     "assets/images/doctor.jpg",
                     "Ram Bahadur",
                     "General Physcian",
                    ),
                     demoTopRatedDr(
                     "assets/images/doctor.jpg",
                     "Ram Bahadur",
                     "General Physcian",
                    ),
                 ],

               ),
            ),
            )
          ],
        
        ),
      )
    );
  }

  Widget demoCategories(String image, String name, String drQuatity) {
    return Container(
      margin: const EdgeInsets.only(right:15),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 90,
            width: 50,
            child: Image.asset(image),
          ),
          
        ],
      ),
    );
  }
  Widget demoTopRatedDr(String image, String name, String speciality) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      child: Container(
        height:  90,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(image),

            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),


                ],
                ),
            )
          ],

        )
      ),
    );
  }
}

  
