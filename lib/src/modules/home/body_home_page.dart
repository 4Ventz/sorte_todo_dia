import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/model/carousel_image_model.dart';
import 'package:sorte_todo_dia/src/modules/home/widget/congratulations_button.dart';
import 'package:sorte_todo_dia/src/modules/home/widget/see_all_button.dart';
import 'package:sorte_todo_dia/src/shared/widget/hero_carousel_card.dart';
import 'package:sorte_todo_dia/src/shared/widget/join_raffle_card.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.75,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enableInfiniteScroll: true,
          ),
          items: CarouselImage.carouselImages
              .map((carouselImage) =>
                  HeroCarouselCard(carouselImage: carouselImage))
              .toList(),
        ),

        const SizedBox(
          height: 40,
        ),

        // Prize Btn
        const CongratulationsButton(),

        const SizedBox(
          height: 40,
        ),

        // Itens list
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Adicionados Recentemente',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  // Btn
                  SeeAllButton()
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              const JoinRaffleCard(),

              const SizedBox(
                height: 25,
              ),

              const JoinRaffleCard(),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
