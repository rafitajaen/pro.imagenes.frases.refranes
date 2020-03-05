import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:refranes/model/article.dart';
import 'package:refranes/utils/tag_utils.dart';

class MyDatabase {
  static List<Article> currentDB = [];

  MyDatabase();

  static void initialize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    width = width * 1.8;
    developer.log('Inicializando MyDatabase Urls con width: $width',
        name: 'pro.arae.MyDatabase.initialize');

    initializeImageUrls(width.round(), 70);
    currentDB = _articles;
    currentDB.shuffle();
  }

  static void loadCurrentDBByTag(Tag tag) {
    developer.log('Cargando currentDB con Tag: $tag',
        name: 'pro.arae.MyDatabase.loadCurrentDBByTag');
    List<Article> output = [];

    if (tag != Tag.all) {
      currentDB.map((article) {
        if (article.isTaggedWith(tag)) output.add(article);
      }).toList();

      currentDB = output;
    }
  }

  static List<Article> byFavoritesList(List<int> favoritesList) {
    List<Article> output = [];

    if (favoritesList != null) {
      if (favoritesList.length > 0) {
        _articles.map((a) {
          favoritesList.map((f) {
            if (a.id == f) output.add(a);
          }).toList();
        }).toList();
      }
    }

    return output;
  }

  static List<Article> byTag(Tag tag) {
    List<Article> output = [];

    if (tag != Tag.all) {
      currentDB.map((article) {
        if (article.isTaggedWith(tag)) output.add(article);
      }).toList();
    } else {
      output = currentDB;
    }

    return output;
  }

  static void initializeImageUrls(int width, int quality) {
    List<Article> output = [];

    _articles.map((a) {
      if (a.image != null) {
        if (a.image.contains('unsplash')) {
          a.image = a.image.split('?')[0] + '?';
          //a.image= a.image + 'ixlib=rb-1.2.1';
          //a.image= a.image + '&ixid=eyJhcHBfaWQiOjEyMDd9';
          a.image = a.image + '&auto=format';
          a.image = a.image + '&fit=crop';
          a.image = a.image + '&w=$width';
          a.image = a.image + '&q=$quality';
          if (a.id <= 10) {
            developer.log('id: ${a.id} - image: ${a.image}',
                name: 'pro.arae.MyDatabase.initializeImageUrls');
          }
          output.add(a);
        }
      }
    }).toList();

    _articles = output;
  }

  static List<Article> _articles = [
    Article.admin(
        id: 0,
        language: 'es',
        title: 'Las palabras se las lleva el viento',
        subtitle: 'Las acciones son las que definen a una persona',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1456356627738-3a96db6e2e33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 1,
        language: 'es',
        title: 'Borrón y cuenta nueva',
        subtitle:
            'Después de lo sucedido es mejor olvidar las cosas y empezar desde el principio',
        image:
            'https://images.unsplash.com/photo-1518826778770-a729fb53327c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
    Article.admin(
        id: 2,
        language: 'es',
        title: 'Vienen vacas flacas',
        subtitle: 'Se aproxima un periodo de escasez material',
        tags: [Tag.all],
        image:
            'https://images.unsplash.com/photo-1538933731740-39e5e9c7aa5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 3,
      language: 'es',
      title: 'Brilla por su ausencia',
      subtitle: 'La falta de alguien en un acontecimiento importante',
      tags: [Tag.popular],
      image:
          'https://images.unsplash.com/photo-1479742285000-3f6ca2fd0291?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
        id: 4,
        language: 'es',
        title: 'Aquí hay gato encerrado',
        subtitle: 'Algo no está del todo claro y se debe desconfiar',
        tags: [Tag.premium, Tag.popular],
        image:
            'https://images.unsplash.com/photo-1516125073169-9e3ecdee83e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 5,
        language: 'es',
        title: 'Unos nacen con estrella, y otros nacen estrellados',
        subtitle:
            'Es diverso el destino de los hombres, unos nacen con suerte, otros sin ella',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 6,
        language: 'es',
        title: 'La burra no era arisca, la hicieron a palos',
        subtitle: 'Los tratos recibidos cambian a las personas',
        image:
            'https://images.unsplash.com/photo-1521658190728-38033707f748?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 7,
        language: 'es',
        title: 'Lo pusieron como lazo de cochino',
        subtitle: 'Alguien salió regañado o criticado',
        image:
            'https://images.unsplash.com/photo-1456163051493-2be739ef9f55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 8,
      language: 'es',
      title: 'Barájamela más despacio',
      subtitle: 'Dame una explicación más detallada',
      image:
          'https://images.unsplash.com/photo-1517333971889-7f4416ed5062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 9,
        language: 'es',
        title: 'El que no sabe, es como el que no ve',
        subtitle: 'La ignorancia te hace ser como un ciego',
        image:
            'https://images.unsplash.com/photo-1512799906445-d591d53082c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 10,
        language: 'es',
        title: 'Se metió en la boca del lobo',
        subtitle: 'Se está entrando en terrenos peligrosos',
        image:
            'https://images.unsplash.com/photo-1550165703-47666909ce91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 11,
      language: 'es',
      title: 'Nunca falta un pelo en la sopa',
      subtitle:
          'Siempre hay algún detalle negativo en todas las circunstancias',
      image:
          'https://images.unsplash.com/photo-1564675494777-bf71975b0b8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 12,
        language: 'es',
        title: 'Hasta el mejor escribano echa un borrón',
        subtitle: 'Todos podemos cometer errores',
        image:
            'https://images.unsplash.com/photo-1488722796624-0aa6f1bb6399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 13,
      language: 'es',
      title: 'Quien tiene tienda, que la atienda',
      subtitle: 'Cada uno debe vigilar bien sus negocios',
      image:
          'https://images.unsplash.com/photo-1556740738-b6a63e27c4df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 14,
        language: 'es',
        title: 'Genio y figura hasta la sepultura',
        subtitle: 'No es fácil cambiar el carácter',
        image:
            'https://images.unsplash.com/photo-1551525844-c4f8e49f673c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 15,
        language: 'es',
        title: 'A otro perro con ese hueso',
        subtitle: 'Indica la incredulidad ante una aparente falsedad o engaño',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1507682520764-93440a60e9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 16,
        language: 'es',
        title: 'Quien espera, desespera',
        subtitle: 'Describe la ansiedad y el nerviosismo del que espera',
        image:
            'https://images.unsplash.com/photo-1494423500016-801283cf7eeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 17,
        language: 'es',
        title: 'A la cama no te irás sin saber una cosa más',
        subtitle: 'Todos los días aprendemos algo nuevo',
        image:
            'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 18,
        language: 'es',
        title: 'Caras vemos, corazones no sabemos',
        subtitle: 'No podemos confiar en las apariencias de las personas',
        image:
            'https://images.unsplash.com/photo-1515871204537-49a5fe66a31f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 19,
      language: 'es',
      title: 'Bueno es el cilantro, pero no tanto',
      subtitle:
          'No se debe abusar de las cosas buenas, pues todo en exceso acaba por ser malo',
      image:
          'https://images.unsplash.com/photo-1516658713486-48a292b2eea3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 20,
        language: 'es',
        title: 'Echar sapos y culebras',
        subtitle: 'Decir desatinos. Proferir insultos y blasfemias',
        image:
            'https://images.unsplash.com/photo-1567673705685-cabefd1b52e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 21,
        language: 'es',
        title: 'Echar fuego por los ojos',
        subtitle: 'Manifestar enojo, ira',
        image:
            'https://images.unsplash.com/photo-1546803073-23568b8c98e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 22,
        language: 'es',
        title: 'Donde el diablo perdió el poncho',
        subtitle: 'Muy lejos',
        image:
            'https://images.unsplash.com/photo-1538609396072-71c24a2f6d48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 23,
        language: 'es',
        title: 'Cuando tengas tu mano en la boca del perro, sácala lentamente',
        subtitle: 'Si estás metido en problemas, debes ser precavido',
        image:
            'https://images.unsplash.com/photo-1533360416430-2b45be60248c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 24,
        language: 'es',
        title: 'Contra viento y marea',
        subtitle: 'Luchando contra las adversidades',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1496332396140-0f524f793040?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 25,
        language: 'es',
        title: 'Andar con pies de plomo',
        subtitle: 'Ir con cautela y prudencia',
        image:
            'https://images.unsplash.com/photo-1490274480207-c9140355abba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 26,
        language: 'es',
        title: 'Algún día será pascua',
        subtitle: 'Ya vendrán tiempos mejores',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1457301353672-324d6d14f471?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 27,
        language: 'es',
        title: 'Abre el ojo que asan carne',
        subtitle: 'Estar atento a la ocasión cuando se presenta',
        image:
            'https://images.unsplash.com/photo-1558030089-02acba3c214e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 28,
      language: 'es',
      title: 'Serás buena si tu vecina así lo quiere',
      subtitle:
          'Se refiere a la importancia de la opinión de otras personas cuando quieres crearte una fama',
      image:
          'https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 29,
        language: 'es',
        title: 'Llagas viejas tarde curan, y toda la vida duran',
        subtitle:
            'Las mayores penas son difíciles de olvidar y dejan un recuerdo para siempre',
        image:
            'https://images.unsplash.com/photo-1527456272-623855a33ca8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 30,
        language: 'es',
        title: 'En las angustias, caricias',
        subtitle: 'Recomienda afecto en los momentos adversos',
        image:
            'https://images.unsplash.com/photo-1523281724201-8dc97cd42399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 31,
        language: 'es',
        title: 'Amor viejo y camino real, nunca se dejan de andar',
        subtitle:
            'Expresa que hay amores que siempre regresan a nuestras vidas',
        image:
            'https://images.unsplash.com/photo-1439396874305-9a6ba25de6c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 32,
        language: 'es',
        title: 'Hay que aprender a perder antes de saber jugar',
        subtitle:
            'Sanciona a las personas que son capaces de afrontar la derrota',
        image:
            'https://images.unsplash.com/photo-1502086223501-7ea6ecd79368?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 33,
        language: 'es',
        title: 'El que ha de ser barrigón, aunque lo cinche un arriero',
        subtitle:
            'Se refiere a que las personas están predestinadas desde que nacen y nada podrá cambiar su destino',
        image:
            'https://images.unsplash.com/photo-1560579183-b7c69367cb00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 34,
        language: 'es',
        title: 'Para cada cáscara hay un puerco',
        subtitle:
            'Indica que las personas tendrán oportunidades en la medida de sus méritos',
        image:
            'https://images.unsplash.com/photo-1537033206914-9d3551ff8103?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 35,
      language: 'es',
      title: 'Cuídame de mis amigos, que de mis enemigos me cuido yo',
      subtitle:
          'Advierte que hay personas malintencionadas que se presentan como amigos',
      image:
          'https://images.unsplash.com/photo-1518655061710-5ccf392c275a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x60000000),
    ),
    Article.admin(
      id: 36,
      language: 'es',
      title: 'Anda tu camino sin ayuda del vecino',
      subtitle:
          'Anima a no esperar la ayuda de nadie o buscar pretextos para no actuar',
      image:
          'https://images.unsplash.com/reserve/O7A9fAvYSXC7NTdz8gLQ_IMGP1039.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 37,
      language: 'es',
      title: 'Todo cabe en un jarrito sabiéndolo acomodar',
      subtitle: 'Aconseja el orden y organización de nuestras cosas o asuntos',
      image:
          'https://images.unsplash.com/photo-1495100497150-fe209c585f50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 38,
      language: 'es',
      title: 'Hasta los gatos quieren zapatos',
      subtitle:
          'Contra los que tienen pretensiones de algo que no les corresponde',
      image:
          'https://images.unsplash.com/photo-1472491235688-bdc81a63246e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 39,
      language: 'es',
      title: 'Del agua mansa me salve Dios, que de la brava me guardaré',
      subtitle: 'No fiarse demasiado del carácter de las personas',
      image:
          'https://images.unsplash.com/photo-1508793156468-aa1cbe7cd67b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 40,
        language: 'es',
        tags: [Tag.newest],
        title: 'Cuando el diablo no tiene que hacer, mata moscas con el rabo',
        subtitle:
            'Cuando alguien está desocupado y se aburre, suele acabar haciendo algo malo',
        image:
            'https://images.unsplash.com/photo-1568689341045-c58407fee7a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 41,
        language: 'es',
        title: 'A quien Dios se la dé, San Pedro que la bendiga',
        subtitle: 'Incita a conformarse con la suerte de cada uno',
        image:
            'https://images.unsplash.com/photo-1554976027-30fa74fd305f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 42,
        language: 'es',
        title: 'Al que al cielo escupe, en la cara le cae',
        subtitle:
            'La crítica que se hace contra las personas puede repercutir negativamente sobre quien la realiza',
        image:
            'https://images.unsplash.com/photo-1528872042734-8f50f9d3c59b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 43,
        language: 'es',
        title: 'Ni chica ni limonada',
        subtitle: 'Se usa en el sentido de no ser una cosa ni otra',
        image:
            'https://images.unsplash.com/photo-1568569350062-ebfa3cb195df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 44,
        language: 'es',
        title: 'Dormirse en los laureles',
        subtitle:
            'Descuidar una actividad por la confianza producida por éxitos anteriores',
        image:
            'https://images.unsplash.com/photo-1531353826977-0941b4779a1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 45,
        language: 'es',
        title: 'Lo que por el agua llega, por el agua se va',
        subtitle: 'Todo lo que llega fácilmente puede irse igual de fácil',
        image:
            'https://images.unsplash.com/photo-1437482078695-73f5ca6c96e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 46,
        language: 'es',
        title: 'No muerdas la mano que te da de comer',
        subtitle:
            'No debes ser malo con las personas a las que necesites o estén a tu lado',
        image:
            'https://images.unsplash.com/photo-1524678516592-b3fbf8938717?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        color: Color(0x90202020)),
    Article.admin(
        id: 47,
        language: 'es',
        title: 'Poderoso caballero es Don Dinero',
        subtitle:
            'Resalta la importancia del dinero para poder realizar los objetivos',
        image:
            'https://images.unsplash.com/photo-1554672723-d42a16e533db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 48,
        language: 'es',
        title: 'La gran victoria es la que sin sangre se toma',
        subtitle:
            'Se deben conseguir las metas sin dañar a nadie en el proceso',
        image:
            'https://images.unsplash.com/photo-1568065219398-8f9c0bde728d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 49,
        language: 'es',
        title: 'Donde menos se piensa, salta la liebre',
        subtitle: 'Cuando menos se espera, ocurren las cosas',
        image:
            'https://images.unsplash.com/photo-1506108198627-b100e11bbc47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 50,
        language: 'es',
        title: 'A lo hecho, pecho',
        subtitle:
            'Enseña que hay que afrontar las cosas con fuerza de valentía',
        image:
            'https://images.unsplash.com/photo-1580184254818-0cdb26a0f96a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 51,
        language: 'es',
        title:
            'El optimista ve la cicatriz en la herida; el pesimista ve la herida en la cicatriz',
        subtitle: 'La buena actitud puede facilitarnos la vida',
        image:
            'https://images.unsplash.com/photo-1484100356142-db6ab6244067?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 52,
        language: 'es',
        title: 'El que pregunta no yerra',
        subtitle:
            'Conviene informarse bien de lo que se ignira para no equivocarse',
        image:
            'https://images.unsplash.com/photo-1484069560501-87d72b0c3669?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 53,
      language: 'es',
      title: 'A su tiempo maduran las uvas',
      subtitle: 'Apela a la paciencia que se debe tener para conseguir un fin',
      image:
          'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 54,
        language: 'es',
        title: 'Quien a hierro mata, a hierro muere',
        tags: [Tag.popular],
        subtitle:
            'Advierte que el mal se revierte, al igual que el trato que uno da',
        image:
            'https://images.unsplash.com/photo-1528918230037-b8e9a8d403f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 55,
        language: 'es',
        title: 'Bien está San Pedro en Roma',
        subtitle: 'Cada cosa debe estar en su lugar',
        image:
            'https://images.unsplash.com/photo-1542820229-081e0c12af0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 56,
        language: 'es',
        title: 'Un clavo saca a otro clavo',
        subtitle: 'A veces un amor se te olvida con otro nuevo',
        image:
            'https://images.unsplash.com/photo-1571505280193-4b4e29712a77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 57,
      language: 'es',
      title: 'Quien bien te quiere te hará llorar',
      subtitle: 'El amor y el cariño consisten en corregir algunas faltas',
      image:
          'https://images.unsplash.com/photo-1564396797585-82f726d7d39a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 58,
        language: 'es',
        title: 'El pan ajeno, hace al hijo bueno',
        subtitle:
            'A veces nuestros hijos aprenden a valorar las cosas viviendo en casa ajena',
        image:
            'https://images.unsplash.com/photo-1573333515743-56d57731dd1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 59,
        language: 'es',
        title: 'Cuando alguien visita es porque algo necesita',
        subtitle:
            'Suele decirse cuando solo nos visan por interé de obtener algo a cambio',
        image:
            'https://images.unsplash.com/photo-1552819401-700b5e342b9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 60,
        language: 'es',
        title: 'A mejor cocinero, se le va un tomate entero',
        subtitle: 'Cualquier persona puede equivocarse',
        image:
            'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 61,
      language: 'es',
      title: 'A buen hambre, no hay mal pan',
      subtitle: 'Cuando hay necesidad, cualquier oportunidad es buena',
      image:
          'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 62,
        language: 'es',
        title: 'Carne que se lleva el gato, no vuelve al plato',
        subtitle:
            'Apela a las veces que prestas algo material y no son devuelvas',
        image:
            'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 63,
        language: 'es',
        title: 'Quien no oye consejos, no llega a viejo',
        subtitle: 'Se utiliza para invitar a alquien a recibir un consejo',
        image:
            'https://images.unsplash.com/photo-1516726283839-a493d9f167aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 64,
      language: 'es',
      title: 'Quien con niños duerme, mojado amanece',
      subtitle:
          'Atente a las consecuencias de andar con personas inmaduras porque pueden meterte en problemas',
      image:
          'https://images.unsplash.com/photo-1488539621750-1e0a7ebf61b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 65,
      language: 'es',
      title: 'No hay peor ciego que el que no quiere ver',
      subtitle: 'No debe uno mentirse a si mismo',
      image:
          'https://images.unsplash.com/photo-1516714819001-8ee7a13b71d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x60000000),
    ),
    Article.admin(
        id: 66,
        language: 'es',
        title: 'Más vale malo conocido, que bueno por conocer',
        subtitle:
            'Es mejor quedarse con lo que ya se conoce, que experimentar algo nuevo',
        image:
            'https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 67,
        language: 'es',
        title: 'Más sabe el diablo por viejo, que por diablo',
        subtitle: 'La experiencia que se adquiere con los años',
        image:
            'https://images.unsplash.com/photo-1477313372947-d68a7d410e9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 68,
      language: 'es',
      title: 'Estamos arando, dijo la mosca al buey',
      subtitle:
          'Se refiere a las personas que se atribuyen acciones cuando en realidad no toman parte de ellas',
      image:
          'https://images.unsplash.com/photo-1525815814824-6d140886512d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 69,
      language: 'es',
      title: 'El que con lobos anda, a aullar se enseña',
      subtitle: 'Da a entender que hay que alejarse de las malas compañías',
      image:
          'https://images.unsplash.com/photo-1518504361720-82ccdc540022?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 70,
      language: 'es',
      title: 'El muerto al hoyo, y el vivo al gozo',
      subtitle: 'Hay que olvidar las penas',
      image:
          'https://images.unsplash.com/photo-1518381057566-9acabd658f10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 71,
        language: 'es',
        title: 'Dios los cría y ellos se juntan',
        subtitle: 'Da a entender que dos personas son muy parecidas',
        image:
            'https://images.unsplash.com/photo-1490578474895-699cd4e2cf59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 72,
        language: 'es',
        title: 'La venganza nunca es buena, mata el alma y la envenena',
        subtitle:
            'No conviene esgrimir venganza contra nadie, pues ella salpica nuestro propio espíritu y nos daña',
        image:
            'https://images.unsplash.com/photo-1565389193823-4e2e15e37dc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 73,
        language: 'es',
        title: 'Toda persona tiene su talón de Aquiles',
        subtitle:
            'Da a entender que todos ostentamos un punto flaco o debilidad',
        image:
            'https://images.unsplash.com/photo-1558716008-1b5f48561f5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 74,
        language: 'es',
        title: 'Vive la vida como si fuera el último día',
        subtitle: 'Invita a disfrutar el momento porque puede que no haya otro',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1541593801762-d5ee89506ee1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 75,
        language: 'es',
        title: 'Machete estate en tu vaina',
        subtitle:
            'Invita a no buscar dificultades desconociendo las reacciones que podrían sobrevenir de una acción',
        image:
            'https://images.unsplash.com/photo-1553865541-0795ae17ef9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 76,
        language: 'es',
        title: 'Al mal paso, dale prisa',
        subtitle:
            'Buscar soluciones cuando nos encontramos en situaciones adversas',
        image:
            'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 77,
        language: 'es',
        title: 'Al mal tiempo, buena cara',
        subtitle: 'Sé positivo incluso en las dificultades',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1566996694954-90b052c413c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 78,
        language: 'es',
        title: 'Árbol que nace torcido, jamás su tronco endereza',
        subtitle: 'Las malas conductas y mañas, no son fáciles de corregir',
        image:
            'https://images.unsplash.com/photo-1462215401245-238712cdd72d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 79,
      language: 'es',
      title: 'Con la vara que midas, serás medido',
      subtitle: 'Todo lo hecho se nos será devuelto',
      image:
          'https://images.unsplash.com/photo-1562139753-b1ef6e9ded82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 80,
        language: 'es',
        title: 'Buey viejo, surco derecho',
        subtitle: 'Con los años se aprende',
        image:
            'https://images.unsplash.com/photo-1498122920496-ed9f9aab2051?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 81,
      language: 'es',
      title: 'Candil de la calle, oscuridad de tu casa',
      subtitle:
          'Hay personas que ayudan a todos, menos a los membros de su familia',
      image:
          'https://images.unsplash.com/photo-1506947456723-02bab3048abb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
      id: 82,
      language: 'es',
      title: 'Camarón que se duerme, se lo lleva la corriente',
      subtitle:
          'Las oportunidades las debemos tomar cuando llegas, de lo contrario, estas no volverán',
      image:
          'https://images.unsplash.com/photo-1538960792157-b2e2b62d1f3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 83,
        language: 'es',
        title: 'Cae más rapido un hablador que un cojo',
        subtitle:
            'Las palabras son fáciles de olvidar, y también podemos llegar a hacer algo que al principio nos negábamos',
        image:
            'https://images.unsplash.com/photo-1532103380078-634c0f239cb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 84,
        language: 'es',
        title: 'Cría cuervos y te sacarán los ojos',
        subtitle:
            'Simboliza la ingratitud al desagradecido que paga con el bien que le han hecho',
        image:
            'https://images.unsplash.com/photo-1433888376991-1297486ba3f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 85,
      language: 'es',
      title: 'Del árbol caído todos quieren hacer leña',
      subtitle: 'Las personas se aprovechan de la desgracia ajena',
      image:
          'https://images.unsplash.com/photo-1518433583594-894718aaff7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 86,
        language: 'es',
        title: 'De tal palo, tal astilla',
        subtitle: 'Los hijos son iguales que los padres',
        image:
            'https://images.unsplash.com/photo-1542647775-baf9ec9ccd0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 87,
      language: 'es',
      title: 'Del dicho al hecho hay mucho trecho',
      subtitle: 'Es mejor hacerlo que decirlo',
      image:
          'https://images.unsplash.com/photo-1523215122-26803239f41f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 88,
        language: 'es',
        title: 'Del plato a la boca se cae la sopa',
        subtitle: 'No hay nada seguro en la vida',
        image:
            'https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 89,
        language: 'es',
        title: 'Dime con quien andas y te diré quién eres',
        subtitle:
            'A las personas se les conoce de acuerdo a las compañías que frecuenta',
        image:
            'https://images.unsplash.com/photo-1525026198548-4baa812f1183?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 90,
        language: 'es',
        title: 'Agua que no has de beber, déjala correr',
        subtitle:
            'Situaciones u oportunidades que no vamos a tomar debemos dejarlas de lado para que otros las aprovechen',
        image:
            'https://images.unsplash.com/photo-1437482078695-73f5ca6c96e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 91,
      language: 'es',
      title: 'Dios aprieta pero no ahoga',
      subtitle:
          'A pesar de todos los probemas de la vida, al final siempre hay una solución',
      image:
          'https://images.unsplash.com/photo-1458593140930-1f9049c952c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 92,
      language: 'es',
      title: 'Donde hubo fuego, cenizas quedan',
      subtitle:
          'Apela a los recuerdos que se guardan al concluir una relación amorosa',
      image:
          'https://images.unsplash.com/photo-1487845911428-da2a33549ca2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 93,
        language: 'es',
        title: 'Donde manda capitán no gobierna marinero',
        subtitle:
            'No podemos mandar cuando tenemos a alguién de mayor jerarquía sobre nosotros',
        image:
            'https://images.unsplash.com/photo-1533727745100-e50cf931def7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 94,
        language: 'es',
        title: 'El buen juez por su casa empieza',
        subtitle:
            'Debemos mirar nuestros propios defectos antes de juzgar los de los demás',
        image:
            'https://images.unsplash.com/photo-1575505586569-646b2ca898fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 95,
      language: 'es',
      tags: [Tag.newest],
      title: 'El león cree que todos son de su condición',
      subtitle: 'Las personas critican en función de sus propias actitudes',
      image:
          'https://images.unsplash.com/photo-1517649281203-dad836b4abe5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 96,
        language: 'es',
        title: 'El león no es tan fiero como lo pintan',
        subtitle: 'Nos dejamos llevar por las apariencias',
        image:
            'https://images.unsplash.com/photo-1486667970798-b29d1090ff95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 97,
        language: 'es',
        title: 'Arrieros somos, y en el camino nos encontraremos',
        subtitle:
            'La vida tiene un efecto boomerang, todo lo que hacemos hacia el prójimo nos será devuelto',
        image:
            'https://images.unsplash.com/photo-1472740378865-80aab8e73251?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 98,
        language: 'es',
        title: 'Gallina vieja da buen caldo',
        subtitle: 'Los años aportan experiencia',
        image:
            'https://images.unsplash.com/photo-1518492104633-130d0cc84637?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 99,
      language: 'es',
      title: 'En boca cerrada no entran moscas',
      subtitle:
          'Podemos decir cosas que no quisiéramos, por lo que es mejor mantenerse callados en ciertos momentos',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1521996319423-90475f382dff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 100,
      language: 'es',
      title: 'El que nada debe, nada teme',
      subtitle: 'Alude a la conciencia limpia',
      image:
          'https://images.unsplash.com/photo-1494887205043-c5f291293cf6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 101,
        language: 'es',
        title: 'Hasta al mejor cazador se le va la liebre',
        subtitle: 'Todos cometemos errores',
        image:
            'https://images.unsplash.com/photo-1481140717212-b0124736c90a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 102,
      language: 'es',
      title: 'La curiosidad mató al gato',
      subtitle: 'No es bueno inmiscuirse en las situaciones ajenas',
      image:
          'https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 103,
        language: 'es',
        title: 'Leña verde no hace buen fuego',
        subtitle: 'Alude a los errores que se cometen en la juventud',
        image:
            'https://images.unsplash.com/photo-1535052288192-584044f5640f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 104,
        language: 'es',
        title: 'Ladrón que roba a ladrón tiene cien años de perdón',
        subtitle:
            'Cuando se toma algo que no es nuestro, pero que tampoco le pertenece a otra persona',
        image:
            'https://images.unsplash.com/photo-1537713873666-f00791130d05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 105,
        language: 'es',
        title: 'Los niños y los borrachos siempre dicen la verdad',
        subtitle:
            'La inocencia y la imprudencia nos hacen decir las cosas tal cual son',
        image:
            'https://images.unsplash.com/photo-1541020230467-e33e4f96f7fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 106,
        language: 'es',
        title: 'Más vale maña que fuerza',
        subtitle:
            'Se puede lograr más con la inteligencia que utilizando la fuerza',
        image:
            'https://images.unsplash.com/photo-1534367610401-9f5ed68180aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 107,
        language: 'es',
        title: 'Mucha pólvora y poca mecha',
        subtitle: 'A veces se presume más de lo que realmente se tiene',
        image:
            'https://images.unsplash.com/photo-1550983551-894c0d3e4182?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 108,
        language: 'es',
        title: 'Mucho ruido y pocas nueces',
        subtitle: 'A veces presumimos exactamente de lo que carecemos',
        image:
            'https://images.unsplash.com/photo-1528484456479-6c9fb3185b7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 109,
        language: 'es',
        title: 'Nadie nace sabiendo',
        subtitle: 'Las cosas se aprenden con el tiempo',
        image:
            'https://images.unsplash.com/photo-1513258496099-48168024aec0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 110,
        language: 'es',
        title: 'Nadie sabe lo que tiene hasta que lo pierde',
        subtitle:
            'Se llegan a valorar cosas o personas cuando ya no se encuentran a nuestro lado',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1502325966718-85a90488dc29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 111,
        language: 'es',
        title: 'No me des gato por liebre',
        subtitle: 'No me mientas o me engañes',
        image:
            'https://images.unsplash.com/photo-1531320931516-08f58f2d8396?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 112,
      language: 'es',
      title: 'No hay mal que cien años dure, ni cuerpo que lo aguante',
      subtitle: 'La mala suerte no dura para siempre',
      image:
          'https://images.unsplash.com/photo-1529765449044-a05f1a18a293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 113,
        language: 'es',
        title: 'Quien busca, encuentra',
        subtitle: 'Todo lo que uno se propone se puede llegar a lograr',
        image:
            'https://images.unsplash.com/photo-1549068219-ffacef098d03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 114,
        language: 'es',
        title: 'Quien calla otorga',
        subtitle: 'Más vale dar nuestro punto de vista a quedarnos callados',
        image:
            'https://images.unsplash.com/photo-1483706600674-e0c87d3fe85b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 115,
        language: 'es',
        title: 'Roma no se hizo en un día',
        subtitle: 'Se utiliza para decir que las cosa no son fáciles',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 116,
        language: 'es',
        title: 'Tanto va el cántaro a la fuente, hasta que se rompe',
        subtitle: 'La insistencia puede llegar a causar problemas',
        image:
            'https://images.unsplash.com/photo-1572112553549-4151f756bebc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 117,
        language: 'es',
        title: 'El ojo del amo engorda al caballo',
        subtitle: 'Lo propio suele mirarse con mejores ojos que lo ajeno',
        image:
            'https://images.unsplash.com/photo-1508343919546-4a5792fee935?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 118,
      language: 'es',
      title: 'Di tu secreto a tu amigo, y serás siempre su cautivo',
      subtitle:
          'Debemos de tener cuidado al confiar en alguien nuestros propios problemas',
      image:
          'https://images.unsplash.com/photo-1482356432770-3a99f07aba35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 119,
      language: 'es',
      title: 'En la boca del mentiroso, lo cierto se hace dudoso',
      subtitle:
          'Alude a las mentiras y a la nula confianza que se tiene en los mentirosos',
      image:
          'https://images.unsplash.com/photo-1460904577954-8fadb262612c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 120,
        language: 'es',
        title: 'Parece que la vaca del vecino da más leche',
        subtitle:
            'Se dice de las personas envidiosas que están más pendiente del negocio ajeno que del propio',
        image:
            'https://images.unsplash.com/photo-1520325143471-6969ad29c351?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 121,
        language: 'es',
        title: 'A las prueba me remito',
        subtitle:
            'Se utiliza para afirmas que su verdad es tan cierta que hasta puede mostrarla',
        image:
            'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 122,
      language: 'es',
      title: 'Preguntando se llega a Roma',
      subtitle: 'Preguntando se resuelven las dudas',
      image:
          'https://images.unsplash.com/photo-1529260830199-42c24126f198?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 123,
        language: 'es',
        title: 'El que es buen gallo, en cualquier gallinero canta',
        subtitle:
            'Las aptitudes, el talento y la cordura se demuestra donde quiera, cuando es necesario, y sea cual sea el medio en el que se esté',
        image:
            'https://images.unsplash.com/photo-1518965589465-99ecc8c66546?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 124,
      language: 'es',
      title: 'Duelos con pan son buenos',
      subtitle:
          'Afirma que los trabajos son soportables habiendo bienes y cenveniencias',
      image:
          'https://images.unsplash.com/photo-1573119450708-b71d9babcba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 125,
      language: 'es',
      title: 'De todo hay en la viña del Señor',
      subtitle:
          'Alude a la diversidad de personas y pensamientos en nuestra vida',
      image:
          'https://images.unsplash.com/photo-1550502369-d54b8f36db78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 126,
        language: 'es',
        title: 'A quien de ajeno se viste, en la calle lo desvisten',
        subtitle:
            'Advierte a quien se atribuye cosas que no son suyas, se expone a verse despojado de ellas en cualquier momento',
        image:
            'https://images.unsplash.com/photo-1488342994276-7c3bc0742042?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 127,
        language: 'es',
        title: 'Una sopa de su propio chocolate',
        subtitle:
            'Se utiliza para decir que se la están devolviendo con la misma acción',
        image:
            'https://images.unsplash.com/photo-1511381939415-e44015466834?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 128,
        language: 'es',
        title: 'Si queres una buena fama, que no te de el sol en la cama',
        subtitle: 'Si quieres conseguir un objetivo debes de trabajar duro',
        image:
            'https://images.unsplash.com/photo-1532911557891-d12f6b98dddc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 129,
        language: 'es',
        title: 'El césped siempre es más verde en el lado del vecino',
        subtitle: 'Nos enseña lo envidiosos que podemos ser',
        image:
            'https://images.unsplash.com/photo-1470137430626-983a37b8ea46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 130,
        language: 'es',
        title: 'No juzgues a un libro por su cubierta',
        subtitle: 'Las cosas no son siempre lo que aparentan ser',
        image:
            'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 131,
        language: 'es',
        title: 'Querer es poder',
        subtitle:
            'La voluntad que uno demuestra en la vida es un factor clave para conseguir lo que uno se propone',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1519834785169-98be25ec3f84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 132,
        language: 'es',
        title: 'Es mejor prevenir que curar',
        subtitle: 'Haz todo lo posible por evitar que te pasen cosas malas',
        image:
            'https://images.unsplash.com/photo-1515377905703-c4788e51af15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 133,
        language: 'es',
        title: 'El que no llora, no mama',
        subtitle:
            'Si tienes un problema, pero nunca lo comentas, nadie te podrá ayudar',
        image:
            'https://images.unsplash.com/photo-1480985041486-c65b20c01d1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 134,
        language: 'es',
        title: 'Aprende a caminar antes de correr',
        subtitle: 'Empieza por lo simple y ve mejorando poco a poco',
        image:
            'https://images.unsplash.com/photo-1502224562085-639556652f33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 135,
      language: 'es',
      tags: [Tag.premium],
      title: 'El dinero no crece en los árboles',
      subtitle:
          'Se utiliza para decir que se está malgastando el dinero en tonterías',
      image:
          'https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 136,
        language: 'es',
        title: 'Mis manos están atadas',
        subtitle:
            'Se utiliza cuando no se puede hacer más por algo o por alguien',
        image:
            'https://images.unsplash.com/photo-1520980190535-d00da19630be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 137,
        language: 'es',
        title: 'Hoy por ti, mañana por mí',
        subtitle: 'Si tu me ayudas, yo te ayudaré también',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 138,
        language: 'es',
        title: 'Lo prohibido es lo más deseado',
        subtitle: 'Si algo no está permitido, lo más probable es que lo desees',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1579447167432-ba8b796e5de1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 139,
        language: 'es',
        title: 'No hay mal que por bien no venga',
        subtitle:
            'Cada situación tiene algunas cosas buenas, solo tienes que buscarlas',
        image:
            'https://images.unsplash.com/photo-1531171074112-291d5807273d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 140,
      language: 'es',
      title: 'Quien no arriesga no gana',
      subtitle:
          'Para cumplir tus objetivos tienes que ser persistente o romper algunas reglas',
      image:
          'https://images.unsplash.com/photo-1503944168849-8bf86875bbd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 141,
        language: 'es',
        title: 'Qué bonito es lo bonito. Lástima que sea pecado.',
        subtitle:
            'Expresa que las cosas que solemos disfrutar de la vida son censuradas por criterios morales',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1579355010314-9df6301ae0c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 142,
        language: 'es',
        title: 'Meter las cuatro',
        subtitle:
            'Se dice cuando alguien mete la pata, pero el error es tán grande que dice que metió las cuatro patas',
        image:
            'https://images.unsplash.com/photo-1530743657429-7881e92058f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 143,
      language: 'es',
      title: 'No come tamales por no tirar las hojas',
      subtitle: 'Señala a las personas que son muy tacañas',
      image:
          'https://images.unsplash.com/photo-1536882240095-0379873feb4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 144,
        language: 'es',
        title: 'Solitas bajan al agua, sin que les haga bajar',
        subtitle:
            'Los que más se hacen de rogar terminan haciendo lo que no querían hacer',
        image:
            'https://images.unsplash.com/photo-1511884642898-4c92249e20b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 145,
        language: 'es',
        title: 'Le salió la cola',
        subtitle:
            'Se dice de las personas que aparentemente son inocentes, pero al final salen a relucir sus faltas',
        image:
            'https://images.unsplash.com/photo-1501695277911-3f1eb8e68f99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 146,
      language: 'es',
      title: 'Para uno que madruga, hay otro que se desvela',
      subtitle:
          'Señala que siempre existe la posibilidad de encontrar a alguien con más capacidad o habilidad',
      image:
          'https://images.unsplash.com/photo-1541480601022-2308c0f02487?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 147,
      language: 'es',
      title: 'Vamos a ver de qué tumba salen más muertos',
      subtitle: 'Se usa cuando se desafía a alguien',
      image:
          'https://images.unsplash.com/photo-1557964765-40b594c4d1dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 148,
        language: 'es',
        title: 'Nadie tiene la vida comprada',
        subtitle:
            'Aconseja no dejar las cosas para el futuro. Hay que actuar hoy.',
        image:
            'https://images.unsplash.com/photo-1561715276-a2d087060f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 149,
        language: 'es',
        title: 'Te juzgué melón y me saliste calabaza',
        subtitle:
            'Se dice cuando las personas que creíamos capaces fallan en los que se les encomienda',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1540700857647-cae6480958f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 150,
        language: 'es',
        title: 'Hay que rascarse con sus propias uñas',
        subtitle:
            'Dice que las personas deben resolver sus problemas con sus propios medios',
        image:
            'https://images.unsplash.com/photo-1542295474-5e78124e5d59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 151,
      language: 'es',
      title: 'Borrar con el codo, lo que se escribió con la mano',
      subtitle:
          'Apela a las conradicciones y cambios de opinión de las personas',
      image:
          'https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
        id: 152,
        language: 'es',
        title: 'La ausencia causa el olvido',
        subtitle:
            'La falta de trato puede provocar un debilitamiento del vínculo amistoso o familiar',
        image:
            'https://images.unsplash.com/photo-1562785056-8201091fae25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
        id: 153,
        language: 'es',
        title: 'Viva la gallina, aunque sea con pepita',
        subtitle:
            'Recomienda conserva la vida, aunque sea viviendo con las molestias de una enfermedad o las de un trabajo.',
        image:
            'https://images.unsplash.com/photo-1567450133695-72d4fbe4bd33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Article.admin(
      id: 154,
      language: 'es',
      title: 'Para doncella honesta, el hacer algo es su fiesta',
      subtitle: 'Ensalza a la mujer trabajadora',
      image:
          'https://images.unsplash.com/photo-1527529482837-4698179dc6ce?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      color: Color(0x40000000),
    ),
    Article.admin(
      id: 155,
      language: 'es',
      tags: [Tag.newest],
      title: 'Al hijo de tu vecino limpiale las narices y mételo en tu casa',
      subtitle: 'Quiere decir que hay que relacionarse con quien sea tu igual.',
      image:
          'https://images.unsplash.com/photo-1531984929664-2fb2be468d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
        id: 156,
        language: 'es',
        tags: [Tag.newest],
        title: 'Quien predica en el desierto pierde el sermón',
        subtitle:
            'Se refiere al orador que pierde el tiempo ante un público poco inteligente.',
        image:
            'https://images.unsplash.com/photo-1488197047962-b48492212cda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1347&q=80'),
    Article.admin(
        id: 157,
        language: 'es',
        tags: [Tag.newest],
        title: 'Pagan por justos pecadores',
        subtitle:
            'En términos religiosos, los buenos terminan pagando las consecuencias de lo que hicieron los malos.',
        image:
            'https://images.unsplash.com/photo-1530037768512-3c9a22715452?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Article.admin(
        id: 158,
        language: 'es',
        tags: [Tag.newest],
        title: 'Al buen pagador no le duelen prendas',
        subtitle:
            'Quien desea cumplir con lo que debe, no le importa proporcionar alguna garantía de ello',
        image:
            'https://images.unsplash.com/photo-1533049177881-da3b01907f7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Article.admin(
      id: 159,
      language: 'es',
      tags: [Tag.popular],
      title: 'En la duda, ten la lengua',
      subtitle:
          'Es más prudente guardar silencio cuando no se sabe o conoce de algún tema',
      image:
          'https://images.unsplash.com/photo-1542729757-941ffe40be88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=717&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
        id: 160,
        language: 'es',
        tags: [Tag.newest],
        title: 'Hay que rascarse con sus propias uñas',
        subtitle:
            'Dice que las personas deben resolver sus problemas con sus propios medias',
        image:
            'https://images.unsplash.com/photo-1572814601679-4ef8f7b5ebd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=650&q=80'),
    Article.admin(
      id: 161,
      language: 'es',
      tags: [Tag.popular],
      title: 'Quien a solas se ríe, de sus maldades se acuerda',
      subtitle:
          'Se dice cuando una persona se ríe o carcajea sin aparente motivo',
      image:
          'https://images.unsplash.com/photo-1515023115689-589c33041d3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
        id: 162,
        language: 'es',
        tags: [Tag.newest],
        title: 'Hasta arrancar un ajo cuesta trabajo',
        subtitle:
            'Todo lo que se puede obtener en la vida es fruto del esfuerzo y dedicación',
        image:
            'https://images.unsplash.com/photo-1491185841098-9ce20f966624?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),
    Article.admin(
      id: 163,
      language: 'es',
      title: 'No compro cebollas por no llevar rabos',
      subtitle:
          'Es una manera descortés de rechazar a una persona que pretende acompañarnos',
      image:
          'https://images.unsplash.com/photo-1467019972079-a273e1bc9173?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
        id: 164,
        language: 'es',
        tags: [Tag.newest],
        title: 'Ni los dedos de la mano son iguales',
        subtitle:
            'Es una tontería creer que las personas son iguales y que se les debe tratar igual o exigir lo mismo',
        image:
            'https://images.unsplash.com/photo-1570016306264-80c49b5a8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Article.admin(
        id: 165,
        language: 'es',
        tags: [Tag.newest],
        title: 'Me extraña que siendo araña te caigas de la pared',
        subtitle:
            'Se le dice a una persona que comete un error en algo que se considera que tiene mucha experiencia',
        image:
            'https://images.unsplash.com/photo-1534105202621-4233721dcaff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=995&q=80'),
    Article.admin(
        id: 166,
        language: 'es',
        tags: [Tag.popular],
        title: 'De amigo ausente como si estuviera presente',
        subtitle:
            'No debemos criticar los defectos de los amigos cuando no están presentes',
        image:
            'https://images.unsplash.com/photo-1488956322016-1e7554142097?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Article.admin(
      id: 167,
      language: 'es',
      tags: [Tag.popular],
      title: 'Algún día será verano, y amanecerá más temprano',
      subtitle:
          'Indica que los malos tiempos pasarán y vendrán mejores momentos en la vida',
      image:
          'https://images.unsplash.com/photo-1495567720989-cebdbdd97913?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
      id: 168,
      language: 'es',
      title: 'Poco a poco se le saca el agua al coco',
      subtitle: 'Aconseja ser pacientes en todo lo que nos proponemos',
      image:
          'https://images.unsplash.com/photo-1509685446001-c340df69aa67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
      id: 169,
      language: 'es',
      tags: [Tag.popular],
      title: 'Los amores entran jugando y salen llorando',
      subtitle:
          'Señala lo bueno que parece el amor en un principio y lo terrible que puede ser pasado el tiempo',
      image:
          'https://images.unsplash.com/photo-1518568814500-bf0f8d125f46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      color: Color(0x40202020),
    ),
    Article.admin(
        id: 170,
        language: 'es',
        tags: [Tag.newest],
        title: 'Veinte años y veinte pesos no duran toda la vida',
        subtitle: 'Recomienda no derrochar la juvantud ni el dinero',
        image:
            'https://images.unsplash.com/photo-1527324882090-86c541c90223?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),

    //Article.admin(id: 170, language: 'es', title: '', subtitle: ''),
    //Me he quedado en la ficha 177 de español
  ];
}
