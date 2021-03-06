import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_social_app/application/file/loader/file_loader_bloc.dart';
import 'package:my_social_app/presentation/common/my_dialog.dart';
import 'package:my_social_app/presentation/routes/router.gr.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({
    Key key,
    @required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FileLoaderBloc, FileLoaderState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loadSuccess: (state) => ExtendedNavigator.of(context).push(
            Routes.postFormPage,
            arguments: PostFormPageArguments(
              post: null,
              imageFile: state.file,
              userId: userId,
            ),
          ),
          loadFailure: (state) => FlushbarHelper.createError(
            message: state.failure.maybeMap(
              orElse: () => 'Something went wrong',
              cameraAccessDenied: (_) => 'Access camera denied',
              storageAccessDenied: (_) => 'Access storage denied',
              cancelled: (_) => 'Cancelled',
            ),
          ).show(context),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.camera_alt,
                  size: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                state.maybeMap(
                  orElse: () => RaisedButton(
                    onPressed: () =>
                        MyDialog.selectImageSource(context).then((value) {
                      if (value != null) {
                        context
                            .read<FileLoaderBloc>()
                            .add(FileLoaderEvent.getFileImage(value));
                      }
                    }),
                    child: const Text('Upload image'),
                  ),
                  loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
