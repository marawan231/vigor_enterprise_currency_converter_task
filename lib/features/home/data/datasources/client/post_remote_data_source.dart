import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/values.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';

part 'post_remote_data_source.g.dart';

/// `PostsWebService` is an abstract class that defines the API calls related to posts.
///
/// It is annotated with `@RestApi` to indicate that it is a REST API.
/// The `baseUrl` for the API is provided by `AppConstants.baseUrl`.
///
/// It has a factory constructor that takes a `Dio` instance and an optional `baseUrl` as parameters.
/// The constructor returns an instance of `_PostsWebService`.
///
/// It has a method `getAllPosts` that fetches all posts from the API.
/// This method is annotated with `@GET("posts")` to indicate that it is a GET request to the "posts" endpoint.
/// It takes `limit` and `page` as parameters, which are used to determine how many posts to fetch and from which page.
/// These parameters are annotated with `@Query` to indicate that they should be included in the query string of the API request.
/// Currently, `limit` and `page` are hardcoded.
@RestApi(baseUrl: AppConstants.baseUrl)
abstract class PostsWebService {
  factory PostsWebService(Dio dio, {String baseUrl}) = _PostsWebService;

  /// Method that fetches all posts from the API. and api key as  a query parameter
  @GET("currencies")
  Future<CurrencyData> getAllCurrencies(
    @Query('apikey') String apiKey,
  );
}
