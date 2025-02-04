import 'package:clean_architecture/core/utils/app_router.dart';
import 'package:clean_architecture/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Padding(
  padding: const EdgeInsets.only(
      left: 24.0, top: 30,right: 24,bottom: 20
  ),
  child: Row(
  children:[
  Image.asset(
  AssetsData.logo,
  height: 18,
  ),
  const Spacer(),
  IconButton(
    onPressed: ()
  {
    GoRouter.of(context).push(AppRouter.kSearchView);
  },
  icon:const Icon(FontAwesomeIcons.magnifyingGlass,
  size: 23,
    color: Colors.white,
  ),
  ),
  ],
  ),
  );
  }
  }
