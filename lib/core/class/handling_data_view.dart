import 'package:flutter/cupertino.dart';
import 'package:newsapp/core/class/statusrequest.dart';

class handlingDataView extends StatelessWidget {
  final StatusRequest statusRequest ;
  final Widget widget ;
  const handlingDataView({super.key, required this.statusRequest, required this.widget});
  @override
  Widget build(BuildContext context) {
    return
      statusRequest == StatusRequest.loading ?
       const Center(
        child: Text('Loading....'),
      ) :
      statusRequest == StatusRequest.offLineFailure ?
       const Center(
        child:Text('offLine....') ,
      )
          :
      statusRequest == StatusRequest.serverFailure ?
       const Center(
        child: Text('Server....'),
      ) :
      statusRequest == StatusRequest.failure ?
       const Center(
        child: Text('NoData....'),
      ): widget ;
  }
}
