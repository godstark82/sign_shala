import 'package:flutter/material.dart';

class RankPage extends StatelessWidget {
  const RankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            title: Text(
              'Leaderboard',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.info_outline),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                      ),
                      SizedBox(height: 10),
                      Text('#2 Mukesh')
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                      ),
                      SizedBox(height: 10),
                      Text('#1 Ramesh')
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                      ),
                      SizedBox(height: 10),
                      Text('#3 Rajesh')
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(colors: [
                    Colors.pink.withOpacity(0.9),
                    Colors.pinkAccent.withOpacity(0.8)
                  ])),
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your current Rank',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('# 343',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
          SliverList.separated(
              itemCount: 47,
              separatorBuilder: (context, index) {
                return SizedBox(height: 1);
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Card(
                    // color: Theme.of(context).primaryColor.withOpacity(0.1),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: Colors.transparent,
                      // tileColor: Theme.of(context).primaryColor.withOpacity(0.1),
                      leading: CircleAvatar(child: Text('${index + 4}')),
                      title: Text('Max ${index + 4}'),
                      trailing: Text('#${index + 4}'),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
