abstract class BaseApiServices {
  Future<dynamic> getGetResponse(String url);

  Future<dynamic> getPostApiResponse(String url, dynamic data);
}
