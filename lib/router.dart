// loggedOut
// loggedIn

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'features/auth/scearns/loginScreen.dart';
import 'features/community/screen/add_mods_screen.dart';
import 'features/community/screen/community_screen.dart';
import 'features/community/screen/create_community_sccreen.dart';
import 'features/community/screen/edit_community_screen.dart';
import 'features/community/screen/mod_tools_screen.dart';
import 'features/home/screen/home_screen.dart';
import 'features/post/screen/add_post_type_screen.dart';
import 'features/user_profile/screens/edit_profile_screen.dart';
import 'features/user_profile/screens/user_profile_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});


final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  '/create-community': (_) => const MaterialPage(child: CreateCommunityScreen()),
  '/r/:name': (route) => MaterialPage(
    child: CommunityScreen(
      name: route.pathParameters['name']!,
    ),
  ),
  '/mod-tools/:name': (routeData) => MaterialPage(
    child: ModToolsScreen(
      name: routeData.pathParameters['name']!,
    ),
  ),
  '/edit-community/:name': (routeData) => MaterialPage(
    child: EditCommunityScreen(
      name: routeData.pathParameters['name']!,
    ),
  ),
  '/add-mods/:name': (routeData) => MaterialPage(
    child: AddModsScreen(
      name: routeData.pathParameters['name']!,
    ),
  ),
  '/u/:uid': (routeData) => MaterialPage(
    child: UserProfileScreen(
      uid: routeData.pathParameters['uid']!,
    ),
  ),
  '/edit-profile/:uid': (routeData) => MaterialPage(
    child: EditProfileScreen(
      uid: routeData.pathParameters['uid']!,
    ),
  ),
  '/add-post/:type': (routeData) => MaterialPage(
    child: AddPostTypeScreen(
      type: routeData.pathParameters['type']!,
    ),
  ),
  // '/post/:postId/comments': (route) => MaterialPage(
  //   child: CommentsScreen(
  //     postId: route.pathParameters['postId']!,
  //   ),
  // ),
  // '/add-post': (routeData) => const MaterialPage(
  //   child: AddPostScreen(),
  // ),
});

/*
final loggedInRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: HomeScreen()),
    '/create-community': (_) => const MaterialPage(child: CreateCommunityScreen()),
    '/r/:name': (route) => MaterialPage(
          child: CommunityScreen(
            name: route.pathParameters['name']!,
          ),
        ),
    '/mod-tools/:name': (routeData) => MaterialPage(
          child: ModToolsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/edit-community/:name': (routeData) => MaterialPage(
          child: EditCommunityScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/add-mods/:name': (routeData) => MaterialPage(
          child: AddModsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/u/:uid': (routeData) => MaterialPage(
          child: UserProfileScreen(
            uid: routeData.pathParameters['uid']!,
          ),
        ),
    '/edit-profile/:uid': (routeData) => MaterialPage(
          child: EditProfileScreen(
            uid: routeData.pathParameters['uid']!,
          ),
        ),
    '/add-post/:type': (routeData) => MaterialPage(
          child: AddPostTypeScreen(
            type: routeData.pathParameters['type']!,
          ),
        ),
    '/post/:postId/comments': (route) => MaterialPage(
          child: CommentsScreen(
            postId: route.pathParameters['postId']!,
          ),
        ),
    '/add-post': (routeData) => const MaterialPage(
          child: AddPostScreen(),
        ),
  },
);
*/
