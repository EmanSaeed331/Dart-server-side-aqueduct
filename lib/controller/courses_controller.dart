import 'package:project3/project3.dart';

class CoursesController extends Controller {
  final List _courses = [
    {'id': 1, 'name': 'Dart Programming'},
    {'id': 2, 'name': 'Flutter'},
    {'id': 3, 'name': 'Java'},
  ];

  @override
  FutureOr<RequestOrResponse> handle(Request request) {
    switch (request.method) {
      case 'GET':
        return Response.ok(_courses);
        break;
      case 'POST':
        return Response.ok('POST Method');
        break;
      case 'PUT':
        return Response.ok('PUT Method');
        break;
      case 'DELETE':
        return Response.ok('DELETE Method');
        break;
      default:
        return Response.ok('UNDEFIEND');
    }
  }
}
