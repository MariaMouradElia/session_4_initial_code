import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:session_4_code/providers/counter_provider.dart';
import 'package:session_4_code/screens/first_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()), /// kol provider ha3melo instance mn ChangeNotifierProvider(), fe create
                                                                        /// callback, ha return el instance dy bta3t e provider el ana 3amalto b 2eedy da
      ],
      child: const SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FirstScreen(),
        ),
      ),
    );
      // MultiProvider(
      // provide
      // child: const MaterialApp(
      //
      //   home: FirstScreen(),
      // ),
    // );
  }
}

/// STATE MANAGEMENT
/// Life Cycle Methods (innit, pose,...)
///     innit => bet called mara wa7da bas! awel mal widget tet3amal awel mara 5ales, w ay rebuild ba3daha mesh byet3amalaha call


/// ----------------------------------------------------


/// note: lama a3od azawed pages fel stack, el pages el ta7t 5ales byet3emelaha dispose (7arfeyan bte5tefy)
///        => 3shan keda lama t7awly b3d keda ta3mely setState() le page et3amalaha dispose, betedy exception (red screen 3aleha kalam)
///          =>> fa el 7al (5sosan lama el pages el betbasy le ba3d variables, yektaro awy) eny asheel el state mn kol el pages,
///              dol wa7otaha f 7ta tanya 5ales (w da 7al le moshkela mashhora esmaha "state management") =>(4 COMMON SOLUTIONS TO STATE MANAGEMENT:)
///                                                                                                 1. Provider,
///                                                                                                 2. Cupid's Pod, "mo3zam el nas btesta3melo"
///                                                                                                 3.RiverPod,
///                                                                                                 4.Neffex        "package kbera gedan w ew3y testa3meleha"
///             [DOL packages]
///
/// 1. Provider: da 3bara 3n class badeeh el data (ya3ny ma3ah el state) fa keda ay 7ad ye2dar yroo7 ye2ra menaha
///              -> fadel en ana a3raf a update kol widget f kol page (howa bardo bye2dar y handle el mwdoo3 da)
///              ex: ya3ny ana lw 3ndy 2 providers, haro7 le kol page (el enta 7abeb el provider y get read menha lama el data tet8ayar) hat markaha 3shan teb2a esmaha consumer (mn providers 1 we 2)


/// NOTE:
///  1) kol el providers byeb2o attached ka list lel material epp beta3y, ba2ra menhom ezay? => kol widget me7taga te2ra el state,
///                                                                                               btetla3 fel widget tree, le7ad matla2y el provider el heya me7tagah

///  2) el providers, lama yeb2o 3ayzeen ya3melo setState(){}, bey traverso el widget tree kolaha, w ydawaro 3ala kol consumer, w y3melohom setState(){}



/// ----------------------------------------------------


/// 2olna enohom packages (including el providers, fa):
///                                    1. hanroo7 3ala pub.dev ne search 3al packages
///                                    2. search for Provider => hayetla3leck package 3aleha "Flutter Favourite" badge
///                                    (fa keda el gama3a bto3 flutter bey2olo enaha mawsook feha w implementation bta3ha ndeef)
///                                    3. copy esmaha mn fo2
///                                    4. open terminal => flutter pub add provider
///                                    5. a3mel directory gdeda leha 3laka bel state management (noaman dayman beysameha providers)