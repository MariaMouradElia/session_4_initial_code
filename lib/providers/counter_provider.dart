import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  void increment(){
    counter++;
    notifyListeners(); /// inherited method mn ChangeNotifier ely fo2,
  }
}
/// NOTES:
/// 1. howa provider wa7ed feh counter wa7ed, wel 2 screens hayro7o ye2ro meno
/// 2. ChangeNotifier da 7aa gowa flutter
/// 3. fa keda lama ndoos 3ala increment button f ay screen, n5aleh ycall el fnction el fel screen dy,
///    w ba3daha el provider's funct lama t5alas, t call kol el listeners (consumers) el fel widget tree 3shan ye get updated

/// NEXT STEP: 3ayzeen n attach instance mn el provider da lel widget tree 3shan n3raf nroo7 ne2ra meno
///            => so, ha wrap el MaterialApp fe widget esmaha MultiProvider() (multi 3shan law 7abet asta5dem kaza provider)
///            => MultiProvider() -> required providers: [] w 7oty el providers bto3ek hena
///            => ba3daha harag3 el screens le stateless widgets 3ady