import 'package:akbar_al_youm_app/mobile_app/core/style/numbers/app_default_numbers.dart';
import 'package:flutter/material.dart';

class WidgetsDefaultComponents {
//  Text :
  static Widget text({text,context , fontSize}) => Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          fontSize: fontSize ,
        ),
      );

  static  appBar(context) => AppBar(
    title: Padding(
      padding:  const EdgeInsetsDirectional.only(
        top: 20.0 ,
        start: 10.0 ,
        end: 10.0 ,
      ),
      child: Row(
        children: [
          const CircleAvatar() ,
          const SizedBox(
            width: defaultWidth,
          ) ,
          WidgetsDefaultComponents.text(
              text: 'Akbar Al Youm ',
              context: context,
              fontSize: 15.0),
        ],
      ),
    ),
    actions:  [
      IconButton(
        onPressed: (){},
        icon: const Icon(
            Icons.notifications_active_outlined
        ),
      ) ,
    ],
  ) ;
}
