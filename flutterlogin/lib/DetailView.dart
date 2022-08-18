import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String title, description, image, stadium, descriptionStadium;
  DetailPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.stadium,
      required this.descriptionStadium})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 186, 118, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(widget.image),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.description,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  widget.stadium,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                widget.descriptionStadium,
                style: TextStyle(
                  fontSize: 17,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
