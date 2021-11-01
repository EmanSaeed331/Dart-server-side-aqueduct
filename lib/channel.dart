import 'package:project3/controller/courses_controller.dart';

import 'project3.dart';

class Project3Channel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();
    router.route("/example").linkFunction((request) async {
      return Response.ok({"key": "examples"});
    });
    router.route('/courses/[:id]').link(() => CoursesController());

    return router;
  }
}
