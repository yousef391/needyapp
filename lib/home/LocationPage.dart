import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class LocationPage extends StatefulWidget {
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  LatLng currentLocation = LatLng(36.46, 3.0331);
  MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Align(
          alignment: Alignment(0.95, 0.95),
          child: FloatingActionButton(
            onPressed: () {
              _getCurrentLocation();
            },
            child: Icon(Icons.my_location),
            backgroundColor: Color(0xff0097b2),
          ),
        ),
        body: Center(
          child: FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: currentLocation ?? LatLng(0, 0),
              zoom: 7.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              if (currentLocation != null)
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 40.0,
                      height: 40.0,
                      point: currentLocation,
                      builder: (ctx) => Container(
                        child: Icon(Icons.location_on, color: Colors.red),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      setState(() {
        currentLocation = LatLng(position.latitude, position.longitude);
      });
      mapController.move(currentLocation, 13.0);
    } catch (e) {
      print('Error getting location: $e');
    }
  }
}