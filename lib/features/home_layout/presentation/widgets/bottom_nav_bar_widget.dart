import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/home_layout_cubit.dart';

class NavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationTab>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.blueGrey,
          currentIndex: NavigationTab.values.indexOf(state),
          onTap: (index) => context
              .read<NavigationCubit>()
              .selectTab(NavigationTab.values[index]),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_chart), label: 'Tables'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: 'Match Calendar'),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
          ],
        );
      },
    );
  }
}
