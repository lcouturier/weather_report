import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/core/injection/injection.dart';
import 'package:weather_report/core/themes/styles.dart';
import 'package:weather_report/domain/weather_item.dart';
import 'package:weather_report/presentation/error/error_page.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_cubit.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_state.dart';
import 'package:weather_report/presentation/widgets/core/extensions.dart';
import 'package:weather_report/presentation/widgets/core/padding_extensions.dart';
import 'package:weather_report/presentation/widgets/image.dart';

class WeatherListPage extends StatefulWidget implements AutoRouteWrapper {
  final String name;
  const WeatherListPage({super.key, required this.name});

  @override
  State<WeatherListPage> createState() => _WeatherListPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<WeatherListCubit>(
      create: (context) => WeatherListCubit(getIt()),
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
        title: Text(
          "Bonjour ${widget.name}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => _weatherListCubit.fetch(cacheStrategy: CacheStrategy.forceReload),
        child: _body().paddingOnly(top: 10),
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<WeatherListCubit, WeatherListState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (items) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return _buildTile(index, item);
              },
            );
          },
          loading: () => _loading(),
          orElse: () => Center(child: WeatherError(onRefresh: () => _weatherListCubit.fetch())),
        );
      },
    );
  }

  Widget _buildTile(int index, WeatherItem item) {
    return ExpansionTile(
      initiallyExpanded: index == 0,
      leading: WeatherImage(item.symbol!.image),
      title: Text(DateFormat("d MMMM yyyy HH:mm").format(item.date.toLocal()), style: bodyMediumStyle),
      subtitle:
          Text("Temp??rature : ${item.temperature}??", maxLines: 1, textAlign: TextAlign.left, style: bodyMediumStyle),
      children: <Widget>[
        ListTile(
          title: Text(item.description!, style: bodyMediumStyle.copyWith(color: Colors.blueGrey.shade400)),
        )
      ],
    );
  }

  Widget _loading() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ExpansionTile(
          initiallyExpanded: false,
          leading: Container(
            margin: 12.0.left,
            height: 44.0,
            width: 44.0,
            padding: 12.0.all,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              color: Colors.blueGrey.shade200,
            ),
          ).addShimmer(),
          title: Container(
            height: 44,
            width: 80,
            padding: 12.0.all,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              color: Colors.blueGrey.shade200,
            ),
          ).addShimmer(),
        );
      },
    );
  }
}
