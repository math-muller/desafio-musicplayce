import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_musicplayce/app/modules/home/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Filmes'),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: GetBuilder<HomeController>(
        builder: (_) => SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: StreamBuilder<QuerySnapshot>(
              stream: _.load(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text('Algo deu errado'));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        Colors.red.shade900,
                      ),
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
