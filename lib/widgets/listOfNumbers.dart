import 'package:flutter/material.dart';
import 'package:phoneBook/widgets/listItem.dart';
import '../models/phoneNumber.dart';

class ListOfNumbers extends StatefulWidget {
  _ListOfNumbersState createState() => _ListOfNumbersState();
}

class _ListOfNumbersState extends State<ListOfNumbers> {
  List<PhoneNumber> _listOfPhoneNumber = [
    PhoneNumber(name: 'Himanshu', number: '6354665097'),
    PhoneNumber(name: 'Ronil', number: '9723729229'),
    PhoneNumber(name: 'Ridham', number: '8125497825'),
    PhoneNumber(name: 'Kanubhai', number: '9429336956'),
    PhoneNumber(name: 'RekhaBen', number: '8523452136'),
    PhoneNumber(name: 'Sreyash', number: '7069913061'),
    PhoneNumber(name: 'Aashay', number: '9429336957'),
    PhoneNumber(name: 'Keval', number: '8540202450'),
    PhoneNumber(name: 'John', number: '9979940602'),
    PhoneNumber(name: 'Helly', number: '9898596965'),
    PhoneNumber(name: 'Raghu', number: '9624729229'),
    PhoneNumber(name: 'Ajay', number: '8126354589'),
    PhoneNumber(name: 'Aakash', number: '7069913062'),
    PhoneNumber(name: 'AshwinBhai Mendapra ',number:'5234698025'),
  ];

  void _deletePhoneNumber(String name) {
    print("You are tryin to delete $name");
    for (int i = 0; i < _listOfPhoneNumber.length; i++) {
      if (_listOfPhoneNumber.elementAt(i).getName() == name) {
        setState(() {
          _listOfPhoneNumber.removeAt(i);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _listOfPhoneNumber.length,
        itemBuilder: (buildContext, index) {
          return ListItem(
            _listOfPhoneNumber[index].getName(),
            _listOfPhoneNumber[index].getNumber(),
            _deletePhoneNumber,
          );
        },
      ),
    );
  }
}
