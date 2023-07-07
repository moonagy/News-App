import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:newsapp/controller/home_controller.dart';
import 'package:newsapp/data/model/articale.dart';


class Technology extends StatelessWidget {
  const Technology({super.key});

  @override
  Widget build(BuildContext context) {
     HomeController controller =  Get.put(HomeController());
    return   FutureBuilder(
        future: controller.getData(
          'technology'
        ),
        builder: (context , AsyncSnapshot snapshot){
          Articles data = snapshot.data ;
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: data.articles.length,
                itemBuilder: (context , int index){
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        color: Colors.white10,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              FadeInImage(
                                image: NetworkImage("${ data.articles[index].urlToImage}"),
                                placeholder:const AssetImage('assets/loading.jpg'),
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Lottie.asset('assets/lottie/loading.json');
                                },
                                fit: BoxFit.fitWidth,
                              ),

                              // Image.network(
                              //
                              //   '${ data.articles[index].urlToImage}',
                              //   fit: BoxFit.fill,
                              // ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${data.articles[index].title}",
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${data.articles[index].description}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
            );
          }
          else{
            return  const Center(
              child: Text('Loading ....'),
            );
          }
        }
    ) ;
  }
}
