import 'package:flutter/material.dart';
import 'package:uprava/page/const.dart';
import 'package:uprava/theme/app-colors.dart';

class ShopLowPanelListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              ListCar(
                textN: kVideoName,
                textT: kVideoTitle,
                textS: kVideoSubtitle,
                iconsN: Icons.photo_camera,
              ),
              ListCar(
                textN: kCertificatName,
                textT: kCertificatTitle,
                textS: kCertificatSubtitle,
                iconsN: Icons.contact_mail,
              ),
              ListCar(
                textN: kRelativesName,
                textT: kRelativesTitle,
                textS: ' ',
                iconsN: Icons.sms,
              ),
              ListCar(
                textN: kBagName,
                textT: kBagTitle,
                textS: kBagSubtitle,
                iconsN: Icons.business_center,
              ),
              ListCar(
                textN: kImprinName,
                textT: kImprinTitle,
                textS: kImprinSubtitle,
                iconsN: Icons.ac_unit,
              ),
              ListCar(
                textN: kInspectionName,
                textT: kInspectionTitle,
                textS: kInspectionSubtitle,
                iconsN: Icons.ac_unit,
              ),
              ListCar(
                textN: kShopPoliceName,
                textT: kShopPoliceTitle,
                textS: kShopPoliceSubtitle,
                iconsN: Icons.ac_unit,
              ),
              ListCar(
                textN: kYouPoliceName,
                textT: kYouPoliceTitle,
                textS: kYouPoliceSubtitle,
                iconsN: Icons.local_police,
              ),
              ListCar(
                textN: kAvailableName,
                textT: kAvailableTitle,
                textS: kAvailableSubtitle,
                iconsN: Icons.visibility_sharp,
              ),
              ListCar(
                textN: kArrestName,
                textT: kArrestTitle,
                textS: kArrestSubtitle,
                iconsN: Icons.ac_unit,
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
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.centerLeft,
        icon: Icon(iconsN),
        onPressed: () {},
        color: AppColors.mainDarkBlue,
      ),
      title: Text(textN),
      textColor: Colors.green,
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
