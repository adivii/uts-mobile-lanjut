import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Image(
            image: AssetImage('yubis-logo.png'),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 150.0),
            items: [
              AssetImage("assets/banner/banner1.jpeg"),
              AssetImage("assets/banner/banner2.jpeg"),
              AssetImage("assets/banner/banner3.jpeg")
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Image(
                        image: i,
                      ));
                },
              );
            }).toList(),
          ),
          Text(
            'Kategori Produk',
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/006-vegetables.svg')),
                    Text('Sayuran')
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/033-broccoli.svg')),
                    Text('Paket')
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/035-apple.svg')),
                    Text('Buahan')
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/013-flour.svg')),
                    Text('Karbohidrat')
                  ],
                )),
            ],
          ),
          Row(
            children: [
              Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/017-fridge.svg')),
                    Text('Bumbu Dapur')
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/033-broccoli.svg')),
                    Text('Sembako')
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/035-apple.svg')),
                    Text('Protein')
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset('assets/013-flour.svg')),
                    Text('Makanan Sehat', style: TextStyle(fontSize: 12),)
                  ],
                )),
            ],
          )
        ],
      ),
    );
  }
}
