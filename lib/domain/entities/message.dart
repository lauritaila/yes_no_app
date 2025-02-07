
enum FromWho {mine, his}

class Message{
  final Sting text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({required this.text, this.imageUrl, required this.fromWho});
}