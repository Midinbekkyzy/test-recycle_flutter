import 'package:flutter/material.dart';

import 'car.dart';
import 'car_photo.dart';
import 'year_chip.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name)),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: const Color(0xFFE6E0EE)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarPhoto(
                    path: car.image,
                    height: 230,
                    borderRadius: 22,
                  ),
                  const SizedBox(height: 18),
                  Text(
                    car.name,
                    style: const TextStyle(
                      color: Color(0xFF24182F),
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  YearChip(year: car.year, large: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
