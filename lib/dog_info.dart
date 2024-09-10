import 'package:dog_info/dog_details.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          title: const Text('Dog Info'),
        ),
        body: DogList(),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
    );
  }
}

class DogList extends StatelessWidget {
  DogList({super.key});
  final List<String> dogBreeds = [
    "Labrador Retriever",
    "Beagle",
    "Doberman Pinscher",
    "Shih Tzu",
    "Siberian Husky",
    "Pomeranian"
  ];

  final Map<String, String> dogInfo = {
    'Labrador Retriever':
        'A friendly, outgoing, and energetic breed, Labradors are popular family dogs known for their intelligence, loyalty, and affectionate nature.Labrador puppies coming from the normal breeding farms regularly cost from \$800 to \$1500. These puppies usually have ordinary genealogy and have more than 95% of breed purity, they are mainly raised as family pets. Lab puppies coming from reputed breeders have much higher price, from about \$2500 to \$4000.',
    'Beagle':
        'Beagles are small to medium-sized hunting dogs with a curious and energetic personality, known for their floppy ears and friendly, curious disposition.Usually, the average price of a Beagle puppy from a reputable breeder is between \$800 and \$1,500, while a top-quality Beagle puppy can cost as high as \$2,500 and upward. The price depends on the dog\'s lineage, conformation to breed standards, age, and training.',
    'Doberman Pinscher':
        'Doberman Pinschers are sleek, agile, and intelligent dogs.Usually, the average cost of purchasing a pet quality puppy from a reputable breeder is about \$1,200 to \$2,500. However, for a Doberman Pinscher puppy with top breed lines and a superior pedigree, you may need to pay between \$3,500 and \$5,000.',
    'Siberian Husky': 'Siberian Huskies are a medium-sized.Usually, the average cost of purchasing a pet quality puppy from a reputable breeder is about \$600 to \$1,300. However, for a Siberian Husky puppy with top breed lines and a superior pedigree, you may need to pay between \$2,500 and \$5,000.Siberian Huskies need a fair amount of exercise, including a daily walk or jog, but should not be excessively exercised in warm weather. They need a large yard with a high fence, but bury the wire at the base of the fence because they are likely to dig their way out and go off hunting.',
    'Pomeranian':
        'Pomeranians are small, fluffy dogs with a big personality, known for their friendly, outgoing nature and their distinctive fox-like appearance.The Pomeranian is one of the most expensive breeds of small dog breeds. Usually, the average cost of purchasing a pet quality puppy from a reputable breeder is about \$1500 to \$3,000. However, for a Pomeranian puppy with top breed lines and a superior pedigree, you may need to pay between \$3,500 and \$6,000.'
  };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dogBreeds.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(dogBreeds[index]),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DogDetailsScreen(
                        breed: dogBreeds[index],
                        info: dogInfo[dogBreeds[index]] ??
                            'No information available')));
          },
        );
      },
    );
  }
}
