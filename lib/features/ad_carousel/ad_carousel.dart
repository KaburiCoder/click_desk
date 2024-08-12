import 'dart:async';
import 'dart:math';

import 'package:click_desk/features/ad_carousel/animation/animated_text_color.dart';
import 'package:click_desk/features/ad_carousel/api/ad_file_api.dart';
import 'package:click_desk/routes/route_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdCarousel extends ConsumerStatefulWidget {
  const AdCarousel({super.key});

  @override
  ConsumerState<AdCarousel> createState() => _AdCarouselState();
}

class _AdCarouselState extends ConsumerState<AdCarousel> with RouteAware {
  Timer? _timer;
  bool _touched = false;
  bool _isDataEmpty = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @override
  void didPush() {}

  @override
  void didPop() {}

  @override
  void didPushNext() {
    _timer?.cancel();
  }

  @override
  void didPopNext() {
    setState(() {
      if (_isDataEmpty) final _ = ref.refresh(adFileApiProvider);
      _touched = false;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_touched) return const SizedBox.shrink();

    final size = MediaQuery.of(context).size;
    final asyncValue = ref.watch(adFileApiProvider);
    return asyncValue.when(
      data: (data) {
        _isDataEmpty = data.isEmpty;
        if (_isDataEmpty) {
          return const SizedBox.shrink();
        }
        final initialPage = data.length > 1 ? Random().nextInt(data.length) : 0;
        return GestureDetector(
          onTap: () => setState(() {
            _touched = true;

            _timer = Timer(
              const Duration(seconds: 10),
              () {
                _timer?.cancel();
                if (mounted && _touched) {
                  setState(() {
                    _touched = false;
                  });
                }
              },
            );
          }),
          child: Stack(
            children: [
              FlutterCarousel(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  viewportFraction: 1.0,
                  autoPlay: data.length > 1,
                  autoPlayInterval: const Duration(seconds: 5),
                  height: size.height,
                  showIndicator: true,
                  slideIndicator: const CircularSlideIndicator(),
                  initialPage: initialPage,
                ),
                items: data.map((file) {
                  final image = Image.file(file, fit: BoxFit.fill);
                  precacheImage(image.image, context);
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: image,
                      );
                    },
                  );
                }).toList(),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedTextColor(),
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return const SizedBox.shrink();
      },
      loading: () {
        return const SizedBox.shrink();
      },
    );
    // return FlutterCarousel(
    //   options: CarouselOptions(
    //     enableInfiniteScroll: true,
    //     viewportFraction: 1.0,
    //     autoPlay: true,
    //     autoPlayInterval: const Duration(seconds: 5),
    //     height: size.height,
    //     showIndicator: true,
    //     slideIndicator: const CircularSlideIndicator(),
    //   ),
    //   items: [
    //     "assets/images/img1.png",
    //     "assets/images/img2.png",
    //     "assets/images/img3.png",
    //     "assets/images/img4.png",
    //   ].map((i) {
    //     return Builder(
    //       builder: (BuildContext context) {
    //         return Container(
    //           width: MediaQuery.of(context).size.width,
    //           decoration: const BoxDecoration(color: Colors.amber),
    //           child: Image.asset(
    //             i,
    //             // width: MediaQuery.of(context).size.width,
    //             fit: BoxFit.cover,
    //           ),
    //         );
    //       },
    //     );
    //   }).toList(),
    // );
  }
}
