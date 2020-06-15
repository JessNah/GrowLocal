import 'package:flutter/material.dart';

class BusinessData{
  String phoneNum;
  String amount;
  String id;
  String customerName;
  String dealR;

  BusinessData({this.phoneNum, this.amount, this.id, this.customerName,this.dealR});
}

List<BusinessData> businesses = [
  BusinessData(
      phoneNum: "XXXXXX123",
      amount: "\$258",
      id:"1",
      customerName: "Aditya",
      dealR: "\nOffer 5% off on baby products"
  ),
  BusinessData(
      phoneNum: "XXXXXX456",
      amount: "\$2400",
      id:"2",
      customerName: "Raj",
      dealR: "\nOffer 5% off on cleaning products"
  ),
  BusinessData(
      phoneNum: "XXXXXX191",
      amount: "\$458",
      id:"3",
      customerName: "John",
      dealR: "\nOffer 2x reward points on cooking oil"

  ),
  BusinessData(
      phoneNum: "XXXXXX120",
      amount: "\$100",
      id:"4",
      customerName: "Smith",
      dealR: "\nOffer 5% off on honey"
  ),
  BusinessData(
      phoneNum: "XXXXXX567",
      amount: "\$400",
      id:"5",
      customerName: "Tom",
      dealR: "\nOffer 10% off on bhuja mix"
  ),
  BusinessData(
      phoneNum: "XXXXXX456",
      amount: "\$1200",
      id:"6",
      customerName: "Sam",
      dealR: "\nOffer 3x points on sweets"
  )
];