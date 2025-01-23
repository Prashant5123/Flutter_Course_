import 'package:flutter/material.dart';
import 'package:mobile_api_binding/device_info.dart';

// ignore: must_be_immutable
class MobileInfo extends StatelessWidget {
  List<dynamic> jsonData;
  List mobileUrl = [
    "https://m.media-amazon.com/images/I/71YJ2QMIM6L.jpg",
    "https://d2xamzlzrdbdbn.cloudfront.net/products/fbd1e961-5149-4b43-a3f0-1a7296d3937e_416x416.jpg",
    "https://rukminim2.flixcart.com/image/750/900/kg8avm80/mobile/5/z/w/apple-iphone-12-pro-max-dummyapplefsn-original-imafwgcy7ugz3y2z.jpeg?q=20&crop=false",
    "https://rukminim2.flixcart.com/image/850/1000/k2jbyq80pkrrdj/mobile-refurbished/x/j/s/iphone-11-128-d-mwm02hn-a-apple-0-original-imafkg242ugz8hwc.jpeg?q=20&crop=false",
    "https://img.global.news.samsung.com/in/wp-content/uploads/2020/09/galaxyzfold2_pr_main1.jpg",
    "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-pro-2-hero-select-202409_FV1_FMT_WHH?wid=752&hei=636&fmt=jpeg&qlt=90&.v=1725492498882",
    "https://iplanet.one/cdn/shop/files/MacBook_Pro_16-in_Space_Gray_PDP_Image_Position-1__GBEN_694c2083-9226-40df-a34a-7868914daff4.jpg?v=1691143292",
    "https://iplanet.one/cdn/shop/files/Apple_Watch_Series_8_LTE_41mm_Midnight_Aluminum_Midnight_Sport_Band_PDP_Image_Position-1__en-US_4b6ccd1d-dbfc-4589-a43b-3efcbe392819.jpg?v=1698871403&width=1445",
    "https://m.media-amazon.com/images/I/618aVzbPMjL._AC_UF1000,1000_QL80_.jpg",
    "https://www.triveniworld.com/cdn/shop/products/apple-ipad-mini-5th-generation-64gb-4g-triveni-world.jpg?v=1706394791",
    "https://in.static.webuy.com/product_images/Computing/Apple%20iPad/SAPPA2133256GSGWIFC_l.jpg",
    "https://m.media-amazon.com/images/I/719Lk3CuLzL._AC_UF1000,1000_QL80_.jpg",
    "https://www.jiomart.com/images/product/original/494404942/apple-ipad-air-6th-gen-2024-27-59-cm-11-inch-wi-fi-tablet-128-gb-blue-digital-o494404942-p608933212-1-202405082001.jpeg?im=Resize=(420,420)"
  ];
  MobileInfo({super.key, required this.jsonData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Info",  style: TextStyle(
              
              fontWeight: FontWeight.w600

            ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
      body: ListView.builder(
          itemCount: jsonData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return DeviceInfo(index: index,jsonData:jsonData,mobileUrl: mobileUrl,); 
                    }));
                  },
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(),
                    child: Image.network(
                      mobileUrl[index],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  jsonData[index]["name"],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            );
          }),
    );
  }
}
