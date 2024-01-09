part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent extends Equatable {}

class FetchWeatherEvent extends WeatherEvent {
  final Position position;

  FetchWeatherEvent(this.position);

  @override
  List<Object> get props => [position];
}