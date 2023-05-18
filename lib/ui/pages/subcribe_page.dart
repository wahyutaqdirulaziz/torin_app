part of "./pages.dart";

class SuscribePage extends StatefulWidget {
  const SuscribePage({super.key});

  @override
  State<SuscribePage> createState() => _SuscribePageState();
}

class _SuscribePageState extends State<SuscribePage> {
  List<PricePaket>? pakets;
  PricePaket? selectedPaket;
  int? selectedRadio;
  int? selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
    pakets = PricePaket.getPaket();
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  setSelectedPaket(PricePaket paket) {
    setState(() {
      selectedPaket = paket;
    });
  }

  List<Widget> createRadioListUsers() {
    List<Widget> widgets = [];
    for (PricePaket paket in pakets!) {
      widgets.add(
        Container(
          margin: const EdgeInsets.only(bottom: 4, top: 8),
          height: 80,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10), // Mengatur radius container
            border: Border.all(
              color: selectedPaket == paket
                  ? Colors.red
                  : ColorConstant.kGreyColor, // Warna garis pinggir
              width: 0.9, // Ketebalan garis pinggir
            ),
          ),
          child: Center(
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: ColorConstant
                    .kGreyColor, // Mengubah warna titik saat tidak dipilih
              ),
              child: RadioListTile(
                selected: selectedPaket == paket,
                activeColor: ColorConstant.kPrimaryColor,
                title: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    paket.name,
                    style: TextStyleCustom.small.copyWith(
                        fontWeight: regular,
                        color: selectedPaket == paket
                            ? ColorConstant.kGreyColor
                            : ColorConstant.kGreyColor),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    paket.price,
                    style: TextStyleCustom.regular.copyWith(
                        fontWeight: regular,
                        color: ColorConstant.kBlackColor.withOpacity(0.6)),
                  ),
                ),
                value: paket,
                groupValue: selectedPaket,
                onChanged: (currentPaket) {
                  setSelectedPaket(currentPaket!);
                },
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
          ),
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    "Choose Subscribe Package Basic",
                    style: TextStyleCustom.regular.copyWith(
                        fontWeight: bold,
                        color: ColorConstant.kBlackColor.withOpacity(0.8)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Promotional code",
                  style: TextStyleCustom.regular.copyWith(
                      fontWeight: regular, color: ColorConstant.kGreyColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: TextField(
                        style: TextStyleCustom.regular.copyWith(),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            suffix: TextButton(
                              autofocus: true,
                              onPressed: () {},
                              child: Text(
                                "Apply",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: bold,
                                    color: ColorConstant.kPrimaryColor),
                              ),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 0.8, color: ColorConstant.kGreyColor),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 0.8, color: ColorConstant.kGreyColor),
                            ),
                            hintStyle: TextStyleCustom.regular.copyWith(
                                fontWeight: regular,
                                color: ColorConstant.kGreyColor),
                            contentPadding: const EdgeInsets.all(12),
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorConstant.kGreyColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "input code here"),
                      ),
                    )),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: createRadioListUsers(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: TextStyleCustom.small.copyWith(
                              fontWeight: semibold,
                              color: ColorConstant.kPrimaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: ColorConstant.kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: TextStyleCustom.small.copyWith(
                              fontWeight: semibold, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PricePaket {
  int id;
  String name;
  String price;

  PricePaket({required this.id, required this.name, required this.price});

  static List<PricePaket> getPaket() {
    return <PricePaket>[
      PricePaket(id: 1, name: "Basic, 1 month", price: "IDR 5,000,000.00"),
      PricePaket(
          id: 2,
          name: "Basic, 3 month",
          price: "IDR 15,000,000.00 14,250,000.00"),
      PricePaket(
          id: 3,
          name: "Basic, 6 month",
          price: "IDR 30,000,000.00 27,000,000.00"),
      PricePaket(
          id: 4,
          name: "Basic, 9 month",
          price: "IDR 45,000,000.00 38,250,000.00"),
      PricePaket(
          id: 5,
          name: "Basic, 12 month",
          price: "IDR 60,000,000.00 48,000,000.00"),
    ];
  }
}
