import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/assets.dart';

class CustomErrorWidget extends StatelessWidget {
  final Function() reload;
  final String errorTitle;
  final bool showReloadButton;

  const CustomErrorWidget(
      {Key? key,
      required this.reload,
      required this.errorTitle,
      this.showReloadButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(dartLogo),
        Text(errorTitle),
        showReloadButton
            ? IconButton(onPressed: reload, icon: const Icon(Icons.refresh))
            : const SizedBox()
      ],
    );
  }
}

class IndividualError extends StatelessWidget {
  final String errorTitle;
  final Function() reload;
  final double? height;
  final double? width;

  const IndividualError(
      {Key? key,
      required this.errorTitle,
      required this.reload,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: reload,
      child: Card(
        // height:height?? MediaQuery.of(context).size.height*0.20,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.10,
                  dartLogo,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(errorTitle),
              ],
            ),
            IconButton(onPressed: reload, icon: const Icon(Icons.refresh))
          ],
        ),
      ),
    );
  }
}
