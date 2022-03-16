import 'package:flutter/material.dart';
import 'package:hello_app/app_search_textfield.dart';
import 'package:hello_app/screens/add_new_job.dart';
import 'package:hello_app/screens/edit_job.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  List<Jobs> postJob = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff191720),
        body: Padding(
          padding: const EdgeInsets.only(top: 79, left: 27, right: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Muhammad Anas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                      height: 25,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                height: 19,
              ),
              AppSearchTextField(placeHolder: 'Search keywords..'),
              SizedBox(
                height: 26,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: postJob.length, itemBuilder: jobPostList),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffE5E5E5),
            onPressed: () {
              Navigator.push<Jobs>(context,
                      MaterialPageRoute(builder: (context) => AddNewJob()))
                  .then((value) => setState(() {
                        postJob.add(value!);
                      }));
            },
            child: Icon(
              Icons.add,
              color: Color(0xff191720),
            )));
  }

  Widget jobPostList(BuildContext context, int index) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color(0xff201E27), borderRadius: BorderRadius.circular(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(postJob[index].postionName,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                postJob[index].jobDescribe,
                style: TextStyle(color: Color(0xff8F8F9E), fontSize: 12),
              )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditJob()));
                },
                child: Icon(
                  Icons.edit_note_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    postJob.removeAt(index);
                  });
                },
                child: Icon(
                  Icons.delete_forever_outlined,
                  color: Color(0xffFF5959),
                ),
              )
            ],
          ),
        ]),
      ));
}
