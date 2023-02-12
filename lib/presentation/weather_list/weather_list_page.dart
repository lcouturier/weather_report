import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_report/data/weather_list/repository/weather_list_repository.dart';
import 'package:weather_report/data/weather_list/source/weather_list_source.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_cubit.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_state.dart';
import 'package:weather_report/presentation/widgets/image.dart';

class WeatherListPage extends StatefulWidget implements AutoRouteWrapper {
  const WeatherListPage({super.key});

  @override
  State<WeatherListPage> createState() => _WeatherListPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<WeatherListCubit>(
      create: (context) => WeatherListCubit(WeatherListRepository(WeatherListSource())),
      child: this,
    );
  }
}

class _WeatherListPageState extends State<WeatherListPage> {
  late WeatherListCubit _weatherListCubit;
  @override
  void initState() {
    super.initState();
    _weatherListCubit = context.read<WeatherListCubit>();
    _weatherListCubit.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bonjour Laurent"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return BlocBuilder<WeatherListCubit, WeatherListState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (items) {
            return ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  isThreeLine: true,
                  leading: WeatherImage(item.symbol.image),
                  title: Text(DateFormat("d MMMM yyyy HH:mm").format(item.date.toLocal())),
                  subtitle: Text("Température : ${item.temp}° .", maxLines: 1, textAlign: TextAlign.left),
                  trailing: svgLoad("arrow_right.svg", colorTint: Colors.blueGrey.shade500),
                );
              },
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
