import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../widgets/info_dialog.dart';

class AraeDialogs {
  static needMoreCoins(BuildContext context, {@required int coinsNeeded}) {
    showDialog(
      context: context,
      builder: (context) => InfoDialog(
        topIcon: Icons.info,
        //Necesitas Coins
        title: S.of(context).needMoreCoinsDialogTitle,
        //Necesitas conseguir al menos $coinsNeeded Coins más para poder descargar más refranes.
        description: S.of(context).needMoreCoinsDialogDescription(coinsNeeded),
        //¡A por ellos!
        buttonText: S.of(context).needMoreCoinsDialogButtonText,
      ),
    );
  }

  static imageSaveSuccesfully(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return InfoDialog(
          topIcon: Icons.file_download,
          //Archivo Guardado Correctamente
          title: S.of(context).imageSaveSuccesfullyDialogTitle,
          //Podrás encontrarlo en la carpeta Refranes, dentro de tu galería
          description: S.of(context).imageSaveSuccesfullyDialogDescription,
          //¡Gracias!
          buttonText: S.of(context).imageSaveSuccesfullyDialogButtonText,
        );
      },
    );
  }

  static imageSaveError(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return InfoDialog(
          topIcon: Icons.error,
          //Error al descargar
          title: S.of(context).imageSaveErrorDialogTitle,
          //Se ha producido un error al descargar. Comprueba que tienes espacio suficiente en tu dispositivo
          description: S.of(context).imageSaveErrorDialogDescription,
          //¡Volveré a Intentarlo!
          buttonText: S.of(context).imageSaveErrorDialogButtonText,
        );
      },
    );
  }
}
