import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailTravelDescription extends StatefulWidget {
  const DetailTravelDescription({ super.key });

  @override
  State <DetailTravelDescription> createState() => _DetailTravelDescriptionState();
}

class _DetailTravelDescriptionState extends State<DetailTravelDescription> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed metus et dui euismod dapibus. Fusce velit lorem, pretium eget eros ac, pretium condimentum purus. Aliquam urna arcu, sodales ut elit imperdiet, lacinia auctor magna. Pellentesque a ipsum consequat, elementum nisl non, congue elit. Aenean laoreet viverra neque, quis venenatis ante gravida vel. Integer hendrerit, quam et tempor suscipit, mi urna ornare erat, at dignissim felis est ac enim. Vestibulum gravida nibh vel maximus ultrices. Nam consequat volutpat rutrum. Curabitur luctus convallis neque. Sed sed arcu sed diam lacinia convallis nec vitae elit. Sed et odio aliquam, faucibus lorem in, commodo neque. Aenean bibendum risus in felis mattis feugiat. Ut in lectus nec nisl ornare facilisis.\n\nQuisque non tellus metus. Nam porttitor mauris lorem, a lacinia massa vehicula eu. Curabitur condimentum ac quam et faucibus. Morbi sem felis, imperdiet sollicitudin rutrum sit amet, mollis a augue. Pellentesque sit amet enim nunc. Vivamus orci velit, varius eu velit pharetra, varius maximus arcu. Aenean rhoncus maximus tortor sed maximus. Vivamus tincidunt sed lectus non euismod. Ut eu dui a elit laoreet scelerisque nec aliquet eros.",
      style: TextStyle(
        fontSize: 10,
        fontFamily: getCustomFont
      ),
      textAlign: TextAlign.justify,
    );
  }
}