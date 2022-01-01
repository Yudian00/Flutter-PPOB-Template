import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePasar extends StatelessWidget {
  final List imageList = [
    'https://images.pexels.com/photos/50593/coca-cola-cold-drink-soft-drink-coke-50593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/7290709/pexels-photo-7290709.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/62689/pexels-photo-62689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/5077039/pexels-photo-5077039.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1508666/pexels-photo-1508666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/168866/pexels-photo-168866.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/157675/fashion-men-s-individuality-black-and-white-157675.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2695792/pexels-photo-2695792.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];

  final List label = [
    'Minuman',
    'Makeup',
    'Laptop',
    'Smartphone',
    'Dapur',
    'Mainan',
    'Jaket',
    'Hijab'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 20 / 7.2),
      padding: EdgeInsets.fromLTRB(
        SizeConfig.safeBlockHorizontal * 10 / 3.6,
        SizeConfig.safeBlockVertical * 20 / 7.2,
        SizeConfig.safeBlockHorizontal * 10 / 3.6,
        0,
      ),
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pasar',
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 16 / 3.6,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 20 / 7.2,
          ),
          SizedBox(
            width: double.infinity,
            height: SizeConfig.safeBlockVertical * 170 / 7.2,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: SizeConfig.safeBlockVertical * 100 / 7.2,
                mainAxisExtent: SizeConfig.safeBlockHorizontal * 100 / 3.6,
                crossAxisSpacing: SizeConfig.safeBlockVertical * 10 / 7.2,
                mainAxisSpacing: SizeConfig.safeBlockHorizontal * 10 / 3.6,
              ),
              itemBuilder: (context, index) {
                return GridTile(
                  child: menuWidget(index),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget menuWidget(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.blue[200],
        image: DecorationImage(
          image: NetworkImage(
            imageList[index],
          ),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Container(
        height: SizeConfig.safeBlockVertical * 100 / 7.2,
        width: double.infinity,
        color: Colors.black.withOpacity(0.5),
        child: Center(
          child: Text(
            label[index],
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
