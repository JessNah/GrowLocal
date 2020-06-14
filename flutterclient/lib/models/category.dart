
import 'deals.dart';


class Category{
  String imageUrl;
  String categoryName;
  String subText;
  String id;
  int c;
  List<Deals> d;
  List<Deals> r;

  Category({this.imageUrl, this.categoryName, this.subText, this.id, this.c, this.d, this.r});
}

List<Category> categories = [
  Category(
    imageUrl: "images/restaurantsCategory.jpg",
    categoryName: "Jasmine Indian Restaurant\n (258 reward points)",
    subText: "10-15 min\n2 new deals",
    id:"1",
    c: 0xFF42A5F5,
    d: [
      Deals(
        dealData: "Get 2x rewards on chicken biryani by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.5x rewards on noodles by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.5 rewards on butter chicken by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.2x rewards on paneer curry by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 5x rewards on mixed veg by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 5% off on all veg pakoda by 30/Jun/2020",
      )
    ],
    r: [
      Deals(
        dealData: "Get 2x rewards on chicken biryani by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.5x rewards on noodles by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.5 rewards on butter chicken by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.2x rewards on paneer curry by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 5x rewards on mixed veg by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 5% off on all veg pakoda by 30/Jun/2020",
      )
    ]
  ),
  Category(
      imageUrl: "images/groceryCategory.jpg",
      categoryName: "Asian Mart\n (2400 reward points)",
      subText: "25-35 min\n14 new deals",
      id:"2",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ],
      r: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/spices-of-india.jpg",
      categoryName: "Indian Groceries\n(458 reward points)",
      subText: "5-15 min\n7 new deals",
      id:"3",
      c: 0xFF42A5F5,
      d: [
  Deals(
  dealData: "Get 2x rewards on oil by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 2.5x rewards on rice by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 5x rewards on paneer by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 5% off on all flour by 30/Jun/2020",
  ),
        Deals(
          dealData: "Rice running out of stock, Refill inventory asap",
        ),
        Deals(
          dealData: "Oil running out of stock, Refill inventory",
        ),
        Deals(
          dealData: "Pasta in high demand, Get more inventory",
        )
],
      r: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 2.5x rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/thai.jpg",
      categoryName: "Thai Restaurant\n (100 reward points)",
      subText: "10-15 min\n1 new deal",
      id:"4",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on noodles by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on green curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 2.5x rewards on red curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on basil noodles by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on fried rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on lunch  by 30/Jun/2020",
        )
      ],
      r: [
        Deals(
          dealData: "Get 2x rewards on noodles by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on green curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 2.5x rewards on red curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on basil noodles by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on fried rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on lunch  by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/pizza.jpg",
      categoryName: "Alan's Pizza \n(400 reward points)",
      subText: "20-25 min\n5 new deals",
      id:"5",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on bbq pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on veg pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 2x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on mushroom pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on ham pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all chicken supreme by 30/Jun/2020",
        )
      ],
      r: [
        Deals(
          dealData: "Get 2x rewards on bbq pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on veg pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 2x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on mushroom pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on ham pizza by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all chicken supreme by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/vegan.jpg",
      categoryName: "Vegan Restaurant\n (1200 reward points)",
      subText: "10-15 min\n6 new deals",
      id:"6",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on salad by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on soup by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on mix veg curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on beans curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all early bird dinner (5:30-6:30pm) by 30/Jun/2020",
        )
      ],
      r: [
        Deals(
          dealData: "Get 2x rewards on salad by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on soup by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on mix veg curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on beans curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer curry by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all early bird dinner (5:30-6:30pm) by 30/Jun/2020",
        )
      ]
  )
];