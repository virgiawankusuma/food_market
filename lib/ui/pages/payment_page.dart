part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {
        Get.back();
      },
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          //// bagian atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.transaction.food.picturePath),
                                    fit: BoxFit.cover))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 189,
                              // 2 * defaultMargin (jarak border) +
                              // 60 (lebar picture) +
                              // 12 (jarak picture title) +
                              // 78 (lebar jumlah item),
                              child: Text(
                                widget.transaction.food.name,
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                                NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'IDR',
                                        decimalDigits: 0)
                                    .format(widget.transaction.food.price),
                                style: greyFontStyle.copyWith(fontSize: 13)),
                          ],
                        )
                      ],
                    ),
                    Text('${widget.transaction.quantity} item(s)',
                        style: greyFontStyle.copyWith(fontSize: 13))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Detail Transaction', style: blackFontStyle3),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          widget.transaction.food.name,
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(widget.transaction.total),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Driver',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(50000),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Tax 10%',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(widget.transaction.total * 0.1),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Total Price',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(widget.transaction.total * 1.1 + 50000),
                            style: blackFontStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                color: '1ABC9C'.toColor()),
                            textAlign: TextAlign.right)),
                  ],
                ),
              ],
            ),
          ),

          //// Bagian Bawah
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Deliver to:',
                //   style: blackFontStyle3,
                // ),
                // SizedBox(
                //   height: 12,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Deliver to', style: blackFontStyle3),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Name',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(widget.transaction.user.name,
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Phone No.',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(widget.transaction.user.phoneNumber,
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Address',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(widget.transaction.user.address,
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'House No.',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(widget.transaction.user.houseNumber,
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'City',
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(widget.transaction.user.city,
                            style: blackFontStyle3,
                            textAlign: TextAlign.right)),
                  ],
                ),
              ],
            ),
          ),
          //// Checkout Button
          (isLoading == true)
              ? Center(
                  child: loadingIndicator,
                )
              : Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: defaultMargin),
                  // margin: EdgeInsets.only(top: 24),
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  // padding:
                  //     EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
                  child: RaisedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      bool result = await context
                          .read<TransactionCubit>()
                          .submitTransaction(widget.transaction.copyWith(
                              dateTime: DateTime.now(),
                              total: (widget.transaction.total * 1.1).toInt() +
                                  50000));
                      if (result == true) {
                        Get.to(SuccessOrderPage());
                      } else {
                        setState(() {
                          isLoading = false;
                        });
                        Get.snackbar('', '',
                            backgroundColor: 'D9435E'.toColor(),
                            icon: Icon(MdiIcons.closeCircleOutline,
                                color: Colors.white),
                            titleText: Text(
                              'Transacion Failed',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            messageText: Text('Please try again later.',
                                style:
                                    GoogleFonts.poppins(color: Colors.white)));
                      }
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: mainColor,
                    child: Text(
                      'Checkout Now',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
