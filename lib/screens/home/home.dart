import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/screens/home/widgets/details.dart';
import 'package:tudo_gostoso/screens/home/widgets/list_elements.dart';
import 'package:tudo_gostoso/style.dart';

class Home extends StatelessWidget {
  final Recipe recipe = Recipe(
    photo: "assets/images/bolo.jpg",
    name: "Bolo Gelado",
    preparationTime: 40,
    numberOfFavorites: 332936,
    numberOfComments: 6847,
    income: 12,
    ingredientsPasta: [
      "4 ovos;",
      "2 xícaras (chá) de açúcar;",
      "3 xícaras (chá) de farinha de trigo;",
      "1 copo (americano) de suco de laranja;",
      "1 colher (sopa) de fermento em pó.",
    ],
    ingredientsRoof: [
      "1 garrafa pequena de leite de coco;",
      "1 garrafa de leite (utilize a mesma garrafa do leite de coco como medida);",
      "1 lata de leite condensado;",
      "1 pacote de coco ralado sem açúcar.",
    ],
    preparationPasta: [
      "Em uma batedeira, bata as claras em neve acrescentando o açúcar aos poucos e bata por 3 minutos;",
      "Adicione as gemas, o trigo, o suco e continue batendo até formar uma massa homogênea;",
      "Por último, adicione o fermento e bata por mais 40 segundos na menor velocidade da batedeira;",
      "Despeje a massa em uma forma média e untada.",
    ],
    preparationRoof: [
      "Asse em forno preaquecido em temperatura média de 180 °C por 40 minutos ou até dourar;",
      "Em uma tigela, misture o leite de coco, o leite, o leite condensado e reserve;",
      "Após 40 minutos, retire o bolo do forno e fure toda a sua superfície com um garfo para facilitar a penetração da cobertura;",
      "Com o bolo ainda quente, despeje a cobertura sobre ele e salpique por cima o coco ralado;",
      "Leve a geladeira por 3 horas, depois corte o bolo em quadrados do tamanho que preferir e embrulhe com papel alumínio;",
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tudo Gostoso"),
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
        backgroundColor: orangeTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              recipe.photo,
            ),
            Details(recipe),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: orangeTheme,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "INGREDIENTES",
                  style: TextStyle(
                    color: orangeTheme,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListElements(
              this.recipe.ingredientsPasta,
              "Massa",
            ),
            SizedBox(
              height: 15,
            ),
            ListElements(
              this.recipe.ingredientsRoof,
              "Cobertura",
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.utensilSpoon,
                  color: orangeTheme,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "MODO DE PREPARO",
                  style: TextStyle(
                    color: orangeTheme,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListElements(
              this.recipe.preparationPasta,
              "Massa",
            ),
            SizedBox(
              height: 15,
            ),
            ListElements(
              this.recipe.preparationRoof,
              "Cobertura",
            ),
          ],
        ),
      ),
    );
  }
}
