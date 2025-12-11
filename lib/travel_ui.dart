import 'package:flutter/material.dart';

class rfn extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {
      'name': "Dera Resort & Spa",
      'image':
          'https://www.deraresort.com/images/sea-pearl-beach-resort-and-spa.jpg',
    },
    {
      'name': 'Sea Pearl Beach Resort',
      'image':
          'https://www.bangladeshhotels.net/data/Photos/300x300w/14672/1467236/1467236996.JPEG',
    },
    {
      'name': 'parl harbour',
      'image':
          'https://www.bangladeshhotels.net/data/Photos/300x300w/9600/960073/960073948.JPEG',
    },
    {
      'name': 'rafin 5star',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReohGx17ulw4NRnrORh7BeL65IOdYjbAb2Mg&s',
    },
  ];
  final List<Map<String, String>> pakage = [
    {
      'tittle': 'teknaf',
      'price': '\$50',
      'image':
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/45/08/1c/caption.jpg?w=300&h=-1&s=1',
    },
    {
      'tittle': 'himchuri',
      'price': '\$15',
      'image':
          'https://tourtoday.com.bd/wp-content/uploads/2021/09/himchori-1.png',
    },
    {
      'tittle': 'sughonda',
      'price': '\$100',
      'image':
          'https://ecdn.dhakatribune.net/contents/cache/images/800x450x1/uploads/media/2024/02/20/Beach-fdba13fcfdb147b2ebed2ce0be8ae3e7.jpg?jadewits_media_id=15411',
    },
    {
      'tittle': 'sent martin',
      'price': '\$150',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlnmOEPp8lbEtDo_FJ6AiAEKvExQ_48Cvu9g&s',
    },
    {
      'tittle': 'inani',
      'price': '\$10',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuzgZzPfs_ke0Y2xQPsXcJ1JYkQC8KXR5bLQ&s',
    },
  ];
  // const rfn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is rafin"),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0JYxH9JQ91tSkOAW41ziyLxafPmZ-Dh9izA&s",
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
              Container(height: 250, color: Colors.black.withOpacity(0.3)),
              Positioned(
                bottom: 150,
                right: 50,
                child: Text(
                  "explore the World!!",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              SizedBox(height: 50),
              Positioned(
                bottom: 50,
                right: 70,

                child: Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "search....",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),

                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Top rted hotel",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 15),
          GridView.builder(
            itemCount: destinations.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 3 / 2,
            ),

            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(destinations[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black54],
                    ),
                  ),
                  child: Text(
                    destinations[index]['name']!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Tranding package",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: pakage.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.95),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Image.network(
                        pakage[index]['image']!,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pakage[index]['tittle']!,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Icon(
                                    Icons.schedule,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Text("3 Night . 4 Days"),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    pakage[index]['price']!,
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),

                                    child: Text("Book Now"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
