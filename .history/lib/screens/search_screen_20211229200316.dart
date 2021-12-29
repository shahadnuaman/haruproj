import 'package:flutter/material.dart';
import 'package:harubom/components/search_bar.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/helpers.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/generated/products_card_model/products_card_model.dart';
import 'package:harubom/provider/search_provider.dart';
import 'package:provider/provider.dart';

class SearchScrean extends StatelessWidget {
  const SearchScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var length = 5;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(getSize(context).width, 65),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SearchBar(
              onChanged: (search) {
                print(search);
                Provider.of<SearchProvider>(context, listen: false)
                    .search(search);
              },
            ),
          ),
        ),
      ),
      body: Container(
        width: getSize(context).width,
        height: getSize(context).height,
        child: Column(
          children: [
            Expanded(child: Consumer<SearchProvider>(builder: (context, pr, _) {
              return ListView.builder(
                  itemCount: pr.searchList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          final SearchListModel e = pr.searchList[index];
                          final Product pro = Product(
                              id: index,
                              image: workingUrl + e.backgroundImage.toString(),
                              sizes: ["XL", "L", "M"],
                              colors: [
                                Color(0xFFA0054F),
                                Color(0xFF836DB8),
                                Color(0xFFDECB9C),
                                Colors.white,
                              ],
                              title: e.name.toString(),
                              price: index.toDouble(),
                              description: description);
                          // hpush(
                          //   context,
                          //   ServiceView(
                          //     id: pr.searchList[index].id,
                          //   ));
                        },
                        title: Text(pr.searchList[index].name),
                        leading: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(workingUrl +
                                    pr.searchList[index].backgroundImage),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 150,
                        ),
                        subtitle: Text(pr.searchList[index].price.toString()),
                      ),
                      // child: SearchCard(
                      //   item: pr.searchList[index],
                      // ),
                    );
                  });
            }))
          ],
        ),
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final SearchListModel model;
  const ServiceWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 150,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/salon.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: -15,
                right: 15,
                child: Container(
                  // width: 30,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    color: Color.fromRGBO(49, 91, 102, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.star, color: Colors.white)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            model.name,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(1, 15, 7, 1),
                fontFamily: 'SF Pro Display',
                fontSize: 20,
                letterSpacing: 0.4444443881511688,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          Text(
            'Adam Center',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(134, 134, 134, 1),
                fontFamily: 'Abel',
                fontSize: 16,
                letterSpacing: -0.4000000059604645,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
          Spacer(),
          Text(
            '0.4 Nisho',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(1, 15, 7, 1),
                fontFamily: 'Abel',
                fontSize: 14,
                letterSpacing: -0.2800000011920929,
                fontWeight: FontWeight.normal,
                height: 1.4285714285714286),
          )
        ],
      ),
    );
  }
}
