import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/components.dart';
import '../../utils/utils.dart';

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
            child: StreamBuilder<QuerySnapshot>(
              stream: _.load(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                return ListView(
                  children: snapshot.data!.docs.map((DocumentSnapshot d) {
                    final data = d.data() as Map<String, dynamic>;
                    return MovieItem(
                      title: data['titulo'],
                      imagePath: data['thumb'],
                      onTap: () => _.goToMovieDetails(data),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
