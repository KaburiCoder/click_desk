import 'package:carousel_slider/carousel_slider.dart';
import 'package:click_desk/constants/font_family.dart';
import 'package:click_desk/constants/lottie_paths.dart';
import 'package:click_desk/models/checkin_state/checkin_state.dart';
import 'package:click_desk/widgets/regist/inputs_widget.dart';
import 'package:click_desk/widgets/regist/inputs_widget2.dart';
import 'package:click_desk/providers/checkin/checkin_provider.dart';
import 'package:click_desk/routes/nav.dart';
import 'package:click_desk/widgets/left_wrapper.dart';
import 'package:click_desk/widgets/lottie.dart';
import 'package:click_desk/widgets/right_container.dart';
import 'package:click_desk/widgets/tab_outside_to_close_keyboard.dart';
import 'package:click_desk/widgets/texts/base_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegistPage extends ConsumerStatefulWidget {
  const RegistPage({super.key});

  @override
  ConsumerState<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends ConsumerState<RegistPage> {
  final CarouselController _controller = CarouselController();
  final GlobalKey<InputsWidget2State> widget2Key =
      GlobalKey<InputsWidget2State>();

  void _nextPage() {
    setState(() {
      _controller.nextPage();
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TapOutsideToCloseKeyboard(
      child: Row(
        children: [
          // Left
          LeftWrapper(
            flex: 3,
            logoTextColor: Colors.indigo[600]!,
            backgroundColor: Colors.white,
            navButtonColor: Colors.blue[300],
            bodyWidget: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HelloWidget(),
                  LottieAnimation(
                    LottiePaths.write,
                    duration: 3000,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: RightContainer(
                padding: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height,
                child: CarouselSlider.builder(
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
                          final checkinNotifier =
                              ref.read(checkinProvider.notifier);
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EvButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double minWidth;
  final double minHeight;
  final bool isLoading;
  final Color backgroundColor;
  const EvButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.minWidth = 300,
    this.minHeight = 65,
    this.backgroundColor = Colors.black38,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minWidth, minHeight),
        backgroundColor: backgroundColor,
      ),
      onPressed: isLoading ? null : onPressed,
      child: IntrinsicWidth(
        child: Row(
          children: [
            if (isLoading)
              Container(
                  margin: const EdgeInsets.only(right: 24),
                  child: const CircularProgressIndicator()),
            BaseText(text, fontSize: 24, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class HelloWidget extends ConsumerWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseText("인적사항을",
            fontSize: 40, bold: true, fontFamily: FontFamily.kccHanbit),
        BaseText("입력해주세요.",
            fontSize: 40, bold: true, fontFamily: FontFamily.kccHanbit),
      ],
    );
  }
}
