import 'package:flutter/material.dart';

class MatchScoresCard extends StatelessWidget {
  const MatchScoresCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(17),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: '1st Round  \u{FF65} ',
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                    children: [

                      TextSpan(
                        text: " Court 7 ",
                      ),

                      // TextSpan(
                      //   text: "$round \u{FF65} ",
                      // ),
                      //
                      // const WidgetSpan(
                      //   child: Icon(Icons.access_time, size: 16, color: Colors.white,),
                      // ),
                      // TextSpan(
                      //   text: time,
                      // ),
                    ],

                  ),
                ),

                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    //text: '1st Round \u{FF65} ',
                    style: const TextStyle(fontSize: 12,
                      color: Colors.black,

                    ),
                    children: [
                      const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Icon(Icons.circle, size: 8, color: Colors.black,),
                        ),
                      ),

                      TextSpan(
                        text: " Live ",
                      ),

                      // TextSpan(
                      //   text: "$round \u{FF65} ",
                      // ),
                      //
                      // const WidgetSpan(
                      //   child: Icon(Icons.access_time, size: 16, color: Colors.white,),
                      // ),
                      // TextSpan(
                      //   text: time,
                      // ),
                    ],

                  ),
                ),

              ],
            ),
          ),

          Divider(),

          ListTile(
            dense:true,

            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
            contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
            leading: CircleAvatar(
              child: Icon(Icons.person_outline),
            ),
            title: Text("Australia Open"),
            // subtitle: Text("ATP"),
            trailing: SizedBox(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("1", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                    Text("17"),
                  ],
                )
            ),
          ),

          Divider(),

          ListTile(
            dense:true,

            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
            contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
            leading: CircleAvatar(
              child: Icon(Icons.person_outline),
            ),
            title: Text("Australia Open"),
            // subtitle: Text("ATP"),
            trailing: SizedBox(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("1", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                    Text("17"),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
