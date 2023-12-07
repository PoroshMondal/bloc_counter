import 'package:bloc_counter/counterTwo/Utils/utils.dart';
import 'package:bloc_counter/counterTwo/counter_cubit_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPageWithConsumer extends StatelessWidget {
  const CounterPageWithConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubitTwo>(
      create: (context) => CounterCubitTwo(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter with Cubit"),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pushed the button this many times: ", style: Theme.of(context).textTheme.labelLarge,),
              const SizedBox(height: 5,),
              BlocConsumer<CounterCubitTwo, CounterState>(
                listener: (context, state) {
                  if (state.wasIncremented) {
                    Utils.mySnackBar(context, "Incremented");
                  } else {
                    Utils.mySnackBar(context, "Decremented");
                  }
                },

                builder: (context, state) {
                  int value = state.counterValue;
                  String txtData = "";
                  if (value < 0) {
                    txtData = "Negative COUNTER VALUE: ${value.toString()}";
                  } else if (value == 0) {
                    txtData = "COUNTER VALUE: ${value.toString()}";
                  } else {
                    txtData = "Positive COUNTER VALUE: ${value.toString()}";
                  }
                  //return Text("COUNTER VALUE: ${state.counterValue.toString()}", style: Theme.of(context).textTheme.headlineMedium,);
                  return Text(txtData, style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,);
                },
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      //BlocProvider.of<CounterCubitTwo>(context).decrement();
                      context.read<CounterCubitTwo>().decrement();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),

                  const SizedBox(height: 0, width: 10,),

                  FloatingActionButton(
                    onPressed: (){
                      context.read<CounterCubitTwo>().increment();
                    },
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ),
      );
  }
}

