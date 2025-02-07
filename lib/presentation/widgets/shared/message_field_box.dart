
class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: colors.transparent),
      borderRadius: BorderRadius.circular(40)
    )

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('button: $textValue');
            textController.clear();
          },
        ),
      ),
      onFieldSubmitted: (value) {
        print('submit: $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}