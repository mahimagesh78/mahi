import 'package:flutter/material.dart';

import '../model/restaurant_model.dart';

class HotelScreen extends StatefulWidget {
  final RestaurantModel hotelname;
  const HotelScreen({required this.hotelname, super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.hotelname.name),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image(
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low,
            image: AssetImage(
              widget.hotelname.imageUrl,
            ),
          ),
          Text(
            widget.hotelname.cuisine,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "₹" + widget.hotelname.minimumAmount.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.hotelname.menu[index].dishname,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          widget.hotelname.menu[index].ratings.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "₹" + widget.hotelname.menu[index].price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 4,
                          alignment: WrapAlignment.end,
                          children: widget.hotelname.menu[index].ingridient
                              .map((e) => Chip(label: Text(e)))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 130,
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(16),
                      child: ListView.separated(
                        physics: const PageScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.hotelname.menu[index].image.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, inx) {
                          return Image.network(
                            height: 100,
                            width: 130,
                            widget.hotelname.menu[index].image[inx],
                            fit: BoxFit.cover,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                      ),
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16,
              );
            },
            itemCount: widget.hotelname.menu.length,
          ),
        ],
      ),
    );
  }
}
