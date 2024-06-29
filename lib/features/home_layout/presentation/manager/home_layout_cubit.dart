import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationTab { matchChats, tables, news, matchCalendar, store }

class NavigationCubit extends Cubit<NavigationTab> {
  NavigationCubit() : super(NavigationTab.news); // Start with 'tables' tab

  void selectTab(NavigationTab tab) => emit(tab);
}
