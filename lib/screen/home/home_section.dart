part of 'home_screen.dart';

class _Section extends StatelessWidget {
  const _Section({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 8),
        Container(
          height: 200,
          color: Colors.grey,
        ),
      ],
    );
  }
}
