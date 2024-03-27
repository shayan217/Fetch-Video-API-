import 'package:azhar_bhai_work_video_api/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VideoWorksController {
  static Future<List<VideoWorks>> fetchVideoWorks() async {
  try {
    var request = http.Request('GET', Uri.parse('http://dealsabaad.com:5001/deal/get/3'));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(await response.stream.bytesToString());
      
      if (jsonResponse.containsKey('id')) {
        return [VideoWorks.fromJson(jsonResponse)];
      }
      
      List<dynamic> deals = jsonResponse['DealImages'];
      return deals.map((data) => VideoWorks.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load VideoWorks: ${response.reasonPhrase}');
    }
  } catch (e) {
    throw Exception('Failed to load VideoWorks: $e');
  }
}


  static void loadVideoWorks() async {
    try {
      List<VideoWorks> videoWorks = await fetchVideoWorks();
      print(videoWorks);
    } catch (e) {
      print('Error: $e');
    }
  }
}
