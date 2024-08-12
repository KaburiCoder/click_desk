import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class IProviderManagerBase<TState, TNotifier> {
  final WidgetRef ref;
  const IProviderManagerBase(this.ref);

  TState watch();
  TNotifier read();
}
