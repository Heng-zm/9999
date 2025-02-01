import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final double size;

  const MenuButton({ Key? key, required this.icon, required this.label, this.size = 48,}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0D47A1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            this.icon,
            color: Colors.white,
            size: 48,
          ),
          Text(
            this.label,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
