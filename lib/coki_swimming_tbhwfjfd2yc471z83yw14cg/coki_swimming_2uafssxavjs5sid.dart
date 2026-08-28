part of '../main.dart';

class CokiSwimmingH5pg39ahrqsnlroy05t extends StatelessWidget {
  const CokiSwimmingH5pg39ahrqsnlroy05t({
    super.key,
    required this.rjf8j17cujr6k8r7,
    required this.jtbcyvu9u14hcgpjw,
    required this.ack04s1ztuzmqmgyu8nh,
    this.lxbqnkelefjldysqof = 'Please enter',
  });

  final String rjf8j17cujr6k8r7;
  final int jtbcyvu9u14hcgpjw;
  final TextEditingController ack04s1ztuzmqmgyu8nh;
  final String lxbqnkelefjldysqof;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          rjf8j17cujr6k8r7,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            height: 25.2 / 18,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 9),
        TextField(
          controller: ack04s1ztuzmqmgyu8nh,
          maxLines: jtbcyvu9u14hcgpjw,
          style: const TextStyle(
            color: Color(0xFF100A30),
            fontSize: 16,
            height: 22.4 / 16,
            letterSpacing: 0,
          ),
          decoration: InputDecoration(
            hintText: lxbqnkelefjldysqof,
            hintStyle: TextStyle(
              color: const Color(0xFF100A30).withValues(alpha: 0.42),
              fontSize: 12,
              height: 1.2,
              letterSpacing: 0,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(
              15,
              jtbcyvu9u14hcgpjw > 1 ? 15 : 17,
              15,
              jtbcyvu9u14hcgpjw > 1 ? 15 : 17,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
