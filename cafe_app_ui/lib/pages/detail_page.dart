import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('lib/images/allen.jpg'),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[800],
                          child: IconButton(
                            icon: const Icon(
                              Icons.chevron_left,
                              color: Colors.orange,
                            ),
                            onPressed: () {Navigator.pop(context);},
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Colors.grey[800],
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.orange,
        ),
      ),
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}