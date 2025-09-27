import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'anime_details_state.dart';

class AnimeDetailsCubit extends Cubit<AnimeDetailsState> {
  AnimeDetailsCubit() : super(AnimeDetailsInitial());
}
