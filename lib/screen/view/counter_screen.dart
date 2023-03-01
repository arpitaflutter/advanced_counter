import 'package:advanced_counter/screen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class counter_screen extends StatefulWidget {
  const counter_screen({Key? key}) : super(key: key);

  @override
  State<counter_screen> createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<counter_provider>(
              builder: (context, value, child) => Text("${value.i}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<counter_provider>(context,listen: false).increment();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20,),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<counter_provider>(context,listen: false).decrement();
                  },
                  child: Text("-"),
                ),
                SizedBox(width: 20,),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<counter_provider>(context,listen: false).two_x();
                  },
                  child:  Text("2x"),
                ),
                SizedBox(width: 20,),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<counter_provider>(context,listen: false).three_x();
                  },
                  child:  Text("3x"),
                ),
                SizedBox(width: 20,),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<counter_provider>(context,listen: false).four_x();
                  },
                  child: Text("4x"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
