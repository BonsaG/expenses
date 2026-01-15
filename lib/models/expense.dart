import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  drinks,
  leisure,
  work,
  other,
}
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.drinks: Icons.local_drink,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
  Category.other: Icons.shopping_bag,
};

class Expense{
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String getFormattedDate() {
    return formatter.format(date);
  }
} 