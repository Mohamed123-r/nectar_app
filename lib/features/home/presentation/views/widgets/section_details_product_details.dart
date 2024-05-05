import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

class SectionDetailsProductDetails extends StatefulWidget {
  const SectionDetailsProductDetails({super.key});

  @override
  State<SectionDetailsProductDetails> createState() =>
      _SectionDetailsProductDetailsState();
}

class _SectionDetailsProductDetailsState
    extends State<SectionDetailsProductDetails> {
  late final List<bool> _isExpanded = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ExpansionPanelList(
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            animationDuration: const Duration(milliseconds: 700),
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _isExpanded[panelIndex] = isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return const Row(
                      children: [
                        Text(
                          'Product Detail',
                          style: Styles.textStyle16,
                        ),
                      ],
                    );
                  },
                  body: const Text(
                    'Apples are nutritious. Apples may be good for'
                    '  weight loss. apples may be good for your '
                    'heart. As part of a healtful and varied diet. ',
                    style: Styles.textStyle14,
                  ),
                  isExpanded: _isExpanded[0]),
              ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nutrition's",
                          style: Styles.textStyle16,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFEBEBEB),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          child: const Text(
                            '100gm',
                            style: Styles.textStyle14,
                          ),
                        ),
                      ],
                    );
                  },
                  body: const Text(
                    'Apples are nutritious. Apples may be good for'
                    '  weight loss. apples may be good for your '
                    'heart. As part of a healtful and varied diet. ',
                    style: Styles.textStyle14,
                  ),
                  isExpanded: _isExpanded[1]),
              ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Review',
                          style: Styles.textStyle16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFFF3603F),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFFF3603F),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFFF3603F),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFFF3603F),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFFF3603F),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  body: const Text(
                    'Apples are nutritious. Apples may be good for'
                    '  weight loss. apples may be good for your '
                    'heart. As part of a healtful and varied diet. ',
                    style: Styles.textStyle14,
                  ),
                  isExpanded: _isExpanded[2]),
            ],
          ),
        ],
      ),
    );
  }
}
