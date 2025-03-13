import 'package:flutter_bloc/flutter_bloc.dart';
import 'internships_state.dart';

class InternshipsCubit extends Cubit<InternshipsState> {
  InternshipsCubit() : super(InternshipsState());

  void addInternship() {
    final updatedList = List.of(state.internshipsList)..add("New Internship");
    emit(InternshipsState(internshipsList: updatedList));
  }

  void removeInternship(int index) {
    final updatedList = List.of(state.internshipsList)..removeAt(index);
    emit(InternshipsState(internshipsList: updatedList));
  }
}
