import 'package:project3/project3.dart';

class CoursesController extends ResourceController {
  final List _courses = [
    {'id': 1, 'name': 'Dart Programming'},
    {'id': 2, 'name': 'Flutter'},
    {'id': 3, 'name': 'Java'},
  ];

  @Operation.get()
  Future<Response> getAllCourses() async {
    return Response.ok(_courses);
  }

  @Operation.get('id')
  Future<Response> getCourseID(@Bind.path('id') int id) async {
    final course = _courses.firstWhere((element) => element['id'] == id,
        orElse: () => null);
    if (course == null) {
      return Response.notFound();
    }
    return Response.ok(course);
  }
}
