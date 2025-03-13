import 'package:flutter_bloc/flutter_bloc.dart';
import 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesState());

  void addCourse() {
    final updatedList = List.of(state.coursesList)..add("New Course");
    emit(CoursesState(coursesList: updatedList));
  }

  void removeCourse(int index) {
    final updatedList = List.of(state.coursesList)..removeAt(index);
    emit(CoursesState(coursesList: updatedList));
  }
}
