import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4_code/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  // final int counter;
  // final void Function() onIncrement;

  const SecondScreen({
    super.key,
    // required this.counter,
    // required this.onIncrement
  });

  // int _counter = 0 ;
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, CounterProvider,_) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("push to increment",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: CounterProvider.increment, /// bas function definition

                        // () {
                    //   setState(() {
                    //     _counter++;
                    //   });
                    //   widget.onIncrement();
                  // },
                    child: Text('${CounterProvider.counter}'
                        // '$_counter'
                        )),
                SizedBox(width: 20),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(
                          // _counter
                      );
                  },
                    child: Text('Go Back !')),

              ],
            ),
          ),
        );
      }
    );
  }
}
