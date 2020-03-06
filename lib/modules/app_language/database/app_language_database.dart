import '../../proverb/model/proverb.dart';
import '../../tag/model/tag.dart';
import '../model/languages.dart';

class AppLanguagesDatabase {
  static List<Proverb> byFavoritesList(List<int> favorites) {
    List<Proverb> output = [];

    if (favorites != null) {
      if (favorites.length > 0) {
        allProverbs.map((p) {
          favorites.map((f) {
            if (p.id == f) output.add(p);
          }).toList();
        }).toList();
      }
    }

    return output;
  }

  static const List<Proverb> allProverbs = [
    Proverb(
      id: 0,
      language: Languages.es,
      title: 'Las palabras se las lleva el viento',
      subtitle: 'Las acciones son las que definen a una persona',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1456356627738-3a96db6e2e33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1,
      language: Languages.es,
      title: 'Borrón y cuenta nueva',
      subtitle:
          'Después de lo sucedido es mejor olvidar las cosas y empezar desde el principio',
      tags: [Tag.newest],
      image:
          'https://images.unsplash.com/photo-1518826778770-a729fb53327c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    ),
    Proverb(
      id: 2,
      language: Languages.es,
      title: 'Vienen vacas flacas',
      subtitle: 'Se aproxima un periodo de escasez material',
      tags: [Tag.all],
      image:
          'https://images.unsplash.com/photo-1538933731740-39e5e9c7aa5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 3,
      language: Languages.es,
      title: 'Brilla por su ausencia',
      subtitle: 'La falta de alguien en un acontecimiento importante',
      tags: [Tag.popular],
      image:
          'https://images.unsplash.com/photo-1479742285000-3f6ca2fd0291?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40202020,
    ),
    Proverb(
      id: 4,
      language: Languages.es,
      title: 'Aquí hay gato encerrado',
      subtitle: 'Algo no está del todo claro y se debe desconfiar',
      tags: [Tag.premium, Tag.popular],
      image:
          'https://images.unsplash.com/photo-1516125073169-9e3ecdee83e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 5,
      language: Languages.es,
      title: 'Unos nacen con estrella, y otros nacen estrellados',
      subtitle:
          'Es diverso el destino de los hombres, unos nacen con suerte, otros sin ella',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 6,
      language: Languages.es,
      title: 'La burra no era arisca, la hicieron a palos',
      subtitle: 'Los tratos recibidos cambian a las personas',
      image:
          'https://images.unsplash.com/photo-1521658190728-38033707f748?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 7,
      language: Languages.es,
      title: 'Lo pusieron como lazo de cochino',
      subtitle: 'Alguien salió regañado o criticado',
      image:
          'https://images.unsplash.com/photo-1456163051493-2be739ef9f55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 8,
      language: Languages.es,
      title: 'Barájamela más despacio',
      subtitle: 'Dame una explicación más detallada',
      image:
          'https://images.unsplash.com/photo-1517333971889-7f4416ed5062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 9,
      language: Languages.es,
      title: 'El que no sabe, es como el que no ve',
      subtitle: 'La ignorancia te hace ser como un ciego',
      image:
          'https://images.unsplash.com/photo-1512799906445-d591d53082c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 10,
      language: Languages.es,
      title: 'Se metió en la boca del lobo',
      subtitle: 'Se está entrando en terrenos peligrosos',
      image:
          'https://images.unsplash.com/photo-1550165703-47666909ce91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 11,
      language: Languages.es,
      title: 'Nunca falta un pelo en la sopa',
      subtitle:
          'Siempre hay algún detalle negativo en todas las circunstancias',
      image:
          'https://images.unsplash.com/photo-1564675494777-bf71975b0b8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 12,
      language: Languages.es,
      title: 'Hasta el mejor escribano echa un borrón',
      subtitle: 'Todos podemos cometer errores',
      image:
          'https://images.unsplash.com/photo-1488722796624-0aa6f1bb6399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 13,
      language: Languages.es,
      title: 'Quien tiene tienda, que la atienda',
      subtitle: 'Cada uno debe vigilar bien sus negocios',
      image:
          'https://images.unsplash.com/photo-1556740738-b6a63e27c4df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 14,
      language: Languages.es,
      title: 'Genio y figura hasta la sepultura',
      subtitle: 'No es fácil cambiar el carácter',
      image:
          'https://images.unsplash.com/photo-1551525844-c4f8e49f673c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 15,
      language: Languages.es,
      title: 'A otro perro con ese hueso',
      subtitle: 'Indica la incredulidad ante una aparente falsedad o engaño',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1507682520764-93440a60e9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 16,
      language: Languages.es,
      title: 'Quien espera, desespera',
      subtitle: 'Describe la ansiedad y el nerviosismo del que espera',
      image:
          'https://images.unsplash.com/photo-1494423500016-801283cf7eeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 17,
      language: Languages.es,
      title: 'A la cama no te irás sin saber una cosa más',
      subtitle: 'Todos los días aprendemos algo nuevo',
      image:
          'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 18,
      language: Languages.es,
      title: 'Caras vemos, corazones no sabemos',
      subtitle: 'No podemos confiar en las apariencias de las personas',
      image:
          'https://images.unsplash.com/photo-1515871204537-49a5fe66a31f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 19,
      language: Languages.es,
      title: 'Bueno es el cilantro, pero no tanto',
      subtitle:
          'No se debe abusar de las cosas buenas, pues todo en exceso acaba por ser malo',
      image:
          'https://images.unsplash.com/photo-1516658713486-48a292b2eea3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 20,
      language: Languages.es,
      title: 'Echar sapos y culebras',
      subtitle: 'Decir desatinos. Proferir insultos y blasfemias',
      image:
          'https://images.unsplash.com/photo-1567673705685-cabefd1b52e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 21,
      language: Languages.es,
      title: 'Echar fuego por los ojos',
      subtitle: 'Manifestar enojo, ira',
      image:
          'https://images.unsplash.com/photo-1546803073-23568b8c98e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 22,
      language: Languages.es,
      title: 'Donde el diablo perdió el poncho',
      subtitle: 'Muy lejos',
      image:
          'https://images.unsplash.com/photo-1538609396072-71c24a2f6d48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 23,
      language: Languages.es,
      title: 'Cuando tengas tu mano en la boca del perro, sácala lentamente',
      subtitle: 'Si estás metido en problemas, debes ser precavido',
      image:
          'https://images.unsplash.com/photo-1533360416430-2b45be60248c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 24,
      language: Languages.es,
      title: 'Contra viento y marea',
      subtitle: 'Luchando contra las adversidades',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1496332396140-0f524f793040?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 25,
      language: Languages.es,
      title: 'Andar con pies de plomo',
      subtitle: 'Ir con cautela y prudencia',
      image:
          'https://images.unsplash.com/photo-1490274480207-c9140355abba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 26,
      language: Languages.es,
      title: 'Algún día será pascua',
      subtitle: 'Ya vendrán tiempos mejores',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1457301353672-324d6d14f471?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 27,
      language: Languages.es,
      title: 'Abre el ojo que asan carne',
      subtitle: 'Estar atento a la ocasión cuando se presenta',
      image:
          'https://images.unsplash.com/photo-1558030089-02acba3c214e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 28,
      language: Languages.es,
      title: 'Serás buena si tu vecina así lo quiere',
      subtitle:
          'Se refiere a la importancia de la opinión de otras personas cuando quieres crearte una fama',
      image:
          'https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 29,
      language: Languages.es,
      title: 'Llagas viejas tarde curan, y toda la vida duran',
      subtitle:
          'Las mayores penas son difíciles de olvidar y dejan un recuerdo para siempre',
      image:
          'https://images.unsplash.com/photo-1527456272-623855a33ca8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 30,
      language: Languages.es,
      title: 'En las angustias, caricias',
      subtitle: 'Recomienda afecto en los momentos adversos',
      image:
          'https://images.unsplash.com/photo-1523281724201-8dc97cd42399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 31,
      language: Languages.es,
      title: 'Amor viejo y camino real, nunca se dejan de andar',
      subtitle: 'Expresa que hay amores que siempre regresan a nuestras vidas',
      image:
          'https://images.unsplash.com/photo-1439396874305-9a6ba25de6c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 32,
      language: Languages.es,
      title: 'Hay que aprender a perder antes de saber jugar',
      subtitle:
          'Sanciona a las personas que son capaces de afrontar la derrota',
      image:
          'https://images.unsplash.com/photo-1502086223501-7ea6ecd79368?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 33,
      language: Languages.es,
      title: 'El que ha de ser barrigón, aunque lo cinche un arriero',
      subtitle:
          'Se refiere a que las personas están predestinadas desde que nacen y nada podrá cambiar su destino',
      image:
          'https://images.unsplash.com/photo-1560579183-b7c69367cb00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 34,
      language: Languages.es,
      title: 'Para cada cáscara hay un puerco',
      subtitle:
          'Indica que las personas tendrán oportunidades en la medida de sus méritos',
      image:
          'https://images.unsplash.com/photo-1537033206914-9d3551ff8103?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 35,
      language: Languages.es,
      title: 'Cuídame de mis amigos, que de mis enemigos me cuido yo',
      subtitle:
          'Advierte que hay personas malintencionadas que se presentan como amigos',
      image:
          'https://images.unsplash.com/photo-1518655061710-5ccf392c275a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x60000000,
    ),
    Proverb(
      id: 36,
      language: Languages.es,
      title: 'Anda tu camino sin ayuda del vecino',
      subtitle:
          'Anima a no esperar la ayuda de nadie o buscar pretextos para no actuar',
      image:
          'https://images.unsplash.com/reserve/O7A9fAvYSXC7NTdz8gLQ_IMGP1039.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 37,
      language: Languages.es,
      title: 'Todo cabe en un jarrito sabiéndolo acomodar',
      subtitle: 'Aconseja el orden y organización de nuestras cosas o asuntos',
      image:
          'https://images.unsplash.com/photo-1495100497150-fe209c585f50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 38,
      language: Languages.es,
      title: 'Hasta los gatos quieren zapatos',
      subtitle:
          'Contra los que tienen pretensiones de algo que no les corresponde',
      image:
          'https://images.unsplash.com/photo-1472491235688-bdc81a63246e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 39,
      language: Languages.es,
      title: 'Del agua mansa me salve Dios, que de la brava me guardaré',
      subtitle: 'No fiarse demasiado del carácter de las personas',
      image:
          'https://images.unsplash.com/photo-1508793156468-aa1cbe7cd67b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 40,
      language: Languages.es,
      title: 'Cuando el diablo no tiene que hacer, mata moscas con el rabo',
      subtitle:
          'Cuando alguien está desocupado y se aburre, suele acabar haciendo algo malo',
      image:
          'https://images.unsplash.com/photo-1568689341045-c58407fee7a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 41,
      language: Languages.es,
      title: 'A quien Dios se la dé, San Pedro que la bendiga',
      subtitle: 'Incita a conformarse con la suerte de cada uno',
      image:
          'https://images.unsplash.com/photo-1554976027-30fa74fd305f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 42,
      language: Languages.es,
      title: 'Al que al cielo escupe, en la cara le cae',
      subtitle:
          'La crítica que se hace contra las personas puede repercutir negativamente sobre quien la realiza',
      image:
          'https://images.unsplash.com/photo-1528872042734-8f50f9d3c59b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 43,
      language: Languages.es,
      title: 'Ni chica ni limonada',
      subtitle: 'Se usa en el sentido de no ser una cosa ni otra',
      image:
          'https://images.unsplash.com/photo-1568569350062-ebfa3cb195df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 44,
      language: Languages.es,
      title: 'Dormirse en los laureles',
      subtitle:
          'Descuidar una actividad por la confianza producida por éxitos anteriores',
      image:
          'https://images.unsplash.com/photo-1531353826977-0941b4779a1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 45,
      language: Languages.es,
      title: 'Lo que por el agua llega, por el agua se va',
      subtitle: 'Todo lo que llega fácilmente puede irse igual de fácil',
      image:
          'https://images.unsplash.com/photo-1437482078695-73f5ca6c96e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
        id: 46,
        language: Languages.es,
        title: 'No muerdas la mano que te da de comer',
        subtitle:
            'No debes ser malo con las personas a las que necesites o estén a tu lado',
        image:
            'https://images.unsplash.com/photo-1524678516592-b3fbf8938717?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        color: 0x90202020),
    Proverb(
      id: 47,
      language: Languages.es,
      title: 'Poderoso caballero es Don Dinero',
      subtitle:
          'Resalta la importancia del dinero para poder realizar los objetivos',
      image:
          'https://images.unsplash.com/photo-1554672723-d42a16e533db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 48,
      language: Languages.es,
      title: 'La gran victoria es la que sin sangre se toma',
      subtitle: 'Se deben conseguir las metas sin dañar a nadie en el proceso',
      image:
          'https://images.unsplash.com/photo-1568065219398-8f9c0bde728d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 49,
      language: Languages.es,
      title: 'Donde menos se piensa, salta la liebre',
      subtitle: 'Cuando menos se espera, ocurren las cosas',
      image:
          'https://images.unsplash.com/photo-1506108198627-b100e11bbc47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 50,
      language: Languages.es,
      title: 'A lo hecho, pecho',
      subtitle: 'Enseña que hay que afrontar las cosas con fuerza de valentía',
      image:
          'https://images.unsplash.com/photo-1580184254818-0cdb26a0f96a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 51,
      language: Languages.es,
      title:
          'El optimista ve la cicatriz en la herida; el pesimista ve la herida en la cicatriz',
      subtitle: 'La buena actitud puede facilitarnos la vida',
      image:
          'https://images.unsplash.com/photo-1484100356142-db6ab6244067?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 52,
      language: Languages.es,
      title: 'El que pregunta no yerra',
      subtitle:
          'Conviene informarse bien de lo que se ignira para no equivocarse',
      image:
          'https://images.unsplash.com/photo-1484069560501-87d72b0c3669?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 53,
      language: Languages.es,
      title: 'A su tiempo maduran las uvas',
      subtitle: 'Apela a la paciencia que se debe tener para conseguir un fin',
      image:
          'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 54,
      language: Languages.es,
      title: 'Quien a hierro mata, a hierro muere',
      subtitle:
          'Advierte que el mal se revierte, al igual que el trato que uno da',
      image:
          'https://images.unsplash.com/photo-1528918230037-b8e9a8d403f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 55,
      language: Languages.es,
      title: 'Bien está San Pedro en Roma',
      subtitle: 'Cada cosa debe estar en su lugar',
      image:
          'https://images.unsplash.com/photo-1542820229-081e0c12af0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 56,
      language: Languages.es,
      title: 'Un clavo saca a otro clavo',
      subtitle: 'A veces un amor se te olvida con otro nuevo',
      image:
          'https://images.unsplash.com/photo-1571505280193-4b4e29712a77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 57,
      language: Languages.es,
      title: 'Quien bien te quiere te hará llorar',
      subtitle: 'El amor y el cariño consisten en corregir algunas faltas',
      image:
          'https://images.unsplash.com/photo-1564396797585-82f726d7d39a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 58,
      language: Languages.es,
      title: 'El pan ajeno, hace al hijo bueno',
      subtitle:
          'A veces nuestros hijos aprenden a valorar las cosas viviendo en casa ajena',
      image:
          'https://images.unsplash.com/photo-1573333515743-56d57731dd1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 59,
      language: Languages.es,
      title: 'Cuando alguien visita es porque algo necesita',
      subtitle:
          'Suele decirse cuando solo nos visan por interé de obtener algo a cambio',
      image:
          'https://images.unsplash.com/photo-1552819401-700b5e342b9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 60,
      language: Languages.es,
      title: 'A mejor cocinero, se le va un tomate entero',
      subtitle: 'Cualquier persona puede equivocarse',
      image:
          'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 61,
      language: Languages.es,
      title: 'A buen hambre, no hay mal pan',
      subtitle: 'Cuando hay necesidad, cualquier oportunidad es buena',
      image:
          'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 62,
      language: Languages.es,
      title: 'Carne que se lleva el gato, no vuelve al plato',
      subtitle:
          'Apela a las veces que prestas algo material y no son devuelvas',
      image:
          'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 63,
      language: Languages.es,
      title: 'Quien no oye consejos, no llega a viejo',
      subtitle: 'Se utiliza para invitar a alquien a recibir un consejo',
      image:
          'https://images.unsplash.com/photo-1516726283839-a493d9f167aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 64,
      language: Languages.es,
      title: 'Quien con niños duerme, mojado amanece',
      subtitle:
          'Atente a las consecuencias de andar con personas inmaduras porque pueden meterte en problemas',
      image:
          'https://images.unsplash.com/photo-1488539621750-1e0a7ebf61b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 65,
      language: Languages.es,
      title: 'No hay peor ciego que el que no quiere ver',
      subtitle: 'No debe uno mentirse a si mismo',
      image:
          'https://images.unsplash.com/photo-1516714819001-8ee7a13b71d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x60000000,
    ),
    Proverb(
      id: 66,
      language: Languages.es,
      title: 'Más vale malo conocido, que bueno por conocer',
      subtitle:
          'Es mejor quedarse con lo que ya se conoce, que experimentar algo nuevo',
      image:
          'https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 67,
      language: Languages.es,
      title: 'Más sabe el diablo por viejo, que por diablo',
      subtitle: 'La experiencia que se adquiere con los años',
      image:
          'https://images.unsplash.com/photo-1477313372947-d68a7d410e9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 68,
      language: Languages.es,
      title: 'Estamos arando, dijo la mosca al buey',
      subtitle:
          'Se refiere a las personas que se atribuyen acciones cuando en realidad no toman parte de ellas',
      image:
          'https://images.unsplash.com/photo-1525815814824-6d140886512d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 69,
      language: Languages.es,
      title: 'El que con lobos anda, a aullar se enseña',
      subtitle: 'Da a entender que hay que alejarse de las malas compañías',
      image:
          'https://images.unsplash.com/photo-1518504361720-82ccdc540022?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 70,
      language: Languages.es,
      title: 'El muerto al hoyo, y el vivo al gozo',
      subtitle: 'Hay que olvidar las penas',
      image:
          'https://images.unsplash.com/photo-1518381057566-9acabd658f10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 71,
      language: Languages.es,
      title: 'Dios los cría y ellos se juntan',
      subtitle: 'Da a entender que dos personas son muy parecidas',
      image:
          'https://images.unsplash.com/photo-1490578474895-699cd4e2cf59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 72,
      language: Languages.es,
      title: 'La venganza nunca es buena, mata el alma y la envenena',
      subtitle:
          'No conviene esgrimir venganza contra nadie, pues ella salpica nuestro propio espíritu y nos daña',
      image:
          'https://images.unsplash.com/photo-1565389193823-4e2e15e37dc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 73,
      language: Languages.es,
      title: 'Toda persona tiene su talón de Aquiles',
      subtitle: 'Da a entender que todos ostentamos un punto flaco o debilidad',
      image:
          'https://images.unsplash.com/photo-1558716008-1b5f48561f5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 74,
      language: Languages.es,
      title: 'Vive la vida como si fuera el último día',
      subtitle: 'Invita a disfrutar el momento porque puede que no haya otro',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1541593801762-d5ee89506ee1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 75,
      language: Languages.es,
      title: 'Machete estate en tu vaina',
      subtitle:
          'Invita a no buscar dificultades desconociendo las reacciones que podrían sobrevenir de una acción',
      image:
          'https://images.unsplash.com/photo-1553865541-0795ae17ef9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 76,
      language: Languages.es,
      title: 'Al mal paso, dale prisa',
      subtitle:
          'Buscar soluciones cuando nos encontramos en situaciones adversas',
      image:
          'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 77,
      language: Languages.es,
      title: 'Al mal tiempo, buena cara',
      subtitle: 'Sé positivo incluso en las dificultades',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1566996694954-90b052c413c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 78,
      language: Languages.es,
      title: 'Árbol que nace torcido, jamás su tronco endereza',
      subtitle: 'Las malas conductas y mañas, no son fáciles de corregir',
      image:
          'https://images.unsplash.com/photo-1462215401245-238712cdd72d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 79,
      language: Languages.es,
      title: 'Con la vara que midas, serás medido',
      subtitle: 'Todo lo hecho se nos será devuelto',
      image:
          'https://images.unsplash.com/photo-1562139753-b1ef6e9ded82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 80,
      language: Languages.es,
      title: 'Buey viejo, surco derecho',
      subtitle: 'Con los años se aprende',
      image:
          'https://images.unsplash.com/photo-1498122920496-ed9f9aab2051?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 81,
      language: Languages.es,
      title: 'Candil de la calle, oscuridad de tu casa',
      subtitle:
          'Hay personas que ayudan a todos, menos a los membros de su familia',
      image:
          'https://images.unsplash.com/photo-1506947456723-02bab3048abb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40202020,
    ),
    Proverb(
      id: 82,
      language: Languages.es,
      title: 'Camarón que se duerme, se lo lleva la corriente',
      subtitle:
          'Las oportunidades las debemos tomar cuando llegas, de lo contrario, estas no volverán',
      image:
          'https://images.unsplash.com/photo-1538960792157-b2e2b62d1f3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 83,
      language: Languages.es,
      title: 'Cae más rapido un hablador que un cojo',
      subtitle:
          'Las palabras son fáciles de olvidar, y también podemos llegar a hacer algo que al principio nos negábamos',
      image:
          'https://images.unsplash.com/photo-1532103380078-634c0f239cb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 84,
      language: Languages.es,
      title: 'Cría cuervos y te sacarán los ojos',
      subtitle:
          'Simboliza la ingratitud al desagradecido que paga con el bien que le han hecho',
      image:
          'https://images.unsplash.com/photo-1433888376991-1297486ba3f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 85,
      language: Languages.es,
      title: 'Del árbol caído todos quieren hacer leña',
      subtitle: 'Las personas se aprovechan de la desgracia ajena',
      image:
          'https://images.unsplash.com/photo-1518433583594-894718aaff7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 86,
      language: Languages.es,
      title: 'De tal palo, tal astilla',
      subtitle: 'Los hijos son iguales que los padres',
      image:
          'https://images.unsplash.com/photo-1542647775-baf9ec9ccd0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 87,
      language: Languages.es,
      title: 'Del dicho al hecho hay mucho trecho',
      subtitle: 'Es mejor hacerlo que decirlo',
      image:
          'https://images.unsplash.com/photo-1523215122-26803239f41f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 88,
      language: Languages.es,
      title: 'Del plato a la boca se cae la sopa',
      subtitle: 'No hay nada seguro en la vida',
      image:
          'https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 89,
      language: Languages.es,
      title: 'Dime con quien andas y te diré quién eres',
      subtitle:
          'A las personas se les conoce de acuerdo a las compañías que frecuenta',
      image:
          'https://images.unsplash.com/photo-1525026198548-4baa812f1183?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 90,
      language: Languages.es,
      title: 'Agua que no has de beber, déjala correr',
      subtitle:
          'Situaciones u oportunidades que no vamos a tomar debemos dejarlas de lado para que otros las aprovechen',
      image:
          'https://images.unsplash.com/photo-1437482078695-73f5ca6c96e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 91,
      language: Languages.es,
      title: 'Dios aprieta pero no ahoga',
      subtitle:
          'A pesar de todos los probemas de la vida, al final siempre hay una solución',
      image:
          'https://images.unsplash.com/photo-1458593140930-1f9049c952c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 92,
      language: Languages.es,
      title: 'Donde hubo fuego, cenizas quedan',
      subtitle:
          'Apela a los recuerdos que se guardan al concluir una relación amorosa',
      image:
          'https://images.unsplash.com/photo-1487845911428-da2a33549ca2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 93,
      language: Languages.es,
      title: 'Donde manda capitán no gobierna marinero',
      subtitle:
          'No podemos mandar cuando tenemos a alguién de mayor jerarquía sobre nosotros',
      image:
          'https://images.unsplash.com/photo-1533727745100-e50cf931def7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 94,
      language: Languages.es,
      title: 'El buen juez por su casa empieza',
      subtitle:
          'Debemos mirar nuestros propios defectos antes de juzgar los de los demás',
      image:
          'https://images.unsplash.com/photo-1575505586569-646b2ca898fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 95,
      language: Languages.es,
      title: 'El león cree que todos son de su condición',
      subtitle: 'Las personas critican en función de sus propias actitudes',
      image:
          'https://images.unsplash.com/photo-1517649281203-dad836b4abe5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 96,
      language: Languages.es,
      title: 'El león no es tan fiero como lo pintan',
      subtitle: 'Nos dejamos llevar por las apariencias',
      image:
          'https://images.unsplash.com/photo-1486667970798-b29d1090ff95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 97,
      language: Languages.es,
      title: 'Arrieros somos, y en el camino nos encontraremos',
      subtitle:
          'La vida tiene un efecto boomerang, todo lo que hacemos hacia el prójimo nos será devuelto',
      image:
          'https://images.unsplash.com/photo-1472740378865-80aab8e73251?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 98,
      language: Languages.es,
      title: 'Gallina vieja da buen caldo',
      subtitle: 'Los años aportan experiencia',
      image:
          'https://images.unsplash.com/photo-1518492104633-130d0cc84637?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 99,
      language: Languages.es,
      title: 'En boca cerrada no entran moscas',
      subtitle:
          'Podemos decir cosas que no quisiéramos, por lo que es mejor mantenerse callados en ciertos momentos',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1521996319423-90475f382dff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 100,
      language: Languages.es,
      title: 'El que nada debe, nada teme',
      subtitle: 'Alude a la conciencia limpia',
      image:
          'https://images.unsplash.com/photo-1494887205043-c5f291293cf6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 101,
      language: Languages.es,
      title: 'Hasta al mejor cazador se le va la liebre',
      subtitle: 'Todos cometemos errores',
      image:
          'https://images.unsplash.com/photo-1481140717212-b0124736c90a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 102,
      language: Languages.es,
      title: 'La curiosidad mató al gato',
      subtitle: 'No es bueno inmiscuirse en las situaciones ajenas',
      image:
          'https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 103,
      language: Languages.es,
      title: 'Leña verde no hace buen fuego',
      subtitle: 'Alude a los errores que se cometen en la juventud',
      image:
          'https://images.unsplash.com/photo-1535052288192-584044f5640f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 104,
      language: Languages.es,
      title: 'Ladrón que roba a ladrón tiene cien años de perdón',
      subtitle:
          'Cuando se toma algo que no es nuestro, pero que tampoco le pertenece a otra persona',
      image:
          'https://images.unsplash.com/photo-1537713873666-f00791130d05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 105,
      language: Languages.es,
      title: 'Los niños y los borrachos siempre dicen la verdad',
      subtitle:
          'La inocencia y la imprudencia nos hacen decir las cosas tal cual son',
      image:
          'https://images.unsplash.com/photo-1541020230467-e33e4f96f7fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 106,
      language: Languages.es,
      title: 'Más vale maña que fuerza',
      subtitle:
          'Se puede lograr más con la inteligencia que utilizando la fuerza',
      image:
          'https://images.unsplash.com/photo-1534367610401-9f5ed68180aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 107,
      language: Languages.es,
      title: 'Mucha pólvora y poca mecha',
      subtitle: 'A veces se presume más de lo que realmente se tiene',
      image:
          'https://images.unsplash.com/photo-1550983551-894c0d3e4182?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 108,
      language: Languages.es,
      title: 'Mucho ruido y pocas nueces',
      subtitle: 'A veces presumimos exactamente de lo que carecemos',
      image:
          'https://images.unsplash.com/photo-1528484456479-6c9fb3185b7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 109,
      language: Languages.es,
      title: 'Nadie nace sabiendo',
      subtitle: 'Las cosas se aprenden con el tiempo',
      image:
          'https://images.unsplash.com/photo-1513258496099-48168024aec0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 110,
      language: Languages.es,
      title: 'Nadie sabe lo que tiene hasta que lo pierde',
      subtitle:
          'Se llegan a valorar cosas o personas cuando ya no se encuentran a nuestro lado',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1502325966718-85a90488dc29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 111,
      language: Languages.es,
      title: 'No me des gato por liebre',
      subtitle: 'No me mientas o me engañes',
      image:
          'https://images.unsplash.com/photo-1531320931516-08f58f2d8396?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 112,
      language: Languages.es,
      title: 'No hay mal que cien años dure, ni cuerpo que lo aguante',
      subtitle: 'La mala suerte no dura para siempre',
      image:
          'https://images.unsplash.com/photo-1529765449044-a05f1a18a293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 113,
      language: Languages.es,
      title: 'Quien busca, encuentra',
      subtitle: 'Todo lo que uno se propone se puede llegar a lograr',
      image:
          'https://images.unsplash.com/photo-1549068219-ffacef098d03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 114,
      language: Languages.es,
      title: 'Quien calla otorga',
      subtitle: 'Más vale dar nuestro punto de vista a quedarnos callados',
      image:
          'https://images.unsplash.com/photo-1483706600674-e0c87d3fe85b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 115,
      language: Languages.es,
      title: 'Roma no se hizo en un día',
      subtitle: 'Se utiliza para decir que las cosa no son fáciles',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 116,
      language: Languages.es,
      title: 'Tanto va el cántaro a la fuente, hasta que se rompe',
      subtitle: 'La insistencia puede llegar a causar problemas',
      image:
          'https://images.unsplash.com/photo-1572112553549-4151f756bebc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 117,
      language: Languages.es,
      title: 'El ojo del amo engorda al caballo',
      subtitle: 'Lo propio suele mirarse con mejores ojos que lo ajeno',
      image:
          'https://images.unsplash.com/photo-1508343919546-4a5792fee935?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 118,
      language: Languages.es,
      title: 'Di tu secreto a tu amigo, y serás siempre su cautivo',
      subtitle:
          'Debemos de tener cuidado al confiar en alguien nuestros propios problemas',
      image:
          'https://images.unsplash.com/photo-1482356432770-3a99f07aba35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 119,
      language: Languages.es,
      title: 'En la boca del mentiroso, lo cierto se hace dudoso',
      subtitle:
          'Alude a las mentiras y a la nula confianza que se tiene en los mentirosos',
      image:
          'https://images.unsplash.com/photo-1460904577954-8fadb262612c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 120,
      language: Languages.es,
      title: 'Parece que la vaca del vecino da más leche',
      subtitle:
          'Se dice de las personas envidiosas que están más pendiente del negocio ajeno que del propio',
      image:
          'https://images.unsplash.com/photo-1520325143471-6969ad29c351?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 121,
      language: Languages.es,
      title: 'A las prueba me remito',
      subtitle:
          'Se utiliza para afirmas que su verdad es tan cierta que hasta puede mostrarla',
      image:
          'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 122,
      language: Languages.es,
      title: 'Preguntando se llega a Roma',
      subtitle: 'Preguntando se resuelven las dudas',
      image:
          'https://images.unsplash.com/photo-1529260830199-42c24126f198?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 123,
      language: Languages.es,
      title: 'El que es buen gallo, en cualquier gallinero canta',
      subtitle:
          'Las aptitudes, el talento y la cordura se demuestra donde quiera, cuando es necesario, y sea cual sea el medio en el que se esté',
      image:
          'https://images.unsplash.com/photo-1518965589465-99ecc8c66546?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 124,
      language: Languages.es,
      title: 'Duelos con pan son buenos',
      subtitle:
          'Afirma que los trabajos son soportables habiendo bienes y cenveniencias',
      image:
          'https://images.unsplash.com/photo-1573119450708-b71d9babcba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 125,
      language: Languages.es,
      title: 'De todo hay en la viña del Señor',
      subtitle:
          'Alude a la diversidad de personas y pensamientos en nuestra vida',
      image:
          'https://images.unsplash.com/photo-1550502369-d54b8f36db78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 126,
      language: Languages.es,
      title: 'A quien de ajeno se viste, en la calle lo desvisten',
      subtitle:
          'Advierte a quien se atribuye cosas que no son suyas, se expone a verse despojado de ellas en cualquier momento',
      image:
          'https://images.unsplash.com/photo-1488342994276-7c3bc0742042?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 127,
      language: Languages.es,
      title: 'Una sopa de su propio chocolate',
      subtitle:
          'Se utiliza para decir que se la están devolviendo con la misma acción',
      image:
          'https://images.unsplash.com/photo-1511381939415-e44015466834?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 128,
      language: Languages.es,
      title: 'Si queres una buena fama, que no te de el sol en la cama',
      subtitle: 'Si quieres conseguir un objetivo debes de trabajar duro',
      image:
          'https://images.unsplash.com/photo-1532911557891-d12f6b98dddc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 129,
      language: Languages.es,
      title: 'El césped siempre es más verde en el lado del vecino',
      subtitle: 'Nos enseña lo envidiosos que podemos ser',
      image:
          'https://images.unsplash.com/photo-1470137430626-983a37b8ea46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 130,
      language: Languages.es,
      title: 'No juzgues a un libro por su cubierta',
      subtitle: 'Las cosas no son siempre lo que aparentan ser',
      image:
          'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 131,
      language: Languages.es,
      title: 'Querer es poder',
      subtitle:
          'La voluntad que uno demuestra en la vida es un factor clave para conseguir lo que uno se propone',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1519834785169-98be25ec3f84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 132,
      language: Languages.es,
      title: 'Es mejor prevenir que curar',
      subtitle: 'Haz todo lo posible por evitar que te pasen cosas malas',
      image:
          'https://images.unsplash.com/photo-1515377905703-c4788e51af15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 133,
      language: Languages.es,
      title: 'El que no llora, no mama',
      subtitle:
          'Si tienes un problema, pero nunca lo comentas, nadie te podrá ayudar',
      image:
          'https://images.unsplash.com/photo-1480985041486-c65b20c01d1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 134,
      language: Languages.es,
      title: 'Aprende a caminar antes de correr',
      subtitle: 'Empieza por lo simple y ve mejorando poco a poco',
      image:
          'https://images.unsplash.com/photo-1502224562085-639556652f33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 135,
      language: Languages.es,
      title: 'El dinero no crece en los árboles',
      subtitle:
          'Se utiliza para decir que se está malgastando el dinero en tonterías',
      image:
          'https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 136,
      language: Languages.es,
      title: 'Mis manos están atadas',
      subtitle:
          'Se utiliza cuando no se puede hacer más por algo o por alguien',
      image:
          'https://images.unsplash.com/photo-1520980190535-d00da19630be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 137,
      language: Languages.es,
      title: 'Hoy por ti, mañana por mí',
      subtitle: 'Si tu me ayudas, yo te ayudaré también',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 138,
      language: Languages.es,
      title: 'Lo prohibido es lo más deseado',
      subtitle: 'Si algo no está permitido, lo más probable es que lo desees',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1579447167432-ba8b796e5de1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 139,
      language: Languages.es,
      title: 'No hay mal que por bien no venga',
      subtitle:
          'Cada situación tiene algunas cosas buenas, solo tienes que buscarlas',
      image:
          'https://images.unsplash.com/photo-1531171074112-291d5807273d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 140,
      language: Languages.es,
      title: 'Quien no arriesga no gana',
      subtitle:
          'Para cumplir tus objetivos tienes que ser persistente o romper algunas reglas',
      image:
          'https://images.unsplash.com/photo-1503944168849-8bf86875bbd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 141,
      language: Languages.es,
      title: 'Qué bonito es lo bonito. Lástima que sea pecado.',
      subtitle:
          'Expresa que las cosas que solemos disfrutar de la vida son censuradas por criterios morales',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1579355010314-9df6301ae0c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 142,
      language: Languages.es,
      title: 'Meter las cuatro',
      subtitle:
          'Se dice cuando alguien mete la pata, pero el error es tán grande que dice que metió las cuatro patas',
      image:
          'https://images.unsplash.com/photo-1530743657429-7881e92058f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 143,
      language: Languages.es,
      title: 'No come tamales por no tirar las hojas',
      subtitle: 'Señala a las personas que son muy tacañas',
      image:
          'https://images.unsplash.com/photo-1536882240095-0379873feb4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 144,
      language: Languages.es,
      title: 'Solitas bajan al agua, sin que les haga bajar',
      subtitle:
          'Los que más se hacen de rogar terminan haciendo lo que no querían hacer',
      image:
          'https://images.unsplash.com/photo-1511884642898-4c92249e20b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 145,
      language: Languages.es,
      title: 'Le salió la cola',
      subtitle:
          'Se dice de las personas que aparentemente son inocentes, pero al final salen a relucir sus faltas',
      image:
          'https://images.unsplash.com/photo-1501695277911-3f1eb8e68f99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 146,
      language: Languages.es,
      title: 'Para uno que madruga, hay otro que se desvela',
      subtitle:
          'Señala que siempre existe la posibilidad de encontrar a alguien con más capacidad o habilidad',
      image:
          'https://images.unsplash.com/photo-1541480601022-2308c0f02487?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 147,
      language: Languages.es,
      title: 'Vamos a ver de qué tumba salen más muertos',
      subtitle: 'Se usa cuando se desafía a alguien',
      image:
          'https://images.unsplash.com/photo-1557964765-40b594c4d1dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 148,
      language: Languages.es,
      title: 'Nadie tiene la vida comprada',
      subtitle:
          'Aconseja no dejar las cosas para el futuro. Hay que actuar hoy.',
      image:
          'https://images.unsplash.com/photo-1561715276-a2d087060f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 149,
      language: Languages.es,
      title: 'Te juzgué melón y me saliste calabaza',
      subtitle:
          'Se dice cuando las personas que creíamos capaces fallan en los que se les encomienda',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1540700857647-cae6480958f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 150,
      language: Languages.es,
      title: 'Hay que rascarse con sus propias uñas',
      subtitle:
          'Dice que las personas deben resolver sus problemas con sus propios medios',
      image:
          'https://images.unsplash.com/photo-1542295474-5e78124e5d59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 151,
      language: Languages.es,
      title: 'Borrar con el codo, lo que se escribió con la mano',
      subtitle:
          'Apela a las conradicciones y cambios de opinión de las personas',
      image:
          'https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 152,
      language: Languages.es,
      title: 'La ausencia causa el olvido',
      subtitle:
          'La falta de trato puede provocar un debilitamiento del vínculo amistoso o familiar',
      image:
          'https://images.unsplash.com/photo-1562785056-8201091fae25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 153,
      language: Languages.es,
      title: 'Viva la gallina, aunque sea con pepita',
      subtitle:
          'Recomienda conserva la vida, aunque sea viviendo con las molestias de una enfermedad o las de un trabajo.',
      image:
          'https://images.unsplash.com/photo-1567450133695-72d4fbe4bd33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 154,
      language: Languages.es,
      title: 'Para doncella honesta, el hacer algo es su fiesta',
      subtitle: 'Ensalza a la mujer trabajadora',
      image:
          'https://images.unsplash.com/photo-1527529482837-4698179dc6ce?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      color: 0x40000000,
    ),
    Proverb(
      id: 155,
      language: Languages.es,
      title: 'Al hijo de tu vecino limpiale las narices y mételo en tu casa',
      subtitle: 'Quiere decir que hay que relacionarse con quien sea tu igual.',
    ),
    ////////////////////////////
    ///
    ///
    /// REFRANES EN INGLÉS
    ///
    ///
    ///
    /////////////////////////////
    Proverb(
      id: 1000,
      language: Languages.en,
      title: 'Punctuality is the soul of business',
      subtitle: 'You should always be on time for your business appointments',
      tags: [Tag.premium],
      image:
          'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1001,
      language: Languages.en,
      title: 'Time heals all wounds',
      subtitle: 'This means that feelings of hurt will leave as time passes by',
      tags: [Tag.newest],
      image:
          'https://images.unsplash.com/photo-1501139083538-0139583c060f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1002,
      language: Languages.en,
      title: 'Kill two birds with one stone',
      color: 0x40000000,
      tags: [Tag.popular],
      subtitle: 'To accomplish two different things at the same time',
      image:
          'https://images.unsplash.com/photo-1490199444786-9d1faf6fbeb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1003,
      language: Languages.en,
      title: 'Seeing is believing',
      subtitle:
          'You believe in something when it is confirmed by concrete evidence',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1494869042583-f6c911f04b4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1004,
      language: Languages.en,
      title: 'First things first',
      subtitle:
          'The most important and most urgent worries should be taken care of first',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1561525140-c2a4cc68e4bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1005,
      language: Languages.en,
      title: 'When it rains, it pours',
      subtitle:
          'When bad things happen, they happen all at once. In other words, if you have some bad luck, more bad luck will follow shortly',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1428592953211-077101b2021b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1006,
      language: Languages.en,
      title: 'The apple doesn\'t fall far from the tree',
      subtitle: 'Children are very similar to their parents',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1565843248736-8c41e6db117b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1007,
      language: Languages.en,
      title: 'Never put off till tomorrow what you can do today',
      subtitle:
          'Don\'t be lazy. If you have some work that you need to do, do it now. Don\'t wait to do ir later',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1422433555807-2559a27433bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1008,
      language: Languages.en,
      title: 'Every cloud has a silver lining',
      subtitle:
          'When something bad happens to you, don\'t get too upset. There\'s usually something good associated with any bad experience',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1569428034239-f9565e32e224?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
      id: 1009,
      language: Languages.en,
      title: 'Pull a rabbit out of the hat',
      subtitle: 'To do something unexpected that may have seemed impossible',
      tags: [],
      image:
          'https://images.unsplash.com/photo-1478109214826-170faed7985c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    Proverb(
        id: 1010,
        language: Languages.en,
        title: 'Fight fire with fire',
        subtitle:
            'Respond to an attack by using similar method as one\'s attacker',
        image:
            'https://images.unsplash.com/photo-1497906539264-eb74442e37a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMjZ9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1011,
        language: Languages.en,
        title: 'Third time lucky',
        subtitle:
            'It is also used as a good lucky charm-spoken just before trying something for the third time',
        image:
            'https://images.unsplash.com/photo-1564937689754-0ef73a2d3b31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1472&q=80'),
    Proverb(
        id: 1012,
        language: Languages.en,
        title: 'To the hit the nail on the lead',
        subtitle: 'To describe exactly what is causing a situation or problem',
        image:
            'https://images.unsplash.com/photo-1493836512294-502baa1986e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1367&q=80'),
    Proverb(
        id: 1013,
        language: Languages.en,
        title: 'As easy as ABC',
        subtitle: 'Something that is very simple or easy',
        image:
            'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1309&q=80'),
    Proverb(
        id: 1014,
        language: Languages.en,
        title: 'Keep the ball rolling',
        subtitle: 'To mantain the momentum of an activity',
        image:
            'https://images.unsplash.com/photo-1505552613537-4aab9bf431c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1015,
        language: Languages.en,
        title: 'Start the ball rolling',
        subtitle: 'To begin something',
        image:
            'https://images.unsplash.com/photo-1558365849-6ebd8b0454b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1016,
        language: Languages.en,
        title: 'Storm in a teacup',
        subtitle:
            'Exaggerating a problem, anger or worry about something unimportant',
        image:
            'https://images.unsplash.com/photo-1458819757519-7581bade511d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80'),
    Proverb(
        id: 1017,
        title: 'It is raining cats and dogs',
        language: Languages.en,
        subtitle: 'It is raining very heavily',
        image:
            'https://images.unsplash.com/photo-1560112284-4d9d20a6cdd7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1018,
        title: 'Time is a great healer',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle: 'This means that feelings will leave as time passes by',
        image:
            'https://images.unsplash.com/photo-1509048191080-d2984bad6ae5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
    Proverb(
        id: 1019,
        title: 'Only time will tell',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle:
            'You cannot find out the truth, or the result of something. You have to wait and find out in the future.',
        image:
            'https://images.unsplash.com/photo-1485881697404-78678dbc4639?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1020,
        title: 'Now or never',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle:
            'This means that something has to be donde now or can not be done at all.',
        image:
            'https://images.unsplash.com/photo-1537183461722-94dad0fa85b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80'),
    Proverb(
        id: 1021,
        title: 'Feast today, famine tomorrow',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle:
            'If you don\'t save for a tougher time then you may have to go without tomorrow.',
        image:
            'https://images.unsplash.com/photo-1499781749692-e8274262c718?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=727&q=80'),
    Proverb(
        id: 1022,
        title: 'Time flies',
        language: Languages.en,
        subtitle: 'Time passes very quickly.',
        tags: [Tag.premium],
        image:
            'https://images.unsplash.com/photo-1506420531556-1dd2929c8a55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=714&q=80'),
    Proverb(
        id: 1023,
        title: 'Money is almighty',
        language: Languages.en,
        color: 0x60000000,
        tags: [Tag.premium],
        subtitle: 'If you have money, you can ask for favours.',
        image:
            'https://images.unsplash.com/photo-1525364034849-5b0d90c33bb4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
    Proverb(
        id: 1024,
        title: 'Like father, like son',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle: 'Sons may look and behave like their fathers.',
        image:
            'https://images.unsplash.com/photo-1557176278-3326a3193580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1025,
        title: 'How nice it is to see the rain without getting wet',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle:
            'Often used to answer someone who\'s critizicing your actions, without doing anything themselves.',
        image:
            'https://images.unsplash.com/photo-1515694346937-94d85e41e6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1026,
        title: 'Ignorance is bliss',
        language: Languages.en,
        subtitle: 'It is better not to know the truth.',
        image:
            'https://images.unsplash.com/photo-1574447360733-0c854489e105?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1027,
        title: 'Even monkeys fall from trees',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle: 'Everyone makes mistakes. Nobody is perfect.',
        image:
            'https://images.unsplash.com/photo-1534574781876-73482ee6c4ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1028,
        title: 'Nothing ventured, nothing gained',
        language: Languages.en,
        subtitle: 'You can\'t do anything without risking something.',
        image:
            'https://images.unsplash.com/photo-1485847791529-09ed2263da0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1029,
        title: 'The pain of the little finger is felt by the whole body',
        language: Languages.en,
        subtitle:
            'The world is connected. An injustice to one person impact more than just that person.',
        image:
            'https://images.unsplash.com/photo-1559828732-3f619545a167?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80'),
    Proverb(
        id: 1030,
        title: 'Strength is defeated by strategy',
        language: Languages.en,
        subtitle:
            'Even a strong opponent can be defeated by strategy that exploits its weaknesses.',
        image:
            'https://images.unsplash.com/photo-1523875194681-bedd468c58bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
    Proverb(
        id: 1031,
        title: 'In every forest there is a snake',
        language: Languages.en,
        subtitle:
            'Everywhere you go, there will be people wo should not be trusted.',
        image:
            'https://images.unsplash.com/photo-1570741066052-817c6de995c8?ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80'),
    Proverb(
        id: 1032,
        title: 'While there is life, there is hope',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle:
            'Never give up. There is always a chance of a recovery until the end.',
        image:
            'https://images.unsplash.com/photo-1492176273113-2d51f47b23b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1033,
        title: 'A sleeping shrimp is carried away by the current',
        language: Languages.en,
        subtitle:
            'If you are not paying attention, you won\'t have any control over the outcome.',
        image:
            'https://images.unsplash.com/photo-1502813514270-9fed4f4900aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1225&q=80'),
    Proverb(
        id: 1034,
        title: 'The truth hurts',
        language: Languages.en,
        tags: [Tag.newest],
        subtitle: 'Sometimes the truth is not that you wanted to hear.',
        image:
            'https://images.unsplash.com/photo-1557935551-bc58f6e7b7d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    Proverb(
        id: 1035,
        title: 'United we stand, divided we fall',
        language: Languages.en,
        subtitle:
            'When a group of people work toward the same cause the have stregth.',
        image:
            'https://images.unsplash.com/photo-1505243542579-da5adfe8338f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1036,
        title: 'A quitter never wins.\nA winner never quits.',
        language: Languages.en,
        color: 0x60000000,
        tags: [Tag.popular],
        subtitle: 'To be successful you must try until you reach your goal.',
        image:
            'https://images.unsplash.com/photo-1503944168849-8bf86875bbd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80'),
    Proverb(
        id: 1037,
        title: 'If someone throws stones at you, throw back bread',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.newest],
        subtitle: 'Instead of looking for revenge, show love and forgiveness.',
        image:
            'https://images.unsplash.com/photo-1524672322836-87e128d1652f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
    Proverb(
        id: 1038,
        title: 'A moneky in silk is a monkey no less',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle:
            'This means thay just because someone dresses fancy doesn\'t mean that they are necessarily mean that they are fancy.',
        image:
            'https://images.unsplash.com/photo-1531989417401-0f85f7e673f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1039,
        title: 'Kill two birds with one stone',
        language: Languages.en,
        subtitle: 'To accomplish two different things at the same time.',
        image:
            'https://images.unsplash.com/photo-1514412076816-d228b5c0973c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1040,
        title: 'Too many cooks spoil the broth',
        language: Languages.en,
        subtitle:
            'When there are too many people trying to lead and give their opinions it\'s confusing and leads to bad results.',
        image:
            'https://images.unsplash.com/photo-1469307517101-0b99d8fb0c33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1041,
        title: 'If you wish good advice, consult an old man',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle:
            'Old people have a lot of experience. If you want to have good advice or recommendations, ask an old person.',
        image:
            'https://images.unsplash.com/photo-1525964533885-d7182df4b5b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=713&q=80'),
    Proverb(
        id: 1042,
        title: 'One tongue is enough for a woman',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.newest],
        subtitle:
            'This proverb is another way of saying that women talk too much.',
        image:
            'https://images.unsplash.com/photo-1542729757-941ffe40be88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=717&q=80'),
    Proverb(
        id: 1043,
        title: 'Marry in haste, and repent at leisure',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle:
            'If we get married quickly, we may be sorry later. And we will have plenty of time to be sorry.',
        image:
            'https://images.unsplash.com/photo-1497342177742-93b996a6746e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
    Proverb(
        id: 1044,
        title: 'It\'s never too late to mend',
        language: Languages.en,
        subtitle: 'It is never too late to correct one\'s mistakes or faults.',
        image:
            'https://images.unsplash.com/photo-1530124566582-a618bc2615dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1045,
        title: 'Never do things by halves',
        language: Languages.en,
        subtitle:
            'Certains tasks must not be left half done. They must be done away with immediately.',
        image:
            'https://images.unsplash.com/photo-1525124868858-de4bca556d57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1046,
        title: 'Take the bull by the horns',
        language: Languages.en,
        subtitle: 'To grab hold of the problem and deal with it directly.',
        image:
            'https://images.unsplash.com/photo-1522521612083-730fb19791c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
    Proverb(
        id: 1047,
        title: 'Do not look where you fell, but where you slipped',
        language: Languages.en,
        subtitle:
            'Don\'t look at your mistakes, look at what caused you to make the mistakes otherwise you may repeat the mistake.',
        image:
            'https://images.unsplash.com/photo-1476458393436-fb857cc4c7b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1048,
        title: 'Rain does not fall on one roof alone',
        language: Languages.en,
        subtitle: 'Troubles comes to everyone at one time or another.',
        image:
            'https://images.unsplash.com/photo-1501999635878-71cb5379c2d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),
    Proverb(
        id: 1049,
        title: 'Good things come in small packages',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle:
            'We shouldn\'t underestimate the small things because something which looks small turns out to be much better than the bigger ones.',
        image:
            'https://images.unsplash.com/photo-1541544181051-e46607bc22a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1050,
        title: 'To be caught with your hand in the cookie jar',
        language: Languages.en,
        subtitle: 'To be caught in the act or attemp of doing something wrong.',
        image:
            'https://images.unsplash.com/photo-1574156812219-2ddcf745088e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1051,
        title: 'Faint heart never won fair lady',
        language: Languages.en,
        subtitle:
            'To succeed in life one must have the courage to pursue what he wants.',
        image:
            'https://images.unsplash.com/photo-1482361046637-0226fdcfa3b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1052,
        title: 'A good husband makes good wife',
        language: Languages.en,
        subtitle:
            'If a husband wants his wife to be respectful and loving to him, he should be respectful and loving to her.',
        image:
            'https://images.unsplash.com/photo-1466979939565-131c4b39a51b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1053,
        title: 'You can\'t always get what you want',
        language: Languages.en,
        color: 0x40000000,
        subtitle: 'Don\'t complain if you don\'t get what you wanted.',
        image:
            'https://images.unsplash.com/photo-1578364250118-5512b4f575cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1054,
        title: 'Walk the walk and talk the talk',
        language: Languages.en,
        subtitle: 'First do your task, then talk about it.',
        image:
            'https://images.unsplash.com/photo-1424169292451-7c28a6053189?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1055,
        title: 'Paddle your own canoe',
        language: Languages.en,
        subtitle: 'Act independently.',
        image:
            'https://images.unsplash.com/photo-1519757043093-285fcb07a4e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80'),
    Proverb(
        id: 1056,
        title: 'Grasp all, lose all',
        language: Languages.en,
        subtitle:
            'Trying to get everything will often result in not gaining anything.',
        image:
            'https://images.unsplash.com/photo-1493832697654-68fbd9009d53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1057,
        title: 'Fine feathers make fine birds',
        language: Languages.en,
        subtitle: 'You will be judged by how you look.',
        image:
            'https://images.unsplash.com/photo-1527380992061-b126c88cbb41?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'),
    Proverb(
        id: 1058,
        title: 'A man\'s home is his castle',
        language: Languages.en,
        tags: [Tag.premium],
        subtitle: 'The is no place like home.',
        image:
            'https://images.unsplash.com/photo-1519074069444-1ba4fff66d16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1059,
        title: 'Don\'t go between the tree and the bark',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle: 'Don\'t interfere when two people are having an argument.',
        image:
            'https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1060,
        title: 'Discretion is the better part of valor',
        language: Languages.en,
        subtitle: 'Being cautious is better than to merely be courageous.',
        image:
            'https://images.unsplash.com/photo-1533557188897-ef2bc7257ba3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=803&q=80'),
    Proverb(
        id: 1061,
        title: 'Don\'t fall before you\'re pushed',
        language: Languages.en,
        subtitle: 'Don\'t give up in the face of adversity.',
        image:
            'https://images.unsplash.com/photo-1534841645203-8843b9ac9737?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1062,
        title: 'Don\'t cut off your nose to spite your face',
        language: Languages.en,
        subtitle:
            'Do not take action to spite others than willharm you more than them.',
        image:
            'https://images.unsplash.com/photo-1478731334560-220ecba50728?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=649&q=80'),
    Proverb(
        id: 1063,
        title: 'Clothes make the man',
        language: Languages.en,
        subtitle: 'The more dressed up a man is the more influential he is.',
        image:
            'https://images.unsplash.com/photo-1505022610485-0249ba5b3675?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1064,
        title: 'What doesn\'t kill you makes you stronger',
        language: Languages.en,
        subtitle: 'People become tougher and wiser by facing hardships.',
        color: 0x40000000,
        tags: [Tag.popular],
        image:
            'https://images.unsplash.com/photo-1490225421893-2908ffad8593?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
    Proverb(
        id: 1065,
        title: 'Tomorrow is another day',
        language: Languages.en,
        tags: [Tag.premium],
        subtitle: 'You can\'t do everything today.',
        image:
            'https://images.unsplash.com/photo-1495430288918-03be19c7c485?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1066,
        title: 'Time will tell',
        language: Languages.en,
        subtitle: 'Sometime you just can\'t know.',
        image:
            'https://images.unsplash.com/photo-1454817481404-7e84c1b73b4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1067,
        title: 'There\'s no such thing as a free lunch',
        language: Languages.en,
        subtitle: 'You can\'t get something for nothing.',
        image:
            'https://images.unsplash.com/photo-1518133683791-0b9de5a055f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1068,
        title: 'There\'s more than one way to skin a cat',
        language: Languages.en,
        subtitle: 'There is more than one way to solve a problem.',
        color: 0x40000000,
        tags: [Tag.popular],
        image:
            'https://images.unsplash.com/photo-1548681528-6a5c45b66b42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1069,
        title: 'Stolen fruit is the sweetest',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle: 'Forbidden things are the most desirable.',
        image:
            'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1070,
        title: 'Some days you get the bear, other days the bear gets you',
        language: Languages.en,
        subtitle: 'Some days you win, ad some days you lose.',
        image:
            'https://images.unsplash.com/photo-1525423207238-e8f5315d87e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1378&q=80'),
    Proverb(
        id: 1071,
        title: 'Shoemaker, not above the sandal',
        language: Languages.en,
        subtitle: 'Do not talk about things you do not know anything about.',
        image:
            'https://images.unsplash.com/photo-1549605906-b55912efb0eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
    Proverb(
        id: 1072,
        title: 'Seeing is believing',
        language: Languages.en,
        subtitle:
            'You believe in something when it is confirmed by concrete evidence.',
        image:
            'https://images.unsplash.com/photo-1469554308573-c535e2a0e1de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1073,
        title: 'Rome wasn\'t built in a day',
        language: Languages.en,
        subtitle: 'It takes time to create something impressive.',
        image:
            'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1286&q=80'),
    Proverb(
        id: 1074,
        title: 'An old dog will learn no tricks',
        language: Languages.en,
        subtitle: 'It is impossible to change people\'s habits or mindset.',
        image:
            'https://images.unsplash.com/photo-1530115844297-e1629f09ad00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1075,
        title: 'Never let the right hand know what the left hand is doing',
        language: Languages.en,
        subtitle:
            'Charity should be done in secret, so you wan\'t do things just for praise.',
        image:
            'https://images.unsplash.com/photo-1542887800-faca0261c9e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=669&q=80'),
    Proverb(
        id: 1076,
        title: 'Many words will not fill a bushel',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle: 'Act, don\'t talk.',
        image:
            'https://images.unsplash.com/photo-1563209041-9790c0c08a45?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1077,
        title: 'Look before you leap',
        language: Languages.en,
        tags: [Tag.premium],
        subtitle: 'Think before you act.',
        image:
            'https://images.unsplash.com/photo-1491484815100-6f2890d04007?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1078,
        title: 'Live and let live',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle:
            'Let others do whatever they want as long as it does not hurt anyone.',
        image:
            'https://images.unsplash.com/photo-1514489024785-d5ba8dfb2198?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80'),
    Proverb(
        id: 1079,
        title: 'Lightning never strikes twice in the same place',
        language: Languages.en,
        tags: [Tag.premium],
        subtitle: 'The same misfortune won\'t happen to a person twice.',
        image:
            'https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
    Proverb(
        id: 1080,
        title: 'Lie down with dogs, wake up with fleas',
        language: Languages.en,
        subtitle: 'You will become like your company.',
        image:
            'https://images.unsplash.com/photo-1511732351157-1865efcb7b7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
    Proverb(
        id: 1081,
        title: 'It\'s cheaper to keep her',
        language: Languages.en,
        subtitle: 'It is often costly to divorce someone.',
        image:
            'https://images.unsplash.com/photo-1516822003754-cca485356ecb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1082,
        title: 'If you snooze you lose',
        language: Languages.en,
        tags: [Tag.premium],
        subtitle:
            'If you get distracted from your goals, someone else might beat you to them.',
        image:
            'https://images.unsplash.com/photo-1540547184829-84c9b874d511?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1083,
        title: 'If life gives you lemons, make lemonade',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.popular],
        subtitle:
            'If you have had many bad experiences, make something good out of it.',
        image:
            'https://images.unsplash.com/photo-1564651413432-87040afcae86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
    Proverb(
        id: 1084,
        title: 'An eyer for an eye and a tooth for a tooth',
        language: Languages.en,
        subtitle: 'Revenge is sweet.',
        image:
            'https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80'),
    Proverb(
        id: 1085,
        title: 'Every dog has its day',
        language: Languages.en,
        tags: [Tag.newest],
        subtitle: 'Everyone gets their chance eventually.',
        image:
            'https://images.unsplash.com/photo-1559190394-df5a28aab5c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
    Proverb(
        id: 1086,
        title: 'Every rose has its thorn',
        language: Languages.en,
        subtitle: 'No one is perfect.',
        image:
            'https://images.unsplash.com/photo-1496857239036-1fb137683000?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1087,
        title: 'Don\'t make a mountain out of a molehill',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.newest],
        subtitle: 'Don\'t make a big deal out of a little thing.',
        image:
            'https://images.unsplash.com/photo-1491555103944-7c647fd857e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1088,
        title: 'Don\'t look a gift horse in the mouth',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.premium],
        subtitle: 'Never criticize gifts.',
        image:
            'https://images.unsplash.com/photo-1438283173091-5dbf5c5a3206?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1089,
        title: 'Bitter pills may have blessed effects',
        language: Languages.en,
        color: 0x40000000,
        tags: [Tag.newest],
        subtitle: 'The remedy might be bitter, but the cure might be wonderful',
        image:
            'https://images.unsplash.com/photo-1580639810245-f68e0ef3876a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1090,
        title: 'All work and no play, makes Jack a dull boy',
        language: Languages.en,
        color: 0x40000000,
        subtitle:
            'Be sure to take breaks from work and do something entertaining.',
        image:
            'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1091,
        title: 'Half a loaf is better than no bread',
        language: Languages.en,
        subtitle:
            'Be grateful for what you get rather than complaining for what you don\'t have.',
        image:
            'https://images.unsplash.com/photo-1497534547324-0ebb3f052e88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1290&q=80'),
    Proverb(
        id: 1092,
        title: 'There are none so blind as those who will not see',
        language: Languages.en,
        subtitle:
            'It is useless explaining those who do not want to undestand.',
        image:
            'https://images.unsplash.com/photo-1453974336165-b5c58464f1ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80'),
    Proverb(
        id: 1093,
        title: 'In the country of the blind, the one eyed man is king',
        language: Languages.en,
        subtitle:
            'The person with a little ability in a group of those with absolutely no ability is at an advantage.',
        image:
            'https://images.unsplash.com/photo-1546903353-4649964874f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80'),
    Proverb(
        id: 1094,
        title: 'Once bitten, twice shy',
        language: Languages.en,
        subtitle:
            'From experience, we learn to avoid situation causing trouble or distress.',
        image:
            'https://images.unsplash.com/photo-1520903433380-0422514dee1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
    Proverb(
        id: 1095,
        title: 'Never judge by appearances',
        language: Languages.en,
        subtitle: 'Don\'t use looks as the criteria to assess someone.',
        image:
            'https://images.unsplash.com/photo-1504808995405-3437b83240db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),
    Proverb(
        id: 1096,
        title: 'The forbidden fruit is always the sweetest',
        language: Languages.en,
        subtitle: 'If something isn\'t allowed, you often want it the most.',
        image:
            'https://images.unsplash.com/photo-1533893662125-43c54ffa3b41?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1097,
        title: 'My hands are tied',
        language: Languages.en,
        color: 0x60000000,
        tags: [Tag.popular],
        subtitle: 'When you can\'t do what you would like to do.',
        image:
            'https://images.unsplash.com/photo-1521200379774-e541c236ea33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
    Proverb(
        id: 1098,
        title: 'Don\'t bite off more than you can chew',
        language: Languages.en,
        color: 0x60000000,
        tags: [Tag.popular],
        subtitle:
            'It\'s best not to get involved in too many projects, because you won\'t be able to focus and get them all done well.',
        image:
            'https://images.unsplash.com/photo-1535350069266-214c24e86f67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Proverb(
        id: 1099,
        title: 'Where there\'s a will, there\'s a way',
        language: Languages.en,
        subtitle:
            'If you have the will to meet the problems that are in front of you, there is a way to overcome them.',
        image:
            'https://images.unsplash.com/photo-1544221920-478f751f8835?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=758&q=80'),
    Proverb(
        id: 1100,
        title: 'Many hands make light work',
        language: Languages.en,
        subtitle:
            'If everyone works together to complete something, the each person has less to do.',
        image:
            'https://images.unsplash.com/photo-1531206715517-5c0ba140b2b8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
  ];
}
