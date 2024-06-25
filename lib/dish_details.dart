import 'package:flutter/material.dart';
import 'package:zomatto/model/restaurant_model.dart';

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
        title: Text(widget.hotelname.cuisine),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        interactive: true,
        child: ListView(
          padding: const EdgeInsets.all(15),
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(
              widget.hotelname.minimumAmount.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.hotelname.menu[index].dishname,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            //wordSpacing: 0.5,
                          ),
                        ),
                        Text(widget.hotelname.menu[index].ratings.toString()),
                        Text(
                          widget.hotelname.menu[index].price.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Wrap(
                          spacing: 2,
                          runSpacing: 10,
                          alignment: WrapAlignment.spaceBetween,
                          children: widget.hotelname.menu[index].ingridient
                              .map((e) => Chip(label: Text(e)))
                              .toList(),
                        )
                      ],
                    ),
                    ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                          height: 100,
                          widget.hotelname.menu[index].image.last,
                          fit: BoxFit.cover),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
              itemCount: widget.hotelname.menu.length,
            )
          ],
        ),
      ),
    );
  }
}
