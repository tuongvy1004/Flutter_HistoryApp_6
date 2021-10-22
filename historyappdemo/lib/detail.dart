// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:flutter/material.dart';
import 'package:historyappdemo/shared/listitem.dart';

class DetailsScreen extends StatelessWidget {
  final String tag;
  final ListItem item;
  DetailsScreen({Key key, @required this.item, @required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: '${item.newsTitle}',
                    child: Image.network(item.imgUrl),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Text(
                            item.newsTitle,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite_border_outlined),
                              Text(
                                item.author,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(Icons.date_range),
                              Text(
                                item.date,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0,),
                          Text(
                            lipsum.createParagraph(numParagraphs: 3),
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                  )
                  
                ],
                
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,

                )
              ),
            )
          ],
        ),
      ),
    );
  }
}