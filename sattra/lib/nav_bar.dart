import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = MediaQuery.of(context).size.width;

        double maxWidth = screenWidth >= 600 ? 180 : 56;

        return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 50,
            maxWidth: maxWidth,
          ),
          child: Container(
            color: Colors.deepPurpleAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                const SizedBox(height: 8),
                _buildNavItem(Icons.home, "Home", maxWidth),
                const SizedBox(height: 8),
                _buildNavItem(Icons.people, "Patients", maxWidth),
                const SizedBox(height: 8),
                _buildNavItem(Icons.medication, "Medication", maxWidth),
                const Spacer(),
                _buildNavItem(Icons.settings, "Settings", maxWidth),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem(IconData icon, String title, double maxWidth) {
    final textSpan = TextSpan(
      text: title ?? '',
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      maxLines: 1,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    final titleWidth = textPainter.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          if (maxWidth >= titleWidth + 16 + 8) ...[
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}
