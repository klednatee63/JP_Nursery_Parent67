import 'package:flutter/material.dart';

class ParentDetailsScreen extends StatelessWidget {
  static const routeName = '/parent_details_screen';

  //get parentName => null;

  //get parentPhone => null;

/*   const ParentDetailsScreen({
    super.key,
  }); */

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final parentName = args['parentName']!;
    final parentPhone = args['parentPhone']!;
    final parentImage = args['parentImage']!;
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดผู้ปกครอง'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ชื่อผู้ปกครอง: $parentName',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 10),
            Text(
              'เบอร์มือถือ: $parentPhone',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: Image.asset(
                parentImage,
                fit: BoxFit.cover,
              ),
            ),
            // สามารถเพิ่มข้อมูลเพิ่มเติมของผู้ปกครองที่นี่ได้
          ],
        ),
      ),
    );
  }
}
