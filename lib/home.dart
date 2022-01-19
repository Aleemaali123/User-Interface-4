import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String? expandedValue;
  String? headerValue;
  bool? isExpanded;
}

List<Item> _items = <Item>[Item(headerValue: '', expandedValue: '')];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(right: 65),
          child: const Center(
            child: Text(
              "Dukaan Premium",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.blue[800],
        leading: Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        toolbarHeight: 60,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.blue[800],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/icon.png",
                      height: 80,
                      width: 150,
                    ),
                    const Text(
                      "Get Dukaan Premium for Just",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "₹4999/year",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Text(
                        "All the advanced features of scaling your",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Text(
                        "business",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          headings("Features"),
          features(
            "assets/images/icn1.png",
            "Custom domain name",
            "Get your own custum domain and build\nyour brand on the internet",
          ),
          features(
            "assets/images/icn2.png",
            "Verified seller badge",
            "Get green verified badge under your\nstore name and build trust",
          ),
          features(
            "assets/images/icn3.png",
            "Dukaan for PC",
            "Access all the exclusive premium\nfeatures on Dukaan for PC",
          ),
          features(
            "assets/images/icn4.png",
            "Priority Support",
            "Get your questians resolved with our \npriority customer support",
          ),
          const Divider(
            color: Colors.grey,
            thickness: 3,
          ),
          headings("What is Dukaan Premium"),
          Container(
            margin: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                "assets/images/yt.png",
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 3,
          ),
          // headings("Frequently asked questions"),
          // questions(
          //   "What types of Business can use Dukaan Premium?",
          // ),
          headings("Frequently asked questions"),
          ExpansionPanelList(
            
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _items[index].isExpanded = !(_items[index].isExpanded!);
              });
            },
            children: _items.map((Item item) {
              return ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ques(
                    "What types of Business can use Dukaan Premium?",
                  );
                },
                isExpanded: item.isExpanded!,
                
                body: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    child: Text(
                        "Dukaan caters to a wide variety of sellers. Be it a \nsmall groccery store or a big legacy brand anyone \nwho wants to sell their products/services online - \nDukaan is the perfect platform for you.",style: TextStyle(color: Colors.grey[400],),),
                  ),
                ),
              );
            }).toList(),
          ),
          divider(),
          questions(
            "What is your refund policy?",
          ),
          divider(),
          questions(
            "Will there be an automatic charge after the paid trial?",
          ),
          divider(),
          questions(
            "What payment method do you offer?",
          ),
          divider(),
          questions(
            "What happens when free trial ends?",
          ),
          divider(),
          questions(
            "What are the terms for the custom domain?",
          ),
          divider(),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          headings("Nead help? Get in touch"),
          Row(
            children: [
              connect(Icons.message, "Live Chat"),
              connect(Icons.call, "Phone Call"),
            ],
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 3,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                  child: Text(
                    "Select Domain",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 10, bottom: 10, left: 60),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[800],
                ),
                child: const Center(
                  child: Text(
                    "Get Premium",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

questions(text) {
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Container(
          margin: const EdgeInsets.only(
            top: 15,
            left: 20,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
      Expanded(
        
        child: Container(
          padding: const EdgeInsets.only(top: 10 ),
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
    ],
  );
}

divider() {
  return Container(
    margin: const EdgeInsets.only(
      left: 20,
      top: 5,
      right: 20,
    ),
    child: const Divider(
      color: Colors.grey,
      thickness: 2,
    ),
  );
}

connect(icon, text) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        border: Border.all(
          width: .5,
          color: Colors.grey,
        ),
      ),
      height: 100,
      width: 200,
      margin: const EdgeInsets.all(
        20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 35,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.all(
              4,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

features(img, text1, text2) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Image.asset(
          img,
          height: 70,
        ),
      ),
      Expanded(
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: Text(
                text1,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              text2,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

headings(txt) {
  return Container(
    margin: const EdgeInsets.only(
      top: 15,
      left: 20,
    ),
    child: Text(
      txt,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}
ques(text){ 
  return Row(
    children: [
      Expanded(
        
        flex: 3,
        child: Container(
          margin: const EdgeInsets.only(
            top: 15,
            left: 20,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    ],
  );

}

