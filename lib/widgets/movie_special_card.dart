import 'package:aa/model/movie/index.dart';
import 'package:aa/screens/movie_detail.dart';
import 'package:flutter/material.dart';

class MovieSpecial extends StatelessWidget {
  final MovieModel data;
  const MovieSpecial(this.data, {super.key});

  void onCardTap(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (_) => MovieDetail(data))
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    return InkWell(
      onTap: () => onCardTap(context),
      child: Container(
      height: width * 1.3,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(data.imgUrl),
        ),
      ),
      child: Icon(Icons.play_circle,
      color: Colors.grey,
      size: 60,
      ),
    
    ),
    );
  }
}