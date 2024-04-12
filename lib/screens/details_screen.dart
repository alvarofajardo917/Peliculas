import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO:Cambiar luego por una instancia movie
    final TextTheme textTheme = Theme.of(context).textTheme;
        
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle()
            ])
        )
        ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Text(
            'movile.title.hecho con',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image:NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}



class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image:NetworkImage('https://via.placeholder.com/200x300') ,
              height: 150,
            ),
          ),
          
          SizedBox(width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title',style: Theme.of(context).textTheme.headlineSmall,overflow: TextOverflow.ellipsis,maxLines: 2),
              Text('movie.originalTitle',style: Theme.of(context).textTheme.headlineSmall,overflow: TextOverflow.ellipsis),

            Row(
              children: [
                Icon(Icons.star_outline,size: 15,color: Colors.grey),
                SizedBox(width: 5),
                Text('movie.voteAverage',style: Theme.of(context).textTheme.bodySmall)
              ],
            )
            ],
          )
        ],
      ),
    );
  }
}