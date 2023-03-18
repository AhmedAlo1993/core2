import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/facilities_provider.dart';

class FacilitiesPage extends StatefulWidget {
  const FacilitiesPage({super.key});

  @override
  State<FacilitiesPage> createState() => _FacilitiesPageState();git 
}

class _FacilitiesPageState extends State<FacilitiesPage> {
  @override
  Widget build(BuildContext context) {
     Provider<FacilityProvider> facilityProvider;
    return Scaffold(
        body: SafeArea(child: 
        Column(
      children: [
        //welcom 
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: const ListTile(
            title: Text("Welcome!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff6f2282)),),
            subtitle: Text('Ahmed ahmad',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
            leading: Icon(Icons.account_circle,size: 85,),
          ),
        ),
       
        Expanded(child: 
        Container(
          height: MediaQuery.of(context).size.height * 0.20,
          color: const Color.fromARGB(255, 255, 213, 151),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                  //  Text(facility_provider.fasilityList[index].officetype),
                    Container(
                      
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.all(10),
                      child: Text("Our Office",style: TextStyle(fontSize: 30,color:Color(0xff6f2282)),),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.all(10),
                      child: Text("16 office",style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 16, // proveder.list.length,
                itemBuilder: (context, index) =>  Card(
                  //padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("images/meet.jpg",fit: BoxFit.contain,height: 120,),
                      ),
                       Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.all(5),
                        child: Text("userName",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                        ),
                       ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Office Type"),
                          ),
                          Container(
                           padding: EdgeInsets.all(8),
                           decoration: BoxDecoration(
                            color:Color(0xffc3f3c3), // c3f3c3
                            borderRadius: BorderRadius.circular(24),),
                            child: Text("Available",),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              )),
            ],
          ),
        ))
      ],
    )
    ));
  }
}
