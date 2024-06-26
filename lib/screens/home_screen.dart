import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en cines'),
        foregroundColor: Colors.white, // color de la letra 
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
          onPressed: (){} 
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [

          //Tarjetas Principales
          CardSwiper(),


          //Slider de peliculas 
          MovieSlider(),
          MovieSlider(),
          MovieSlider(),
          MovieSlider(),
          MovieSlider(),

        ],
      ),
      )
    );
  }
}
