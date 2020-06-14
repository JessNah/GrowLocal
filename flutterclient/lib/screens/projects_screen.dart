import 'package:flutter/material.dart';
import 'package:flutterclient/models/category.dart';
import 'package:flutterclient/models/deals.dart';
import 'package:flutterclient/models/transactions.dart';
//import 'package:flutterclient/models/all_submissions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterclient/api/api_submissions.dart';
import 'package:flutterclient/api/api_problems.dart';
import 'package:flutterclient/utilities/common_objects.dart';
import 'package:flutterclient/utilities/constants.dart';
import 'package:flutterclient/utilities/utility_helper.dart';

StatefulWidget ProjectsWidget(BuildContext context, togglePage, String searchInit, bool _isSolutions) {
    //var function = _isSolutions ? fetchContainerSubmissionsPost : fetchContainerProblemsPost;
    //var function = fetchContainerSubmissionsPost;
    //return new FutureBuilder<CommonContainerList>(function(), builder: (context, snapshot){
      //if(snapshot.hasData) {
        return ProjectsPageWidget(/*snapshot: snapshot,*/ searchInit: searchInit, /*isSolutions: _isSolutions,*/ togglePage: togglePage);
      //} else if (snapshot.hasError){
       // print(snapshot.error);
       // return new Container();
      //} else {
        //print("failed to get submissions for unknown reasons");
        //return new Container();
    //  }
    //});
}


class ProjectsPageWidget extends StatefulWidget {
  const ProjectsPageWidget({
    Key key,
   // @required this.snapshot,
    @required this.searchInit,
    //@required this.isSolutions,
    @required this.togglePage
  }) : super(key: key);

  //final AsyncSnapshot snapshot;
  final String searchInit;
  //final bool isSolutions;
  final Function togglePage;

  @override
  _ProjectsPageWidget createState() => _ProjectsPageWidget();
}

class _ProjectsPageWidget extends State<ProjectsPageWidget> with SingleTickerProviderStateMixin{

  String searchText = "";

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    searchText = widget.searchInit;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //TODO: maybe remove
        children: <Widget>[

          Container( //TODO: use Expanded?
              height: 1000,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 15,),
                  ProjectsListContainerWidget(/*snapshot: widget.snapshot,*/ context: context, searchText: searchText, togglePage: widget.togglePage),
              ]
            ),
          ),
         ],
      )
    );
  }
}

class ProjectsListContainerWidget extends StatelessWidget {
  const ProjectsListContainerWidget({
    Key key,
   // @required this.snapshot,
    @required this.context,
    @required this.searchText,
    @required this.togglePage
  }) : super(key: key);

  //final AsyncSnapshot snapshot;
  final BuildContext context;
  final String searchText;
  final Function togglePage;


  @override
  Widget build(BuildContext context) {
    //List<CommonContainer> submissions = snapshot.data.containerItems;
    List<Category> submissions = categories;
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      height: 950,
      color: Colors.grey[100],
      child: Column(
          children: (searchText == "" ? submissions : ((submissions.where((i) => i.id.contains(searchText.toLowerCase()) || i.categoryName.toLowerCase().contains(searchText.toLowerCase())))))
              .map((submission) => Container(
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  //submission.country,

                                    submission.categoryName,
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.deepOrange,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2
                                ),

                              ]),

                          SizedBox(height: 2,),
                        ]
                    )
                ),

                  Container(
                    height: 130,
                    width: width - 40,
                    margin: EdgeInsets.only(right: 16, left: 16, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                              onTap: () => togglePage(ExplorePage_Tab.summary_tab, true, submission),
                              child: Container(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
                                    child: Image(
                                      //image: AssetImage(getCoverImage(submission.imageUrl)),
                                      image: AssetImage(submission.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ),
                            )
                        ),

                      ],
                    )
                ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  //submission.country,

                                    "Recent Reward Points",
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto Mono'
                                    )
                                ),

                              ]),

                          SizedBox(height: 2,),
                        ]
                    )
                ),
                //Expanded(
                    /*child:*/ Container(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        height:150,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: transactions.length,
                            itemBuilder: (BuildContext context, int index){
                              Transaction tr = transactions[index];
                              return InkWell(
                                //onTap: () => setSearchAndToggle( category.categoryName),
                                child:
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Expanded (
                                                    flex: 1,
                                                    child:  Center(
                                                        child : Text(

                                                            tr.date,
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontFamily: 'roboto',
                                                                fontWeight: FontWeight.normal,
                                                                color: Colors.grey[800]
                                                            )
                                                        )

                                                    ),

                                                ),
                                                Expanded (
                                                  flex: 1,
                                                  child:  Center(
                                                      child : Text(

                                                          tr.amount,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'roboto',
                                                              fontWeight: FontWeight.normal,
                                                              color: Colors.grey[800]
                                                          )
                                                      )

                                                  ),

                                                ),
                                                Expanded (
                                                  flex: 1,
                                                  child:  Center(
                                                      child : Text(

                                                          tr.rewards,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'roboto',
                                                              fontWeight: FontWeight.normal,
                                                              color: Colors.grey[800]
                                                          )
                                                      )

                                                  ),

                                                ),
//
                                              ],
                                            )
                                          ]
                                      )
                                  )

                              );
                            }
                        )
                    ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  //submission.country,

                                    "Deals ",
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'roboto'
                                    )
                                ),

                              ]),

                          SizedBox(height: 2,),
                        ]
                    )
                ),
                //Expanded(
                /*child:*/ Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    height:150,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: deals.length,
                        itemBuilder: (BuildContext context, int index){
                          Deals deal = deals[index];
                          return InkWell(
                            //onTap: () => setSearchAndToggle( category.categoryName),
                              child:
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            /*Expanded (
                                              flex: 1,
                                              child:  (*/
                                            SizedBox(width: 10),

                                            Text(
                                                      deal.dealData,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'roboto',
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.grey[800]
                                                      )
                                                  ),

                                              /*),

                                            ),*/
                                            /*Expanded (
                                              flex: 1,
                                              child:  Center(
                                                  child : Text(

                                                      tr.amount,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily: 'roboto',
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.grey[800]
                                                      )
                                                  )

                                              ),

                                            ),
                                            Expanded (
                                              flex: 1,
                                              child:  Center(
                                                  child : Text(

                                                      tr.rewards,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily: 'roboto',
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.grey[800]
                                                      )
                                                  )

                                              ),

                                            ),*/
//
                                          ],
                                        )
                                      ]
                                  )
                              )

                          );
                        }
                    )
                )
                //)
              ],
            ),
          ))
        .toList()),
    );
  }
}

Container buildFilterWidget() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0,
                    )
                ),
                child: Text("Covid")
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0,
                    )
                ),
                child: Text("Parks")
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0,
                    )
                ),
                child: Text("Forest Fires")
            )
          ]
      )
  );
}