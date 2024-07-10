import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(2); // Start with 'news' tab

  void selectTab(int index) => emit(index);
}
