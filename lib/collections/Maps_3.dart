// Generics with collections
// You can declare collection variables without generics like this:

List? myList;
Map? myMap;

// That code is equivalent to the following:

List<dynamic>? myList_1;
Map<dynamic, dynamic>? myMap_1;

//list with values of a particular type
List<String>? myList_2;

// if you intend for a map to contain keys and values
// of a particular type, include them in the declaration:

Map<String, dynamic>? jsonData;
Map<int, String>? myMap_3;

// With maps, the first type within the angle brackets constrains
// the map's keys while the second does the same for the map's values.
// It should be noted that Dart allows you to use any type for map keys,
//  whereas in some languages only strings are allowed.

Map<String, int> map1 = {'zero': 0, 'one': 1, 'two': 2};

//not specify key-value type
Map map2 = {'zero': 0, 'I': 1, 10: 'X'};

var map3 = {'zero': 0, 'I': 1};

// Remember that when we use Map or var, the type will always be LinkedHashMap

Map<String, int> map_1 = {'zero': 0, 'two': 2};

Map map_2 = Map.from(map_1);

Map map_3 = Map.of(map_1);
