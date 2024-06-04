import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';

const kShrineSurfaceWhite = Colors.white;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: kShrinePurple,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
            color: kShrineSurfaceWhite,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Abdi Setiawan - 2200016103',
          style: TextStyle(color: kShrineSurfaceWhite),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
              color: kShrineSurfaceWhite,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
              color: kShrineSurfaceWhite,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(Category.all),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
