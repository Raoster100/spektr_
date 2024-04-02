import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    super.key,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late final MapController _mapController;

  List<LatLng> get _mapPoint => const [
        LatLng(44.707867, 37.772178),
    //TODO: Hive coordinates
      ];

  @override
  void initState() {
    _mapController = MapController();
    super.initState();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  List<Marker> _getMarkers(List<LatLng> mapPoints) {
    return List.generate(
      mapPoints.length,
      (index) => Marker(
        point: mapPoints[index],
        child: CupertinoButton(
            onPressed: () {
              MapsLauncher.launchCoordinates(44.707867, 37.772178);
              //TODO: Hive coordinates
            },
            child: Icon(size: 36, color: Colors.red, Icons.room_outlined)),
        width: 100,
        height: 100,
        alignment: Alignment.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        initialCenter: LatLng(44.707867, 37.772178),
        //TODO: Hive coordinates
        initialZoom: 17,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.flutter_map_example',
        ),
        MarkerLayer(
          markers: _getMarkers(_mapPoint),
        ),
      ],
    );
  }
}
