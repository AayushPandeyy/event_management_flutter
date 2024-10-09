import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.purple.shade50),
        child: Column(
          children: [
            // Top Image and date
            Container(
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://img1.wsimg.com/isteam/ip/f0aab853-7989-4cbe-aba2-8d8716c12e30/IMG_20230116_175657_920.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25")),
                // color: Colors.purple.shade50,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
            ),
            // Event title and location
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '5th July, 2020',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    'Birthday Event',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.purple,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Stanislaus, California',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Profile images

                      Text("50+ people interested"),
                      // Interested button
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.purple.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          // Add action here
                        },
                        child: Text(
                          'Interested',
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
