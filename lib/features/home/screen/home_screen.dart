import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/constants.dart';
import '../../../theme/pallete.dart';
import '../../auth/controller/auth_controller.dart';
import '../delegates/search_community_screen.dart';
import '../drawers/community_list_drawer.dart';
import '../drawers/profile_drawer.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override

  int _page = 0 ;

  void displayDrawer (BuildContext context)
  {
    Scaffold.of(context).openDrawer();
  }

  void displayEndDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

  void onPageChange (int page)
  {
    setState(() {
      _page = page ;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider)!;
    final currentTheme = ref.watch(themeNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () =>displayDrawer(context),
                icon: const Icon(Icons.menu),
              );
            }
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchCommunityDelegate(ref));

            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(user.profilePic),
            ),
            onPressed: () => displayEndDrawer(context),

          )
        ],

      ),
      drawer: const CommunityListDrawer(),
      endDrawer: const ProfileDrawer(),
      bottomNavigationBar: CupertinoTabBar(
        activeColor: currentTheme.iconTheme.color,
        backgroundColor: currentTheme.backgroundColor,
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.home) , tooltip: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add) , tooltip: ''),
        ],
        onTap: onPageChange,
        currentIndex: _page,
      ),
      body: Constants.tabWidgets[_page],
    );
  }
}

