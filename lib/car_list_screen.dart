import 'package:flutter/material.dart';

import 'car.dart';
import 'car_detail_screen.dart';
import 'car_photo.dart';
import 'year_chip.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Список машин')),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return _CarTile(
            car: car,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => CarDetailScreen(car: car)),
              );
            },
          );
        },
      ),
    );
  }
}

class _CarTile extends StatelessWidget {
  const _CarTile({required this.car, required this.onTap});

  final Car car;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(22),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: const Color(0xFFE6E0EE)),
            ),
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CarPhoto(path: car.image, width: 84, height: 64),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        car.name,
                        style: const TextStyle(
                          color: Color(0xFF24182F),
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 6),
                      YearChip(year: car.year),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
