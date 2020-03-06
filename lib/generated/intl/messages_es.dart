// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static m0(coinsRewarded, currentPoints) => "¡Felicidades! Acabas de conseguir ${coinsRewarded} Coins por Añadir ${currentPoints} Refranes a Favoritos.\n\n¿Quieres doblar tu recompensa?.";

  static m1(coinsRewarded, currentPoints) => "¡Felicidades! Has conseguido ${coinsRewarded} Coins por conectarte ${currentPoints} días consecutivos a nuestra App.\n\n¿Quieres doblar tu recompensa?.";

  static m2(currentPoints) => "${currentPoints} Días Consecutivos Conectado";

  static m3(coinsRewarded, currentPoints) => "¡Felicidades! Has conseguido ${coinsRewarded} Coins por descargar ${currentPoints} Refranes.\n\n¿Quieres doblar tu recompensa?.";

  static m4(currentPoints) => "Descargar ${currentPoints} Refranes";

  static m5(coinsRewarded) => "¡Felicidades! Has conseguido ${coinsRewarded} Coins por ayudarnos a mejorar nuestra App.\n\n¿Quieres doblar tu recompensa?.";

  static m6(coinsNeeded) => "Necesitas conseguir al menos ${coinsNeeded} Coins más para poder descargar este Refrán.";

  static m7(coinsRewarded) => "¡Felicidades! Has conseguido ${coinsRewarded} Coins por puntuar nuestra App.\n\n¿Quieres doblar tu recompensa?.";

  static m8(coinsRewarded) => "¡Felicidades! Has conseguido ${coinsRewarded} Coins por compartir nuestra App.\n\n¿Quieres doblar tu recompensa?.";

  static m9(coinsRewarded, currentPoints) => "¡Felicidades! Has conseguido ${coinsRewarded} Coins por compartir ${currentPoints} Refranes.\n\n¿Quieres doblar tu recompensa?.";

  static m10(currentPoints) => "Compartir ${currentPoints} Refranes";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "addFavoriteDialogDescription" : m0,
    "addFavoriteDialogTitle" : MessageLookupByLibrary.simpleMessage("Añadir a Favoritos"),
    "appDirectoryName" : MessageLookupByLibrary.simpleMessage("Refranes"),
    "appSubtitle" : MessageLookupByLibrary.simpleMessage("Descubre. Descarga."),
    "appSubtitleSecondLine" : MessageLookupByLibrary.simpleMessage("Comparte."),
    "appTitle" : MessageLookupByLibrary.simpleMessage("Refranes."),
    "consecutiveDaysDialogDescription" : m1,
    "consecutiveDaysDialogTitle" : m2,
    "detailPageBack" : MessageLookupByLibrary.simpleMessage("ATRÁS"),
    "detailPageDownloadButton" : MessageLookupByLibrary.simpleMessage("Descargar"),
    "detailPageLikeButton" : MessageLookupByLibrary.simpleMessage("Me gusta"),
    "detailPageMeaning" : MessageLookupByLibrary.simpleMessage("Significado"),
    "detailPageShareButton" : MessageLookupByLibrary.simpleMessage("Compartir"),
    "dialogButtonDoubleCoins" : MessageLookupByLibrary.simpleMessage("¡Quiero el doble!"),
    "dialogButtonOK" : MessageLookupByLibrary.simpleMessage("VALE"),
    "downloadProverbsDialogDescription" : m3,
    "downloadProverbsDialogTitle" : m4,
    "drawerFavorites" : MessageLookupByLibrary.simpleMessage("Favoritos"),
    "drawerFeedback" : MessageLookupByLibrary.simpleMessage("Feedback"),
    "drawerGetMoreCoins" : MessageLookupByLibrary.simpleMessage("Consigue más monedas"),
    "drawerLanguages" : MessageLookupByLibrary.simpleMessage("Idiomas"),
    "drawerNewApps" : MessageLookupByLibrary.simpleMessage("Nuevas Apps"),
    "drawerPremiumUser" : MessageLookupByLibrary.simpleMessage("Súper-Refranero"),
    "drawerRateApp" : MessageLookupByLibrary.simpleMessage("Califícanos"),
    "drawerShareApp" : MessageLookupByLibrary.simpleMessage("Comparte nuestra App"),
    "drawerSignOut" : MessageLookupByLibrary.simpleMessage("Desconectar"),
    "favoritesPageTitle" : MessageLookupByLibrary.simpleMessage("Favoritos"),
    "feedbackButtonGiveMeCoins" : MessageLookupByLibrary.simpleMessage("¡DAME ESAS MONEDAS!"),
    "feedbackButtonNext" : MessageLookupByLibrary.simpleMessage("SIGUIENTE"),
    "feedbackButtonSendFeedback" : MessageLookupByLibrary.simpleMessage("ENVIAR OPINION"),
    "feedbackButtonStart" : MessageLookupByLibrary.simpleMessage("COMENZAR"),
    "feedbackDialogDescription" : m5,
    "feedbackDialogTitle" : MessageLookupByLibrary.simpleMessage("Encuesta Completada"),
    "feedbackPageTitle" : MessageLookupByLibrary.simpleMessage("Feedback"),
    "feedbackStepFiveQuestion" : MessageLookupByLibrary.simpleMessage("Puntúa la cantidad de anuncios en nuestra App"),
    "feedbackStepFourQuestion" : MessageLookupByLibrary.simpleMessage("¿Hay disponible suficientes Refranes en la App?"),
    "feedbackStepOneQuestion" : MessageLookupByLibrary.simpleMessage("¿Qué puntuación le darías a la aplicación?"),
    "feedbackStepSixQuestion" : MessageLookupByLibrary.simpleMessage("¡Lo has conseguido!"),
    "feedbackStepSixSubQuestion" : MessageLookupByLibrary.simpleMessage("Ya tenemos a los desarrolladores trabajando. ¡Es hora de pagar las deudas!\n\nComo agradecimiento por tu ayuda recibirás 200 monedas para que sigas descargando tus refranes favoritos."),
    "feedbackStepThreeQuestion" : MessageLookupByLibrary.simpleMessage("Puntúa la calidad de las imágenes:"),
    "feedbackStepTwoQuestion" : MessageLookupByLibrary.simpleMessage("Puntúa la calidad de los Refranes:"),
    "feedbackStepZeroQuestion" : MessageLookupByLibrary.simpleMessage("Responde a las siguientes preguntas"),
    "feedbackStepZeroSubQuestion" : MessageLookupByLibrary.simpleMessage("¡Ser Sincero es muy fácil!\n\nTu opinión nos ayudará a mejorar nuestra aplicación.\n\nComo recompensa al finalizar el cuestionario recibirás una montaña de monedas para que sigas descargando tus refranes favoritos."),
    "homePageTitleDiscover" : MessageLookupByLibrary.simpleMessage("Descubre"),
    "imageSaveErrorDialogButtonText" : MessageLookupByLibrary.simpleMessage("¡Volveré a Intentarlo!"),
    "imageSaveErrorDialogDescription" : MessageLookupByLibrary.simpleMessage("Se ha producido un error al descargar.\n\nComprueba que tienes espacio suficiente en tu dispositivo."),
    "imageSaveErrorDialogTitle" : MessageLookupByLibrary.simpleMessage("Error al descargar"),
    "imageSaveSuccesfullyDialogButtonText" : MessageLookupByLibrary.simpleMessage("¡GRACIAS!"),
    "imageSaveSuccesfullyDialogDescription" : MessageLookupByLibrary.simpleMessage("Podrás encontrarlo en la carpeta \"Refranes\", dentro de tu galería."),
    "imageSaveSuccesfullyDialogTitle" : MessageLookupByLibrary.simpleMessage("Archivo Guardado Correctamente"),
    "languagePageTitle" : MessageLookupByLibrary.simpleMessage("Idiomas"),
    "loginPageSignInAnonymously" : MessageLookupByLibrary.simpleMessage("COMENZAR"),
    "loginPageSignInWithGoogle" : MessageLookupByLibrary.simpleMessage("Continuar con Google Account"),
    "needMoreCoinsDialogButtonText" : MessageLookupByLibrary.simpleMessage("¡A POR ELLOS!"),
    "needMoreCoinsDialogDescription" : m6,
    "needMoreCoinsDialogTitle" : MessageLookupByLibrary.simpleMessage("Necesitas más Coins"),
    "noFavoritesSubtitle" : MessageLookupByLibrary.simpleMessage("\nUtiliza el icono de corazón que está en la parte superior derecha de cada Proverbio para añadirlo a tu lista de favoritos."),
    "noFavoritesTitle" : MessageLookupByLibrary.simpleMessage("Tu Lista de Favoritos está vacía"),
    "promotedAppsPageInstallButton" : MessageLookupByLibrary.simpleMessage("INSTALAR"),
    "promotedAppsPageTitle" : MessageLookupByLibrary.simpleMessage("Nuevas Apps"),
    "promotedAppsTopTitle" : MessageLookupByLibrary.simpleMessage("Descarga nuestras nuevas Apps"),
    "rateAppDialogDescription" : m7,
    "rateAppDialogTitle" : MessageLookupByLibrary.simpleMessage("App Puntuada"),
    "ratingsAnswer1five" : MessageLookupByLibrary.simpleMessage("Excelente. Me encanta esta aplicación."),
    "ratingsAnswer1four" : MessageLookupByLibrary.simpleMessage("Buena. Me gusta"),
    "ratingsAnswer1one" : MessageLookupByLibrary.simpleMessage("Pésima. No me gusta nada."),
    "ratingsAnswer1three" : MessageLookupByLibrary.simpleMessage("Regular. Es una aplicación normal."),
    "ratingsAnswer1two" : MessageLookupByLibrary.simpleMessage("Mala. Necesita mejorar algunos aspectos."),
    "ratingsAnswer2five" : MessageLookupByLibrary.simpleMessage("Excelente. ¡Me encantan!"),
    "ratingsAnswer2four" : MessageLookupByLibrary.simpleMessage("Buena. Me gustan."),
    "ratingsAnswer2one" : MessageLookupByLibrary.simpleMessage("Pésima. No me gusta nada."),
    "ratingsAnswer2three" : MessageLookupByLibrary.simpleMessage("Regular. Son normales."),
    "ratingsAnswer2two" : MessageLookupByLibrary.simpleMessage("Mala. Necesita esfuerzo."),
    "ratingsAnswer4five" : MessageLookupByLibrary.simpleMessage("Son más de los que necesito."),
    "ratingsAnswer4four" : MessageLookupByLibrary.simpleMessage("Hay de sobra."),
    "ratingsAnswer4one" : MessageLookupByLibrary.simpleMessage("Son muy pocos, quiero muchos más."),
    "ratingsAnswer4three" : MessageLookupByLibrary.simpleMessage("Tiene los necesarios."),
    "ratingsAnswer4two" : MessageLookupByLibrary.simpleMessage("Algunos más no vendrían mal."),
    "ratingsAnswer5five" : MessageLookupByLibrary.simpleMessage("Tiene la cantidad perfecta"),
    "ratingsAnswer5four" : MessageLookupByLibrary.simpleMessage("Algunos más no vendrían mal"),
    "ratingsAnswer5one" : MessageLookupByLibrary.simpleMessage("Son más de los que permito"),
    "ratingsAnswer5three" : MessageLookupByLibrary.simpleMessage("Tiene los necesarios"),
    "ratingsAnswer5two" : MessageLookupByLibrary.simpleMessage("Hay de sobra"),
    "rewardPageCompleted" : MessageLookupByLibrary.simpleMessage("Completado"),
    "rewardPageInstructions" : MessageLookupByLibrary.simpleMessage("Completa las siguientes acciones para conseguir recompensas y así poder descargar tus refranes preferidos"),
    "rewardPageOf" : MessageLookupByLibrary.simpleMessage("de"),
    "rewardPageReward" : MessageLookupByLibrary.simpleMessage("Recompensa"),
    "rewardPageTitle" : MessageLookupByLibrary.simpleMessage("Recompensas"),
    "rewardsAddFavoriteProverb" : MessageLookupByLibrary.simpleMessage("Añade a Favoritos"),
    "rewardsConsecutivesDays" : MessageLookupByLibrary.simpleMessage("Días Consecutivos Conectado"),
    "rewardsDownloadProverb" : MessageLookupByLibrary.simpleMessage("Descarga Refranes"),
    "rewardsFeedback" : MessageLookupByLibrary.simpleMessage("Danos tu opinión"),
    "rewardsRateApp" : MessageLookupByLibrary.simpleMessage("Calificanos"),
    "rewardsShareApp" : MessageLookupByLibrary.simpleMessage("Comparte App"),
    "rewardsShareProverb" : MessageLookupByLibrary.simpleMessage("Comparte Refranes"),
    "shareAppDialogDescription" : m8,
    "shareAppDialogTitle" : MessageLookupByLibrary.simpleMessage("App Compartida"),
    "shareCTA" : MessageLookupByLibrary.simpleMessage("Descarga Refranes Populares en Google Play"),
    "shareProverbsDialogDescription" : m9,
    "shareProverbsDialogTitle" : m10,
    "shareSubject" : MessageLookupByLibrary.simpleMessage("¡Quiero compartir una frase contigo!"),
    "tagNamesAll" : MessageLookupByLibrary.simpleMessage("Todos"),
    "tagNamesNewest" : MessageLookupByLibrary.simpleMessage("Nuevos"),
    "tagNamesPopular" : MessageLookupByLibrary.simpleMessage("Popular"),
    "tagNamesPremium" : MessageLookupByLibrary.simpleMessage("Premium")
  };
}
