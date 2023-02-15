import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_report/data/weather_list/repository/weather_list_repository.dart';
import 'package:weather_report/domain/data.dart';
import 'package:weather_report/domain/data_type.dart';
import 'package:weather_report/domain/date.dart';
import 'package:weather_report/domain/symbol.dart';
import 'package:weather_report/domain/weather_item.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_cubit.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_state.dart';

import 'weather_list_cubit_test.mocks.dart';

@GenerateMocks([WeatherListRepository])
void main() {
  group(
    'WeatherListCubit',
    () {
      final result = <WeatherItem>[
        WeatherItem(
          date: DateTime(2020, 2, 1, 12),
          temperature: 10.0,
          symbol: WeatherSymbol.cloudy,
          description: "Nuageux",
        )
      ];

      final repository = MockWeatherListRepository();

      blocTest<WeatherListCubit, WeatherListState>(
        'emit success when fetch is succeeding',
        setUp: () {
          when(repository.getDescriptions(any, any, any)).thenAnswer(
            (_) async => <WeatherItemDescription>[
              WeatherItemDescription(date: DateTime(2020, 2, 1, 12), description: "Nuageux"),
            ],
          );

          when(repository.getValues(any, any, any)).thenAnswer(
            (_) async => WeatherDatas(
              symbols: <WeatherDate>[WeatherDate.symbol(date: DateTime(2020, 2, 1, 12), symbol: WeatherSymbol.cloudy)],
              temperatures: <WeatherDate>[WeatherDate.temperature(date: DateTime(2020, 2, 1, 12), temperature: 10.0)],
            ),
          );
        },
        seed: () => const WeatherListState.loading(),
        build: () => WeatherListCubit(repository),
        act: (cubit) async => await cubit.fetch(
          current: DateTime(2020, 2, 1, 12),
          start: DateTime(2020, 2, 1, 12),
          end: DateTime(2020, 2, 1, 12),
        ),
        expect: () => [WeatherListState.loaded(result)],
      );

      blocTest<WeatherListCubit, WeatherListState>(
        'emit error when fetch failed',
        setUp: () {
          when(repository.getDescriptions(any, any, any)).thenAnswer(
            (_) async => <WeatherItemDescription>[
              WeatherItemDescription(date: DateTime(2020, 2, 1, 12), description: "Nuageux"),
            ],
          );

          when(repository.getValues(any, any, any)).thenThrow(MatchNotFoundException("Invalid Datatype"));
        },
        seed: () => const WeatherListState.loading(),
        build: () => WeatherListCubit(repository),
        act: (cubit) async => await cubit.fetch(
          current: DateTime(2020, 2, 1, 12),
          start: DateTime(2020, 2, 1, 12),
          end: DateTime(2020, 2, 1, 12),
        ),
        expect: () => [const WeatherListState.error()],
      );
    },
  );
}
