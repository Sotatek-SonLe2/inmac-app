import 'package:json_annotation/json_annotation.dart';

enum MessageType { error, success }

enum Order { asc, desc }

enum StateStatus { initial, loading, success, failure }


enum Trend {
  theSame("the_same"),
  trendingUp("trending_up"),
  trendingDown("trending_down");

  final String name;

  const Trend(this.name);
}

enum StringCase {
  upperCase,
  lowerCaseCase,
  camelCase,
  pascalCase,
  snakeCase,
  titleCase,
}
