import 'package:flutter/material.dart';

import 'constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloading
              ?const SizedBox(
                height: 24,
                width: 24,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
              : const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
