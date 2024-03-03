import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4_code/providers/counter_provider.dart';
import 'package:session_4_code/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  // final int counter;
  const FirstScreen({super.key,
  // required this.counter
  });

  // int _counter = 0 ;
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>( ///bta5od generic type, ya3ny consumer of ..? => in our case consumer of counter providers
                                      ///   => ba3daha 3ayzeen ba2a n7ot el widget tree bta3ena el haya3melaha update w hakaza
                                      /// NOTE: el consumer msh bya5od child howa bya5od builder zay msalan el listView.builder wel 7agat dy
      builder: (context, CounterProvider, _) { /// law feh attribute msh hasta5demo f call back function, ha7oto b _
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
                    ),
                  ),

                  SizedBox(width: 20),

                  ElevatedButton(onPressed: CounterProvider.increment,

                      // () {
                      // setState(() {
                    //   _counter++;
                    // });
                    // },

                      child: Text('${CounterProvider.counter}'
                    // '$_counter'
                  )
                  ),
                  SizedBox(height: 45),
                  const Text("Go To Screen 2",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: ()
                    // async
                    {
                      // _counter = await

                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SecondScreen(
                      //     counter: _counter,
                      //     onIncrement: () {
                      //       setState(() {
                      //         _counter++;
                      //       });
                      //     },
                      //   )
                      //   ),
                      ),
                        )
                      );

                      // setState(() {});
                    },
                    child: const Text("Let's go!"),
                  )

                ],
              ),
            ),
          );
      }
    );
  }
}
