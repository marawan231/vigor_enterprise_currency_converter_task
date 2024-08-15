import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/post_remote_data_source.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';

abstract class PostsRemoteDataSourceAbstract {
  Future<CurrencyData> getAllCurrencies();
}

class PostsRemoteDataSourceImplement implements PostsRemoteDataSourceAbstract {
  // The web service that this data source uses to fetch posts.
  final PostsWebService postsWebService;

  // Constructor for `PostsRemoteDataSourceImplement`.
  PostsRemoteDataSourceImplement(this.postsWebService);

  @override
  Future<CurrencyData> getAllCurrencies() async {
    // Fetch the posts from the web service and return them.
    return await postsWebService
        .getAllCurrencies('fca_live_rlRMkAMOwSQAD5hZJeouLUYBsn75bjhqk5s3FHG8');
  }
}
