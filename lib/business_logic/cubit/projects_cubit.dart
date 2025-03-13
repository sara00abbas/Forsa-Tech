import 'package:flutter_bloc/flutter_bloc.dart';
import 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsState());

  void addProject() {
    final updatedList = List.of(state.projectsList)..add("New Project");
    emit(ProjectsState(projectsList: updatedList));
  }

  void removeProject(int index) {
    final updatedList = List.of(state.projectsList)..removeAt(index);
    emit(ProjectsState(projectsList: updatedList));
  }
}
