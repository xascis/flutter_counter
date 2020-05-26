import 'package:bloc/bloc.dart';
import 'package:counter/features/bloc/home_event.dart';
import 'package:counter/features/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => HomeState(0);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is IncreaseCounter) yield* _increaseCounter(event);
    if (event is DecreaseCounter) yield* _decreaseCounter(event);
  }

  Stream<HomeState> _increaseCounter(IncreaseCounter event) async* {
    yield HomeState(state.counter + 1);
  }

  Stream<HomeState> _decreaseCounter(DecreaseCounter event) async* {
    yield HomeState(state.counter - 1);
  }
}
