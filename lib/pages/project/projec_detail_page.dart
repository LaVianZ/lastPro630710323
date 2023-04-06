import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = TextStyle(fontSize: 23, color: Colors.black);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          project.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        project.ans,
                        style: TextStyle(fontSize: 30.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Image.asset(project.imageURLIn,fit: BoxFit.cover,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text("       "+project.fullDescription,overflow: TextOverflow.fade,style: myTextStyle,)),
                          ],
                        ),
                        SizedBox(height: 8.0),

                        SizedBox(height: 8.0),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  child:Padding(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 8.0),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(decoration: BoxDecoration(border:BorderDirectional(top:BorderSide(width: 1.0, color: Colors.grey), ),),

                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('แชร์ให้เพื่อน'),
                                                  ],
                                                ),
                                                SizedBox(height: 20.0,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Container(child: FloatingActionButton(
                                                        child: FaIcon(FontAwesomeIcons.line),
                                                        backgroundColor: Colors.green,
                                                        foregroundColor: Colors.white,
                                                        onPressed: () {},
                                                      ),),
                                                    ),
                                                    SizedBox(width: 80.0,),
                                                    Container(
                                                      child: Container(child: FloatingActionButton(
                                                        child: FaIcon(FontAwesomeIcons.facebook),
                                                        backgroundColor: Colors.blue,
                                                        foregroundColor: Colors.white,
                                                        onPressed: () {},
                                                      ),),
                                                    ),
                                                    SizedBox(width: 80.0,),
                                                    Container(child: FloatingActionButton(
                                                      child: FaIcon(FontAwesomeIcons.twitter),
                                                      backgroundColor: Colors.lightBlueAccent,
                                                      foregroundColor: Colors.white,
                                                      onPressed: () {},
                                                    ),),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
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
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
