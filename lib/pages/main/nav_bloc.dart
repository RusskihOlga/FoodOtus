import 'package:bloc/bloc.dart';
import 'package:food_otus/domain/repositories/user_repository.dart';

part 'nav_event.dart';

part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  final UserRepository repository;

  NavBloc({required this.repository})
      : super(ChangePage(index: 0, isAuth: false)) {
    on<NavigatorEvent>(_navigator);
    on<ChangeAuth>(_changeAuth);
    on<GetStatusAuth>(_getAuth);
  }

  _navigator(NavigatorEvent event, Emitter<NavState> emit) {
    var isAuth = repository.isAuth();
    emit(ChangePage(index: event.newIndex, isAuth: isAuth));
  }

  _getAuth(GetStatusAuth event, Emitter<NavState> emit) {
    var isAuth = repository.isAuth();
    if (event.isInit) {
      emit(ChangePage(index: 0, isAuth: isAuth));
    } else {
      emit(ShowAuth(isAuth));
    }
  }

  _changeAuth(ChangeAuth event, Emitter<NavState> emit) {
    emit(ChangePage(index: 0, isAuth: true));
  }
}
