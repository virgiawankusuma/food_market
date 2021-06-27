part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(children: [
          // Header
          Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Food Market', style: blackFontStyle1),
                      Text(
                        'Let`s get some foods',
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage('assets/photo.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              )),

          // List of Food
          Container(
            height: 258,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: mockFoods
                      .map((e) => Padding(
                            padding: EdgeInsets.only(
                              left: (e == mockFoods.first) ? defaultMargin : 0,
                              right: defaultMargin,
                            ),
                            child: FoodCard(e),
                          ))
                      .toList(),
                )
              ],
            ),
          )

          // List of Food (Tabs)
        ])
      ],
    );
  }
}