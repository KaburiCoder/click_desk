import 'package:carousel_slider/carousel_slider.dart';
import 'package:click_desk/features/regist/inputs_widget.dart';
import 'package:click_desk/features/regist/inputs_widget2.dart';
import 'package:click_desk/models/checkin_state/checkin_state.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/shared/providers/checkin/checkin_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistCarousel extends ConsumerStatefulWidget {
  const RegistCarousel({super.key});

  @override
  ConsumerState<RegistCarousel> createState() => _RegistCarouselState();
}

class _RegistCarouselState extends ConsumerState<RegistCarousel> {
  final CarouselController _controller = CarouselController();
  final GlobalKey<InputsWidget2State> widget2Key =
      GlobalKey<InputsWidget2State>();

  void _nextPage() {
    setState(() {
      _controller.nextPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: _controller,
      itemCount: 2,
      options: CarouselOptions(
        viewportFraction: 1.0,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        enableInfiniteScroll: false,
        onPageChanged: (index, reason) {
          if (index == 1) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              widget2Key.currentState?.focusPhoneNum2();
            });
          }
        },
      ),
      itemBuilder: (context, index, realIndex) {
        final widgets = [
          InputsWidget(
            onNext: ({required jumin, required suname}) async {
              ref
                  .read(checkinProvider.notifier)
                  .setNewPatient1(suname: suname, jumin: jumin);
              _nextPage();
            },
          ),
          InputsWidget2(
            key: widget2Key,
            onSubmit: (
                {required address,
                required addressDetail,
                required phoneNumber,
                required postalCode}) {
              final checkinNotifier = ref.read(checkinProvider.notifier);
              checkinNotifier.setNewPatient2(
                phoneNumber: phoneNumber,
                postalCode: postalCode,
                address: address,
                addressDetail: addressDetail,
              );
              checkinNotifier.setStartType(StartType.first);
              Nav.of(context).pushSelectDoctor();
            },
          )
        ];

        return widgets[index];
      },
    );
  }
}
