import 'package:flutter/material.dart';

class FlightBookButton extends StatelessWidget {
  const FlightBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bookFlight(context);
      },
      child: Text(
        'Book Your Flight',
        style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Flight Booked Successfully'),
      content: Text('Have a pleasant flight'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.refresh),
          iconSize: 50.0,
          color: Colors.amber,
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
