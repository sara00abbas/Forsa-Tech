import 'package:flutter_bloc/flutter_bloc.dart';
import 'skills_state.dart';

class SkillsCubit extends Cubit<SkillsState> {
  SkillsCubit() : super(SkillsState());

  void addSkill() {
    final updatedList = List.of(state.skillsList)..add("New Skill");
    emit(SkillsState(skillsList: updatedList));
  }

  void removeSkill(int index) {
    final updatedList = List.of(state.skillsList)..removeAt(index);
    emit(SkillsState(skillsList: updatedList));
  }
}
