import 'package:flutter/material.dart';
import 'package:verity/components/service_card.dart';
import 'package:verity/screens/business_credit.dart';
import 'package:verity/screens/credit_audit.dart';
import 'package:verity/screens/credit_education.dart';
import 'package:verity/screens/credit_repair.dart';

class ServiceScrollList extends StatelessWidget {
  const ServiceScrollList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ServiceCard(
            serviceName: 'Credit Audit',
            //navigatorRouteName: CreditAudit.routeName,
            widgetName: CreditAudit(),
            imagePath: 'lib/assets/credit_audit.webp',
            serviceDescription: '',
            serviceNumber: '1',
          ),
          SizedBox(
            width: 22,
          ),
          ServiceCard(
            serviceName: 'Credit Repair',
            //navigatorRouteName: CreditRepair.routeName,
            widgetName: CreditRepair(),
            imagePath: 'lib/assets/credit_repair.webp',
            serviceDescription: '',
            serviceNumber: '2',
          ),
          SizedBox(
            width: 22,
          ),
          ServiceCard(
            serviceName: 'Credit Education',
            //navigatorRouteName:
            //CreditEducation.routeName,
            widgetName: CreditEducation(),
            imagePath: 'lib/assets/credit_education.webp',
            serviceDescription: '',
            serviceNumber: '3',
          ),
          SizedBox(
            width: 22,
          ),
          ServiceCard(
            serviceName: 'Business Credit',
            //navigatorRouteName:
            //CreditEducation.routeName,
            widgetName: BusinessCredit(),
            imagePath: 'lib/assets/credit_audit.webp',
            serviceDescription: '',
            serviceNumber: '4',
          ),
        ],
      ),
    );
  }
}
