import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/models.dart';
import '../../utils/utils.dart';

import 'components/components.dart';

import 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: GetBuilder<HomeController>(
        builder: (_) => SafeArea(
          child: Container(
            width: responsive.width,
            height: responsive.height,
            child: StreamBuilder(
              stream: _.load(),
              builder:
                  (BuildContext ctx, AsyncSnapshot<List<MovieModel>> snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text('Algo deu errado'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.red.shade900),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    MovieModel movieModel = snapshot.data![index];
                    return MovieItem(
                      title: movieModel.title,
                      imagePath: movieModel.thumb,
                      onTap: () => _.goToMovieDetails(movieModel),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
