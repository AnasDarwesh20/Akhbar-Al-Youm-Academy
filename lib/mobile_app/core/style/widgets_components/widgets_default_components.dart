import 'package:akbar_al_youm_app/mobile_app/core/style/numbers/app_default_numbers.dart';
import 'package:flutter/material.dart';

class DefaultComponents {
//  Text :
  static Widget text({text, context, fontSize}) =>
      Text(
        text,
        style: Theme
            .of(context)
            .textTheme
            .labelSmall
            ?.copyWith(
          fontSize: fontSize,
        ),
      );

  static appBar(context) =>
      AppBar(
        title: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 20.0,
            start: 10.0,
            end: 10.0,
          ),
          child: Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: AppNumbers.defaultWidth,
              ),
              DefaultComponents.text(
                  text: 'Akbar Al Youm ',
                  context: context,
                  fontSize: 15.0),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
                Icons.notifications_active_outlined
            ),
          ),
        ],
      );

  static Widget defaultFormField({
    required TextInputType textInputType,
    @required dynamic function,
    dynamic onTap,
    required IconData prefixIcon,
    required TextEditingController controller,
    required String lable,
    bool isBorder = true,
    var onSubmit,
    dynamic postTap,
    bool isPasswordShown = false,
    IconButton? suffixIcon,
  }) =>
      TextFormField(
        onFieldSubmitted: onSubmit,
        controller: controller,
        obscureText: isPasswordShown,
        decoration: InputDecoration(
          labelText: lable,
          fillColor: Colors.black,
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: suffixIcon,
          ),
          border: OutlineInputBorder(),
        ),
        validator: function,
      );


  static Widget butomn({
    double width = double.infinity,
    Color background = Colors.blue,
    required String text,
    bool isUpper = true,
    double radius = 15.0,
    final VoidCallback? function,
  }) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: background,
        ),
        width: width,
        child: MaterialButton(
          onPressed: function,
          child: Text(
            isUpper ? text.toUpperCase() : text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );


  static Widget elevatedButton({
    onPressed ,
}) =>
      Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: onPressed,
          style: const ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(),
            ),
            fixedSize: MaterialStatePropertyAll(Size.fromHeight(50.0)) ,

          ),
          child: const Text(
            'Math',
          ),
        ),
      ) ;

}
