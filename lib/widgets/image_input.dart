import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class ImageInput extends StatefulWidget {
  final Function _saveImage;

  ImageInput(this._saveImage);
  @override
  State<StatefulWidget> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File _pickedImage;

  Future<void> _clickImage() async {
    final clickedImage = await ImagePicker()
        .pickImage(source: ImageSource.camera, maxWidth: 600);

    if (clickedImage == null) {
      return;
    }
    setState(() {
      _pickedImage = File(clickedImage.path);
    });

    final imageFileBaseName = basename(_pickedImage.path);
    final appDir = await getApplicationDocumentsDirectory();
    final pathName = appDir.path;
    _pickedImage.copy('$pathName/$imageFileBaseName');
    widget._saveImage(_pickedImage);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(border: Border.all()),
          child: (_pickedImage == null)
              ? Text(
                  'No Image Chosen',
                  textAlign: TextAlign.center,
                )
              : Image.file(
                  _pickedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextButton.icon(
            icon: Icon(Icons.camera),
            onPressed: _clickImage,
            label: Text('Take picture'),
          ),
        ),
      ],
    );
  }
}
