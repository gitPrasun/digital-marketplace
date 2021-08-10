import 'package:graphql_flutter/graphql_flutter.dart';

class Config {
  static final HttpLink httpLink = HttpLink(
    'https://hasura.io/learn/graphql',
  );
  static String? _token;
  static final AuthLink authLink = AuthLink(getToken: () => _token);

  static final WebSocketLink websocketLink =
  WebSocketLink(
   'wss://hasura.io/learn/graphql',
    config: SocketClientConfig(
      autoReconnect: true,
      inactivityTimeout: Duration(seconds: 30),
      initialPayload: () async {
        return {
          'headers': {'Authorization': _token},
        };
      },
    ),
  );



}
