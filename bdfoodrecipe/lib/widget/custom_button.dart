import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? lebel;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color? color;
  const CustomButton({
    Key? key,
    this.lebel,
    this.icon,
    this.color,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
         color: color,
         child: InkWell(
           onTap: onTap,
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 8),
             child: Column(
               children: [
                 Icon(icon, color: Colors.white, size: 32,),
                 Text(lebel!, style: TextStyle(color: Colors.white, fontSize: 20),)
               ],
             ),
           ),
         ),
       ),
    );
  }
}