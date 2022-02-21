import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeBtnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          _likeBtnCard('Love', _myLikeBtn(Icons.favorite)),
          _likeBtnCard('Home', _myLikeBtn(Icons.home)),
          _likeBtnCard('Cloud', _myLikeBtn(Icons.cloud)),
          _likeBtnCard('Download', _myLikeBtn(Icons.download)),
          _likeBtnCard('Warning', _myLikeBtn(Icons.warning)),
          _likeBtnCard('Wash', _myLikeBtn(Icons.wash)),
          _likeBtnCard('Watch', _myLikeBtn(Icons.watch)),
          _likeBtnCard('Watch Later', _myLikeBtn(Icons.watch_later)),
          _likeBtnCard('Wine', _myLikeBtn(Icons.wine_bar_sharp)),
          _likeBtnCard('Water', _myLikeBtn(Icons.water)),
          _likeBtnCard('Water Damage', _myLikeBtn(Icons.water_damage)),
          _likeBtnCard('Wb Shade', _myLikeBtn(Icons.wb_shade_outlined)),
          _likeBtnCard('Wifi', _myLikeBtn(Icons.wifi)),
          _likeBtnCard('Web Auto', _myLikeBtn(Icons.wb_auto)),
          _likeBtnCard('Web Auto Outlined', _myLikeBtn(Icons.wb_auto_outlined)),
          _likeBtnCard('Wc Outlined', _myLikeBtn(Icons.wc_outlined)),
          _likeBtnCard('Web Outlined', _myLikeBtn(Icons.web_outlined)),
          _likeBtnCard('Weekend', _myLikeBtn(Icons.weekend)),
        ],
      ),
    );
  }

  _myLikeBtn(IconData icon) {
    return LikeButton(
      likeBuilder: (isLiked) => Icon(
        icon,
        color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
      ),
    );
  }

  Widget _likeBtnCard(title, btn) {
    return Card(
      child: ListTile(
          title: Text(title), trailing: SizedBox(width: 40, child: btn)),
    );
  }
}
