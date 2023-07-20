import 'package:bloc/bloc.dart';

class NavigationBarIndexCubit extends Cubit<int> {
  NavigationBarIndexCubit() : super(0);

  changeIndex(int index) {
    emit(index);
  }
}
