part of './pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              "assets/images/image.png",
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
                    "LED Citywalk Sudirman - Jakarta",
                    style: TextStyleCustom.regular.copyWith(
                        fontWeight: semibold,
                        color: ColorConstant.kBlackColor.withOpacity(0.9)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Jl. Karet Pasar Baru Timur 5 No.12, RT.13/RW.11, Karet Tengsin, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10250, Indonesia",
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
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            height: MediaQuery.of(context).size.height / 16,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Week",
                    style: TextStyleCustom.regular.copyWith(
                        fontWeight: semibold, color: ColorConstant.kGreyColor),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "52 (27th December 2021 - 2nd January 2022)",
                    style: TextStyleCustom.small.copyWith(
                        fontWeight: semibold,
                        color: ColorConstant.kBlackColor.withOpacity(0.9)),
                  ),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 12, right: 12, top: 8),
            height: MediaQuery.of(context).size.height / 14,
            width: MediaQuery.of(context).size.width,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weekly Impression",
                          style: TextStyleCustom.regular.copyWith(
                              fontWeight: semibold,
                              color: ColorConstant.kGreyColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "3.401.840",
                          style: TextStyleCustom.small.copyWith(
                              fontWeight: semibold,
                              color:
                                  ColorConstant.kBlackColor.withOpacity(0.9)),
                        ),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Monthly Impression",
                          style: TextStyleCustom.regular.copyWith(
                              fontWeight: semibold,
                              color: ColorConstant.kGreyColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "13.413.656",
                          style: TextStyleCustom.small.copyWith(
                              fontWeight: semibold,
                              color:
                                  ColorConstant.kBlackColor.withOpacity(0.9)),
                        ),
                      ]),
                ]),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: const LineChart(),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
