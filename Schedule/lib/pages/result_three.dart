import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/expansion_pannel_demo.dart';
import 'package:schedule/pages/three.dart';

class ResultThree extends StatefulWidget {
  @override
  _ResultThree createState() => _ResultThree();
}

class _ResultThree extends State<ResultThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScheduleCounter'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true ,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(milliseconds: 1000),

              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[


                        Text(
                          itemData[index].discription,

                          style: TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(

                        itemData[index].headerItem,

                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,

                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: '1 ????????: $first_double',
      discription:'''
            1 ????????: $first_lesson
            ??????????????????????: $first_short_break_s - $first_short_break_e
            2 ????????: $second_lesson
            ''',


    ),
    ItemModel(
      headerItem: '????????????????: $breaks',
      discription:'''10 ??????????
            ''',


    ),
    ItemModel(
      headerItem: '2 ????????: $second_double',
      discription:'''
            1 ????????: $third_lesson
            ??????????????????????: $second_short_break_s - $second_short_break_e
            2 ????????: $forth_lesson
            ''',


    ),
    ItemModel(
      headerItem: '????????: $lunch',
      discription:'''?????????? ???????????? ????????????????
            ''',


    ),
    ItemModel(
      headerItem: '3 ????????: $third_double',
      discription:'''
            1 ????????: $fifth_lesson
            ??????????????????????: $third_short_break_s - $third_short_break_e
            2 ????????: $sixth_lesson
            ''',


    ),

  ];
}