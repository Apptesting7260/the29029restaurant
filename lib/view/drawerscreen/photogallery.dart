import 'package:flutter/material.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:GestureDetector(onTap: (){
          Navigator.pop(context);
        },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Photo Gallery",
            style:Theme.of(context).
            textTheme.
            titleLarge?.copyWith(
                fontSize: 18,fontWeight: FontWeight.w600)
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.02),
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: .6,
                      crossAxisSpacing:17,
                      mainAxisSpacing:17,
                      mainAxisExtent:100,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                         decoration: BoxDecoration(
                           image: DecorationImage(image:AssetImage("assets/images/image.png") )  ,
                           borderRadius: BorderRadius.circular(15),
                         ),
                      );
                    }
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
