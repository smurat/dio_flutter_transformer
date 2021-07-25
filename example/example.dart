import 'package:dio/dio.dart';
import '../lib/dio_flutter_transformer2.dart';

main() async {
    var dio = Dio();
    // replace dio default transformer
    dio.transformer = new FlutterTransformer();

    //....
    Response response =
        await dio.get("https://api.github.com/orgs/flutterchina/repos");
    print(response.data);
}
