import 'package:flutter/material.dart';
import 'package:uprava/page/const.dart';
import 'package:uprava/theme/app-colors.dart';

class ZakonCarPanelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListCar(
                textN: kStopName,
                textT: kStopTitle,
                textS: kAvailableSubtitle,
                iconsN: Icons.local_police,
              ),
              ListCarFull(
                textN: kWhyName,
                textNn: kWhyTitleN,
                textNs: kWhyTitleNs,
                textT: kWhyTitle,
                textS: kWhySubTitle,
                iconsN: Icons.record_voice_over,
              ),
              ListCar(
                textN: kDemandName,
                textT: kDemandbTitle,
                textS: kDemandSubTitle,
                iconsN: Icons.format_list_numbered,
              ),
              ListCar(
                textN: kExamName,
                textT: kExamTitle,
                textS: kExamSubTitle,
                iconsN: Icons.visibility,
              ),
              ListCar(
                textN: kErrorName,
                textT: kDemandbTitle,
                textS: kDemandSubTitle,
                iconsN: Icons.error,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCar extends StatelessWidget {
  final String textN;
  final String textT;
  final String textS;
  final IconData iconsN;
  const ListCar(
      {Key? key,
      required this.textN,
      required this.textT,
      required this.textS,
      required this.iconsN})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: IconButton(
        visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.centerLeft,
        icon: Icon(iconsN),
        onPressed: () {},
        color: AppColors.mainDarkBlue,
      ),
      title: Text(textN),
      backgroundColor: Colors.white38,
      textColor: AppColors.mainDarkBlue,
      collapsedIconColor: AppColors.mainDarkBlue,
      children: [
        ListTile(
          title: Text(
            textT,
            style: TextStyle(color: AppColors.mainDarkBlue),
          ),
          subtitle: Text(textS),
        ),
      ],
    );
  }
}

class ListCarFull extends StatelessWidget {
  final String textN;
  final String textNn;
  final String textNs;
  final String textT;
  final String textS;
  final IconData iconsN;

  const ListCarFull({
    Key? key,
    required this.textN,
    required this.textNn,
    required this.textNs,
    required this.iconsN,
    required this.textT,
    required this.textS,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: IconButton(
        visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.centerLeft,
        icon: Icon(iconsN),
        onPressed: () {},
        color: AppColors.mainDarkBlue,
      ),
      title: Text(
        textN,
      ),
      textColor: Colors.green,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textNn,
            style: TextStyle(fontSize: 14),
          ),
        ),
        ExpansionTile(title: Text(textNs), textColor: Colors.green, children: [
          ListTile(
            title: Text(
              textT,
              style: TextStyle(color: AppColors.mainDarkBlue),
            ),
            subtitle: Text(textS),
          )
        ]),
      ],
    );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//       leading: IconButton(
//         padding: const EdgeInsets.all(0.0),
//         alignment: Alignment.centerLeft,
//         icon: Icon(iconsN),
//         onPressed: () {},
//         color: AppColors.mainDarkBlue,
//       ),
//       title: Text(textN),
//       textColor: Colors.green,
//       children: [
//         ListTile(
//           title: Text(
//             textT,
//             style: TextStyle(color: AppColors.mainDarkBlue),
//           ),
//           subtitle: Text(textS),
//         ),
//       ],
//     );
//   }
// }
