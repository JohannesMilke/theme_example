import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildProfile(context),
          Divider(height: 32),
          buildPhotos(context),
        ],
      );

  Widget buildPhotos(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'PHOTOS',
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 12),
            buildPhotoGrid(),
          ],
        ),
      );

  Widget buildPhotoGrid() => StaggeredGridView.countBuilder(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          final urlImage = 'https://source.unsplash.com/random?sig=$index';

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(urlImage),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
      );

  Widget buildProfile(BuildContext context) => Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 46,
            backgroundColor: Theme.of(context).iconTheme.color,
            child: CircleAvatar(
              radius: 44,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                child: Image.asset('assets/user1.png'),
                backgroundColor: Colors.pink,
                radius: 40,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Jane Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              const SizedBox(width: 4),
              Text('New York, USA'),
            ],
          ),
          SizedBox(height: 16),
          Text('Photography is the story I fail to put into words'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCounters(context, '36', 'Posts'),
              buildCounters(context, '3.5K', 'Following'),
              buildCounters(context, '15K', 'Followers'),
            ],
          ),
        ],
      );

  Widget buildCounters(context, String firstLine, String secondLine) => Column(
        children: [
          Text(
            firstLine,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(secondLine),
        ],
      );
}
