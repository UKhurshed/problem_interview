import 'package:bloc/bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickCubit extends Cubit<XFile?> {
  ImagePickCubit() : super(null);

  pickImage(XFile file) {
    emit(file);
  }

  remove() {
    emit(null);
  }
}
