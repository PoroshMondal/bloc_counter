import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {

  // It will observe all the changes
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}