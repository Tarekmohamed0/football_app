
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class MatchdetailscreenRepositoryImp implements MatchdetailscreenRepository{

        final MatchdetailscreenRemoteDataSource remoteDataSource;
        MatchdetailscreenRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    