import 'package:akbar_al_youm_app/mobile_app/core/style/numbers/app_default_numbers.dart';
import 'package:akbar_al_youm_app/mobile_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:flutter/material.dart';

class StatesScreen extends StatefulWidget {
  const StatesScreen({super.key});

  @override
  State<StatesScreen> createState() => _StatesScreenState();
}

class _StatesScreenState extends State<StatesScreen> {
  @override
  Widget build(BuildContext context) {
    bool isTaped = false;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppNumbers.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultComponents.elevatedButton(
                  onPressed: () {
                    setState(() {
                      isTaped = !isTaped ;
                    });
                  },
                ),
                // DefaultComponents.elevatedButton(),
                DefaultComponents.elevatedButton(),
              ],
            ),
            const SizedBox(
              height: AppNumbers.defaultHight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // DefaultComponents.elevatedButton(),
                DefaultComponents.elevatedButton(),
                DefaultComponents.elevatedButton(),
              ],
            ),
            const Spacer(),
            if(isTaped == true)
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
