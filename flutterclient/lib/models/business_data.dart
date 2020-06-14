import 'package:flutter/material.dart';

class BusinessData{
  String phoneNum;
  String amount;
  String id;
  String customerName;

  BusinessData({this.phoneNum, this.amount, this.id, this.customerName});
}

List<BusinessData> businesses = [
  BusinessData(
      phoneNum: "XXXXXX123",
      amount: "\$258",
      id:"1",
      customerName: "Aditya"
  ),
  BusinessData(
      phoneNum: "XXXXXX456",
      amount: "\$2400",
      id:"2",
      customerName: "Raj"
  ),
  BusinessData(
      phoneNum: "XXXXXX191",
      amount: "\$458",
      id:"3",
      customerName: "John"
  ),
  BusinessData(
      phoneNum: "XXXXXX120",
      amount: "\$100",
      id:"4",
      customerName: "Smith"
  ),
  BusinessData(
      phoneNum: "XXXXXX567",
      amount: "\$400",
      id:"5",
      customerName: "Tom"
  ),
  BusinessData(
      phoneNum: "XXXXXX456",
      amount: "\$1200",
      id:"6",
      customerName: "Sam"
  )
];