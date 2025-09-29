import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary, // Cor do ícone
        ),
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/spain-icon.png',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Viagem à Espanha',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 16.0)),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                'Início',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 8.0)),
            ListTile(
              leading: Icon(
                Icons.map,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                'Itinerários',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/itinerary');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 4,
              shrinkWrap:
                  true, // importante para caber dentro do SingleChildScrollView
              physics:
                  const NeverScrollableScrollPhysics(), // scroll será da tela inteira
              children: _MyHomePageState.content.map((item) {
                return Card(
                  child: Column(
                    children: [
                      Image.asset(item["image"]!, height: 80),
                      Text(item["title"]!),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item["day"]!),
                          Text(item["place"]!),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/itinerary');
              },
              child: const Text("Itinerário"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  static const content = [
    {
      "image": 'assets/spain-icon.png',
      "title": 'Viagem à Espanha',
      "day": 'Segunda',
      "place": 'Madrid',
    },
    {
      "image": 'assets/spain-icon.png',
      "title": 'Viagem à Espanha',
      "day": 'Terça',
      "place": 'Barcelona',
    },
    {
      "image": 'assets/spain-icon.png',
      "title": 'Viagem à Espanha',
      "day": 'Quarta',
      "place": 'Valência',
    },
    {
      "image": 'assets/spain-icon.png',
      "title": 'Viagem à Espanha',
      "day": 'Quinta',
      "place": 'Sevilha',
    },
    {
      "image": 'assets/spain-icon.png',
      "title": 'Viagem à Espanha',
      "day": 'Sexta',
      "place": 'Granada',
    },
  ];

  // List<Widget> homeContent(BuildContext context) {
  //   return <Widget>[
  //     const Text(
  //       'You have pushed the button this many times:',
  //     ),
  //     Text(
  //       '$_counter',
  //       style: Theme.of(context).textTheme.headlineMedium,
  //     ),
  //     Divider(
  //       color: Theme.of(context).dividerColor,
  //       thickness: 2,
  //       indent: 50,
  //       endIndent: 50,
  //     ),
  //     SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           Text('Outros widgets acima'),
  //           GridView.builder(
  //             shrinkWrap: true,
  //             physics: NeverScrollableScrollPhysics(),
  //             padding: EdgeInsets.all(8),
  //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 2,
  //               crossAxisSpacing: 8,
  //               mainAxisSpacing: 8,
  //               childAspectRatio: 3 / 4,
  //             ),
  //             itemCount: content.length,
  //             itemBuilder: (context, index) {
  //               final item = content[index];
  //               return Card(
  //                 child: Column(
  //                   children: [
  //                     Image.asset(item["image"]!, height: 80),
  //                     Text(item["title"]!),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(item["day"]!),
  //                         Text(item["place"]!),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               );
  //             },
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.pushNamed(context, '/itinerary');
  //             },
  //             child: const Text("Itinerario"),
  //           ),
  //         ],
  //       ),
  //     ),
  //     ElevatedButton(
  //       onPressed: () {
  //         Navigator.pushNamed(context, '/itinerary');
  //       },
  //       child: const Text("Itinerario"),
  //     )
  //   ];
  // }
}
