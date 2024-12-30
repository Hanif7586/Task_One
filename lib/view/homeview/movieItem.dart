import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String? subtitle;
  final double? width;  // New parameter to specify width
  final double progress;  // Progress value

  MovieItem(
      this.title,
      this.imageUrl, {
        this.subtitle,
        this.width,
        this.progress = 0.0,  // Default progress value (0 means no progress)
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie image
          Image.asset(
            imageUrl,
            width: width ?? 100,  // Default width is 100 if not specified
            fit: BoxFit.cover,  // Optional: to control how the image scales
          ),
          SizedBox(height: 8),

          // Movie title
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),

          // Subtitle (if provided)
          if (subtitle != null)
            Text(
              subtitle!,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),

          // Show progress bar only if progress is greater than 0
          if (progress > 0 && progress < 1) ...[
            SizedBox(height: 8),  // Add some space between the subtitle and progress bar
            Container(
              width: width ?? 100,  // Same width as the image, or 100 if not specified
              child: LinearProgressIndicator(
                value: progress,  // Progress value between 0 and 1
                backgroundColor: Colors.grey[700],  // Background color of the progress bar
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF3440)),  // Progress bar color
              ),
            ),
          ],
        ],
      ),
    );
  }
}
