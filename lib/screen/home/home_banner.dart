part of 'home_screen.dart';

class _Banner extends StatelessWidget {
  const _Banner();

  @override
  Widget build(BuildContext context) {
    // Rowのパターン
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Flexible(
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(8),
    //         child: Image.asset(
    //           'banner.png',
    //           fit: BoxFit.fitHeight,
    //           // 幅が700以下なら、画像の高さを150にする
    //           height: bannerWidth <= 700 ? 150 : 300,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    // バナーの幅を取得
    final bannerWidth = MediaQuery.of(context).size.width - 32;

    // ListViewの最小幅制約を解除している
    return UnconstrainedBox(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          // 最大幅の制約も消えるので指定
          maxWidth: bannerWidth,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'banner.png',
            fit: BoxFit.fitHeight,
            // 幅が700以下なら、画像の高さを150にする
            height: bannerWidth <= 700 ? 150 : 300,
          ),
        ),
      ),
    );
  }
}
