import 'package:flutter_application_1/rest_api_example_programming_addict/models/api_response.dart';

import 'models/note_for_listing.dart';
import 'package:http/http.dart' as http;

class NotesService {

  static const API = 'http://api.notes.programmingaddict.com';
  static const headers = {};

  Future<APIResponse<List<NoteForListing>>> getNotesList(){
      return http.get(Uri.parse(API + '/notes'))
          .then((data){
          if(data.statusCode == 200){

          }
          throw{};
      });
  }

  //this data is replaced by the above json data via a http request
  // List<NoteForListing>getNotesList(){
  //
  //   return [
  //   NoteForListing(
  //     noteID: "1",
  //     noteTitle: "Note 1",
  //     createDateTime: DateTime.now(),
  //     latestEditDateTime: DateTime.now(),
  //   ),
  //   NoteForListing(
  //   noteID: "2",
  //   noteTitle: "Note 2",
  //   createDateTime: DateTime.now(),
  //   latestEditDateTime: DateTime.now(),
  //   ),
  //   NoteForListing(
  //   noteID: "3",
  //   noteTitle: "Note 3",
  //   createDateTime: DateTime.now(),
  //   latestEditDateTime: DateTime.now(),
  //   ),
  //   NoteForListing(
  //   noteID: "4",
  //   noteTitle: "Note 4",
  //   createDateTime: DateTime.now(),
  //   latestEditDateTime: DateTime.now(),
  //   ),
  //   ];
  // }
}