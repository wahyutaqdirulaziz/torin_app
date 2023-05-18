part of "./pages.dart";

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: ColorConstant.kPrimaryColor,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/ic_menu.png",
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/image01.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum, elit tellus potenti potenti ac erat. ",
                    style: TextStyleCustom.regular.copyWith(
                        fontWeight: semibold,
                        color: ColorConstant.kBlackColor.withOpacity(0.9)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hac sapien turpis lacus, odio ut integer. Integer sit cursus tristique sagittis eleifend nunc. Orci nunc.",
                    style: TextStyleCustom.regular.copyWith(
                        fontWeight: semibold, color: ColorConstant.kGreyColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          child: Chip(
                              label: Text(
                            "Videotron / LED",
                            style: TextStyleCustom.small.copyWith(
                                fontWeight: semibold,
                                color: ColorConstant.kWhiteColor),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          child: Chip(
                              label: Text(
                            "Stand Alone",
                            style: TextStyleCustom.small.copyWith(
                                fontWeight: semibold,
                                color: ColorConstant.kWhiteColor),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          child: Chip(
                              label: Text(
                            "Horizontal",
                            style: TextStyleCustom.small.copyWith(
                                fontWeight: semibold,
                                color: ColorConstant.kWhiteColor),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          child: Chip(
                              label: Text(
                            "LED",
                            style: TextStyleCustom.small.copyWith(
                                fontWeight: semibold,
                                color: ColorConstant.kWhiteColor),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          child: Chip(
                              label: Text(
                            "Horizontal",
                            style: TextStyleCustom.small.copyWith(
                                fontWeight: semibold,
                                color: ColorConstant.kWhiteColor),
                          )),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Text(
                                "Total Reach",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: regular,
                                    color: ColorConstant.kGreyColor),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "409K",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: semibold,
                                    color: ColorConstant.kBlackColor
                                        .withOpacity(0.9)),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Text(
                                "Total Impression",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: regular,
                                    color: ColorConstant.kGreyColor),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "191.364K",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: semibold,
                                    color: ColorConstant.kBlackColor
                                        .withOpacity(0.9)),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Text(
                                "Total Expenditure",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: regular,
                                    color: ColorConstant.kGreyColor),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "2.625K",
                                style: TextStyleCustom.small.copyWith(
                                    fontWeight: semibold,
                                    color: ColorConstant.kBlackColor
                                        .withOpacity(0.9)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
            child: Text(
              "Gender",
              style: TextStyleCustom.regular
                  .copyWith(fontWeight: bold, color: ColorConstant.kBlackColor),
            ),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            child: const PieChart(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 18),
            child: Text(
              "Age",
              style: TextStyleCustom.regular
                  .copyWith(fontWeight: bold, color: ColorConstant.kBlackColor),
            ),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            child: const BarChart(),
          ),
        ],
      ),
    );
  }
}
