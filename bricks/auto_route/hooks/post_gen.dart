import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing Packages');

  await Process.run('bash', ['-c', 'flutter pub add auto_route']);
  await Process.run('bash', ['-c', 'flutter pub get']);

  progress.complete();
  context.logger.success('Done instaling packages!');
}
