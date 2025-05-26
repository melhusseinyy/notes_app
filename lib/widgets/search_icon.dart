import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key, required this.icon, this.onPressed});
final IconData icon;
final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: .05)
      ),
      child: IconButton(
       icon:  Icon(icon,
        color:Colors.white,
        size: 30,), onPressed: onPressed,
      ),

    );
  }
}