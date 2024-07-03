import 'package:flutter/material.dart';
import 'package:portfolio/widgets/card_widget.dart';
import 'package:portfolio/widgets/section_movie_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int cardsQuantity = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Início'),
            const Text('Séries'),
            const Text('Filmes'),
            const Text('Bombando'),
            const Text('Minha lista'),
            const Text('Navegar por idiomas'),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Row(
                    children: [
                      Icon(
                        Icons.person,
                      ),
                      Icon(
                        Icons.arrow_downward,
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    fit: BoxFit.fill,
                    height: MediaQuery.sizeOf(context).height / 2,
                    width: MediaQuery.sizeOf(context).width,
                    'https://img.odcdn.com.br/wp-content/uploads/2023/06/homem-aranha-atraves-do-aranhaverso.jpg',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.04,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionMovieWidget(
                      sectionTitle: 'Award-winning US TV War & Politics',
                      cardsQuantity: 5,
                    ),
                    SectionMovieWidget(
                      sectionTitle: 'teste',
                      cardsQuantity: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
