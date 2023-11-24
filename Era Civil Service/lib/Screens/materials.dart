import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class MaterialsPage extends StatefulWidget {
  final int courseId;
  final int? userId;

  MaterialsPage({required this.userId, required this.courseId});

  @override
  _MaterialsPageState createState() => _MaterialsPageState();
}

class _MaterialsPageState extends State<MaterialsPage> {
  List<dynamic> _materials = [];

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _downloadFile(String fileUrl) async {
    Uri url = Uri.parse('https://theeracivilservice.com/storage/pdf/$fileUrl');

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchMaterials();
  }

  Future<void> _fetchMaterials() async {
    var response = await http.get(Uri.parse(
        'https://theeracivilservice.com/api/materials/${widget.courseId}'));
    if (response.statusCode == 200) {
      setState(() {
        _materials = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Materials',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue[50],
      ),
      body: _materials.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _materials.length,
              itemBuilder: (context, index) {
                final material = _materials[index];
                return ListTile(
                  title: Text(
                    material['topic'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(material['material']),
                  trailing: ElevatedButton(
                    onPressed: () async {
                      // Download the file when the button is pressed
                      await _downloadFile(material['material']);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[900],
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    child: Text('Download'),
                  ),
                );
              },
            ),
    );
  }
}
