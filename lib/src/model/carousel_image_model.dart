import 'package:equatable/equatable.dart';

class CarouselImage extends Equatable {
  final String name;
  final String imgUrl;

  const CarouselImage({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<CarouselImage> carouselImages = [
    const CarouselImage(
      name: 'Lançamento 1.0',
      imgUrl:
          'https://images.unsplash.com/photo-1597198399495-ff26429c4ad9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    ),
    const CarouselImage(
      name: 'Lançamento 1.0',
      imgUrl:
          'https://images.unsplash.com/photo-1519638399535-1b036603ac77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1931&q=80',
    ),
  ];
}
