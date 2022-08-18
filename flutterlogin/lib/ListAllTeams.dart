import 'package:flutter/material.dart';
import 'package:flutterlogin/DetailView.dart';
import 'package:flutterlogin/PremierLeagueModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListAllFootball extends StatefulWidget {
  const ListAllFootball({Key? key}) : super(key: key);

  @override
  State<ListAllFootball> createState() => _ListAllFootballState();
}

class _ListAllFootballState extends State<ListAllFootball> {
  PremierLeagueModel? premiereLeagueModel;
  bool isloaded = true;
  void getAllListPL() async {
    setState(() {
      isloaded = false;
    });
    final res = await http.get(
      Uri.parse(
          "https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League"),
    );
    print("status code " + res.statusCode.toString());
    premiereLeagueModel =
        PremierLeagueModel.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + premiereLeagueModel!.teams![0].strTeam.toString());
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    getAllListPL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 186, 118, 1),
        title: Text("List Premiere League"),
      ),
      body: Center(
        child: Container(
          child: isloaded
              ? ListView.builder(
                  itemCount: premiereLeagueModel!.teams!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => DetailPage(
                                      title: premiereLeagueModel!
                                          .teams![index].strTeam
                                          .toString(),
                                      description: premiereLeagueModel!
                                          .teams![index].strDescriptionEN
                                          .toString(),
                                      image: premiereLeagueModel!
                                          .teams![index].strTeamLogo
                                          .toString(),
                                      stadium: premiereLeagueModel!
                                          .teams![index].strStadium
                                          .toString(),
                                      descriptionStadium: premiereLeagueModel!
                                          .teams![index].strStadiumDescription
                                          .toString(),
                                    )));
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.network(
                                      width: 33,
                                      height: 33,
                                      scale: 0.5,
                                      premiereLeagueModel!
                                          .teams![index].strTeamLogo
                                          .toString())),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(premiereLeagueModel!
                                        .teams![index].strTeam
                                        .toString()),
                                    Text(premiereLeagueModel!
                                        .teams![index].strStadium
                                        .toString()),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
