import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bmi calculator".toUpperCase()),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.night_shelter),
          )
        ],
      ),
      drawer: Drawer(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.red,
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 2 - 26,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Age(In Year)",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                          "18", 
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.remove, size: 40,)
                              ),
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.add, size: 40,)
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 20,
                    shadowColor: Colors.red,
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 2 - 26,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Weight(KG)",
                             style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            "18", style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.remove,size: 40)
                              ),
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.add,size: 40)
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),

            Card(
              elevation: 10,
              shadowColor: Colors.red,
              child: Container(
                height: 250,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("cm"),
                              Switch(
                                value: true, 
                                onChanged: (bool x){}
                              ),
                              Text("ft")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text("Height", style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(Icons.arrow_downward, size: 48,)
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '8"',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(Icons.arrow_downward, size: 48,)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}