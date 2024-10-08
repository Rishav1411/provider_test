import 'package:flutter/material.dart';
import 'package:new_app/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({
    super.key,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: ((context, numberListProvider, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numberListProvider.add();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(),
          body: SizedBox(
            child: Column(
              children: [
                Text(
                  numberListProvider.numbers.last.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numberListProvider.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          numberListProvider.numbers[index].toString(),
                          style: const TextStyle(fontSize: 30),
                        );
                      }),
                )
              ],
            ),
          ))),
    );
  }
}
