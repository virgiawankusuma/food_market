part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  // final User user;

  // ProfilePage({this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  List<User> account = [];
  List<User> foodMarket = [];

  @override
  Widget build(BuildContext context) {
    // double listItemWidth =
    //     MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(children: [
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 220,
            margin: EdgeInsets.only(bottom: defaultMargin),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 110,
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/photo_border.png'))),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                (context.read<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath),
                            fit: BoxFit.cover)),
                  ),
                ),
                Text((context.read<UserCubit>().state as UserLoaded).user.name,
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500)),
                Text((context.read<UserCubit>().state as UserLoaded).user.email,
                    style: greyFontStyle.copyWith(fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['Account', 'Food Market'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  // Column(
                  //   children: [Text('ashajs')],
                  // )
                  Column(
                    children: (selectedIndex == 0 ? account : foodMarket)
                        .map((e) => Padding(
                            padding: const EdgeInsets.only(
                                right: defaultMargin,
                                left: defaultMargin,
                                bottom: 16)))
                        .toList(),
                  )
                ],
              ))
        ],
      )
    ]);
  }
}
