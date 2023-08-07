import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate(),);
          }, icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(color: Colors.purple[100], borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text("Tap the search button to search the name of a princess.", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.purple,),)),
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms=[
    'Jasmine',
    'Rapunzel',
    'Cinderella',
    'Belle',
    'Snow white',
    'Aurora',
    'Ariel',
    'Moana',
    'Elsa',
  ];
  @override
  List<Widget> buildActions(BuildContext context){
    return[
      IconButton(icon: const Icon(Icons.clear),
        onPressed: () {
          query='';
      },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
          close(context, null);
          },
    );
  }

  @override
  Widget buildResults(BuildContext context){
    List<String> matchQuery=[];
    for (var princess in searchTerms){
      if(princess.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(princess);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length, itemBuilder: (context,index) { var result=matchQuery[index];
          return ListTile(title: Text(result),);}, );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery=[];
    for (var princess in searchTerms){
      if(princess.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(princess);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length, itemBuilder: (context,index) { var result=matchQuery[index];
    return ListTile(title: Text(result),);}, );
  }
}