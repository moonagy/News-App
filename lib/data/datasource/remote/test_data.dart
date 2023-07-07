
import 'package:newsapp/core/class/crud.dart';

class TestData{
   Crud crud ;
  TestData(this.crud);
 Future <dynamic> getData() async {
  var response  = await crud.getData( 'https://newsapi.org/v2/top-headlines?country=us&apiKey=72a4dfb14caf4a899b63dbf1ee9bab9f' , {});
     return response.fold((l) => l, (r) => r);
  }

}