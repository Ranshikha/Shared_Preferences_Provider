import 'package:baseapp/core/notifers/cache.notifier.dart';
import 'package:baseapp/meta/views/login_view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  /*To Increse the counter need the snipppet instance*/

  // int counter = 0;
  // void increment() {
  //   setState(() {
  //     counter++;
  //   });
  //   print(counter);
  // }

  // void decrement() {
  //   setState(() {
  //     counter--;
  //   });
  //   print(counter);
  // }

  @override
  Widget build(BuildContext context) {
    /*To Increse the counter need the snipppet instance
    listen : true => Rendering the UI
    listen:false => Reading the UI 
    **Here Given the instance of pprovider value which is listening to its value
    */

    // var _counterNotifer = Provider.of<CounterNotifer>(context, listen: false);
    var _cacheNotifer = Provider.of<CacheNotifer>(context, listen: false);
    return Scaffold(
      //Day 1: Basics
      // drawer: Drawer(
      //     child: Column(
      //   children: [
      //     MaterialButton(
      //       onPressed: () {},
      //       child: Text("Button1"),
      //     ),
      //     MaterialButton(
      //       onPressed: () {},
      //       child: Text("Button2"),
      //     ),
      //   ],
      // )),
      appBar: AppBar(
        title: Text("Home View"),
      ),
      body: Center(
        child: MaterialButton(
            color: Colors.blue,
            child: Text("Log out"),
            onPressed: () {
              /*How to logOut from the homeScreen so that credenitail must removed */
              _cacheNotifer.deleteCache(key: "login").whenComplete(() {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginView()));
              });
            }),
      ),
//Day2: Counter App
      // appBar: AppBar(
      //   title: Text("Counter App"),
      // ),
      // body: Container(
      //   child: Center(
      //     child:
      //         /*Consumer will be taking the type of consumer which is changeNotifer itself
      //       requried parameter Consumer is builder which will taking value Context,value,child
      //        */
      //         Consumer<CounterNotifer>(builder: (context, notifier, _) {
      //       /*Consumer(it is for consuming the data of getter that is counter ) is taking a Explicit type of CounterNotifer
      //       Builder is used for rendering the data,
      //        Context means to refer the particular View in which I want to rendering the data
      //           Example: Context is id of homeview,notifer the instance of counterNotifer, EmptyValue for the child */
      //       return Text(notifier.counter.toString(),
      //           /*Conter is the member of the CounterMethod As Counter is int type so used toString to change into the string */ style:
      //               TextStyle(fontSize: 20));
      //     }),
      //     // Text("$counter", style: TextStyle(fontSize: 30))
      //   ),
      // ),
      //Day2: Counter App
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () => _counterNotifer.increament(),
      // ),
      /*BottomNavigationBar has more properties than BottomAppBar
        BottomAppBar is used for Costumized BottomNavigation Bar*/
      // bottomNavigationBar: BottomAppBar(
      //     child: Container(
      //   width: 400,
      //   height: 50,
      //   color: Colors.blue,
      // )),
//         floatingActionButton: Container(
//           width: 100,
//           height: 100,
// /*For Overflow condition we use physics under 'ListView' */
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             physics: ClampingScrollPhysics(),
//             // Column(
//             //   mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               FloatingActionButton(
//                 child: Icon(Icons.add),
//                 onPressed: increment,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               FloatingActionButton(
//                 child: Icon(Icons.remove),
//                 onPressed: decrement,
//               ),
//             ],
//           ),
      // ),
      // bottomNavigationBar:
      //     BottomNavigationBar(backgroundColor: Colors.amber.shade50, items: [
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.access_time_filled_outlined), label: "Home"),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.access_time_filled_outlined), label: "Home"),
      // ]),
    );
  }
}
