import 'package:flutter/material.dart';
import 'package:yagmur/core/constants/color_constants.dart';

class AppBarWithTabBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Color backgroundColor;
  final bool titleStyle;
  final TextStyle? textFonts;
  final TabBar tabBar;

  const AppBarWithTabBar({
    super.key,
    this.titleStyle = false,
    this.actions,
    this.centerTitle = false,
    this.leading,
    this.title,
    this.backgroundColor = Colors.transparent,
    this.textFonts,
    required this.tabBar,
  });

  @override
  _AppBarWithTabBarState createState() => _AppBarWithTabBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _AppBarWithTabBarState extends State<AppBarWithTabBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.leading,
      backgroundColor: widget.backgroundColor,
      elevation: 0,
      title: Text(
        widget.title ?? '',
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: ColorConstants.titleColor, fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      ),
      centerTitle: widget.centerTitle,
      actions: widget.actions,
      bottom: widget.tabBar, // TabBar'ı bottom'a ekliyoruz
    );
  }
}
