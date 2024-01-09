part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable {}

class WeatherInitialState extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoadingState extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherFailureState extends WeatherState {
  @override
  List<Object?> get props => [];
}

class WeatherSuccessState extends WeatherState {
  final Weather weather;

  WeatherSuccessState(this.weather);

  @override
  List<Object?> get props => [weather];
}