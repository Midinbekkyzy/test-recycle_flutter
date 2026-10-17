class Car {
  const Car({
    required this.image,
    required this.name,
    required this.year,
  });

  final String image;
  final String name;
  final int year;
}

const cars = <Car>[
  Car(image: 'assets/cars/car_mercedes.png', name: 'Mercedes', year: 2023),
  Car(image: 'assets/cars/car_camry.png', name: 'Toyota Camry', year: 2020),
  Car(image: 'assets/cars/car_mustang.png', name: 'Mustang', year: 2019),
  Car(image: 'assets/cars/car_porsche.png', name: 'Porsche', year: 2020),
  Car(image: 'assets/cars/car_bmw.png', name: 'BMW', year: 2020),
  Car(image: 'assets/cars/car_kia.png', name: 'Kia', year: 2021),
  Car(image: 'assets/cars/car_tesla.png', name: 'Tesla', year: 2020),
];
