import 'package:flutter/material.dart';
import 'package:paw_print/features/home/widgets/best_sellers_section.dart';
import 'package:paw_print/features/home/widgets/category_chip.dart';
import 'package:paw_print/features/home/widgets/inspirational_section.dart';
import 'package:paw_print/features/home/widgets/shoe_card.dart';
import 'package:paw_print/features/home/widgets/sports_section.dart';
import 'package:paw_print/features/home/widgets/summer_essentials.dart';
import 'package:paw_print/features/home/widgets/winter_sale.dart';

class HomeView extends StatelessWidget {
  final List<Widget> widgets = [
    SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [
          CategoryChip(label: 'All', selected: true),
          CategoryChip(label: 'Deals'),
          CategoryChip(label: 'Clothes'),

          CategoryChip(label: 'Shoes'),
          CategoryChip(label: 'Shoes'),
          CategoryChip(label: 'Shoes'),
          CategoryChip(label: 'Shoes'),
        ],
      ),
    ),
    ShoeCard(),
    BestSellersSection(),
    SizedBox(height: 8),
    WinterSale(),
    SizedBox(height: 8),
    FullSection(
      backgroundColor: Color(0xFF1C1C1E),
      title: 'Sports',
      description: 'Get in shape',
      imagePath: 'assets/images/sports.jpg',
    ),
    SizedBox(height: 8),
    BestSellersSection(showTitle: false),
    SizedBox(height: 8),
    InspirationalSection(),
    SizedBox(height: 8),
    BestSellersSection(title: 'Jackets', gridView: true),
    SizedBox(height: 8),
    FullSection(
      backgroundColor: Color(0xFF1C4C1B),
      title: 'Outdoors',
      description: 'Gear up for your next adventure',
      imagePath: 'assets/images/outdoors.jpg',
    ),
    SizedBox(height: 8),
    BestSellersSection(showTitle: false),
    SizedBox(height: 8),
    BestSellersSection(title: 'For you'),
    SizedBox(height: 8),
    SummerEssentials(),
  ];
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) => widgets[index],
      ),
    );
  }
}
