import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  void _addExpense() {
    print('Add expense...');
    showModalBottomSheet(
      context: context, 
      builder: (ctx) => const Text('This is a modal sheet'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _addExpense,
            icon: const Icon(Icons.add),
          ),
        ],
      ),  
      body: Column(
        children:[
             // toolbar with the add button => Row()
                const Text('The chart'),
                Expanded(child: ExpensesList(expenses: _registeredExpenses))
              ],
            ),
          );
      
  }
}  