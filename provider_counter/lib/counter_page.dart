import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_state.dart'; // Import the CounterState class

class CounterPage extends StatelessWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter using Provider"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterState>(
              builder: (context, counterState, child) {
                return Text(
                  '${counterState.counter}',
                  style: Theme.of(context).textTheme.headline6,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterState>(context, listen: false).increment();
            },
            tooltip: 'Increment',
            backgroundColor: Colors.orange,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterState>(context, listen: false).decrement();
            },
            tooltip: 'Decrement',
            backgroundColor: Colors.orange,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
