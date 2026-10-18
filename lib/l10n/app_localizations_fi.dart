// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appName => 'Asiakirjaskanneri';

  @override
  String get selectLanguage => 'Valitse kieli';

  @override
  String get selectLanguageSubtitle => 'Valitse haluamasi kieli';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Jatka';

  @override
  String get scanDocuments => 'Skannaa asiakirjoja';

  @override
  String get scanDescription => 'Skannaa asiakirjoja ja muuta ne selkeiksi digitaalisiksi tiedostoiksi.';

  @override
  String get scanDocument => 'Skannaa asiakirja';

  @override
  String get importFromPhotos => 'Tuo kuvista';

  @override
  String get emptyDocuments => 'Skannatut asiakirjasi näkyvät täällä.';

  @override
  String get settings => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get documents => 'Asiakirjat';

  @override
  String get recentScans => 'Viimeisimmät skannaukset';

  @override
  String get reviewScan => 'Tarkista skannaus';

  @override
  String get page => 'Sivu';

  @override
  String get deletePage => 'Poista sivu';

  @override
  String get saveDocument => 'Tallenna asiakirja';

  @override
  String get documentName => 'Asiakirjan nimi';

  @override
  String get documentNameHint => 'Kirjoita asiakirjan nimi';

  @override
  String get cancel => 'Peruuta';

  @override
  String get save => 'Tallenna';

  @override
  String get documentSaved => 'Asiakirja tallennettu';

  @override
  String get saveFailed => 'Asiakirjaa ei voitu tallentaa';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sivua',
      one: '1 sivu',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Ei vielä tallennettuja asiakirjoja';

  @override
  String get renameDocument => 'Nimeä asiakirja uudelleen';

  @override
  String get deleteDocument => 'Poista asiakirja';

  @override
  String get newDocumentName => 'Asiakirjan uusi nimi';

  @override
  String get deleteDocumentTitle => 'Poistetaanko asiakirja?';

  @override
  String get deleteDocumentMessage => 'Tämä asiakirja ja kaikki sen sivut poistetaan pysyvästi.';

  @override
  String get delete => 'Poista';

  @override
  String get rename => 'Nimeä uudelleen';

  @override
  String get saveAsPdf => 'Tallenna PDF-muodossa';

  @override
  String get creatingPdf => 'Luodaan PDF-tiedostoa...';

  @override
  String get pdfCreated => 'PDF-tiedosto luotu';

  @override
  String get pdfCreateFailed => 'PDF-tiedostoa ei voitu luoda';

  @override
  String get exportDocument => 'Vie asiakirja';

  @override
  String get chooseExportFormat => 'Valitse vientimuoto';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Yhdistä kaikki sivut yhdeksi PDF-tiedostoksi';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Vie sivut JPEG-kuvina';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Vie sivut PNG-kuvina';

  @override
  String get myDocuments => 'Omat asiakirjat';

  @override
  String get searchDocuments => 'Hae asiakirjoja...';

  @override
  String get clearSearch => 'Tyhjennä haku';

  @override
  String get noMatchingDocuments => 'Hakua vastaavia asiakirjoja ei löytynyt.';

  @override
  String get sortDocuments => 'Lajittele asiakirjat';

  @override
  String get newestFirst => 'Uusimmat ensin';

  @override
  String get oldestFirst => 'Vanhimmat ensin';

  @override
  String get sortAZ => 'A–Ö';

  @override
  String get scanFirstDocument => 'Skannaa ensimmäinen asiakirjasi tai tuo kuvia aloittaaksesi.';

  @override
  String get shareApp => 'Jaa sovellus';

  @override
  String get rateApp => 'Arvostele sovellus';

  @override
  String get checkForUpdates => 'Tarkista päivitykset';

  @override
  String get help => 'Ohje';

  @override
  String get howToUse => 'Käyttöohje';

  @override
  String get howToUseSubtitle => 'Opi skannaamaan, muokkaamaan, tallentamaan ja jakamaan';

  @override
  String get howToUseIntro => 'Skannaa, järjestä, muokkaa ja jaa asiakirjoja muutamassa vaiheessa.';

  @override
  String get howToScanTitle => 'Skannaa tai tuo';

  @override
  String get howToScanDescription => 'Skannaa asiakirja kameralla tai tuo yksi tai useampi kuva kuvakirjastostasi.';

  @override
  String get howToEditTitle => 'Tarkista ja muokkaa';

  @override
  String get howToEditDescription => 'Rajaa, kierrä, lisää, poista tai järjestä sivuja uudelleen ennen tallentamista.';

  @override
  String get howToSaveTitle => 'Tallenna asiakirjasi';

  @override
  String get howToSaveDescription => 'Anna asiakirjalle nimi ja tallenna se turvallisesti sovellukseen.';

  @override
  String get howToManageTitle => 'Hallitse asiakirjoja';

  @override
  String get howToManageDescription => 'Avaa, hae, nimeä uudelleen, muokkaa tai poista tallennettuja asiakirjoja.';

  @override
  String get howToExportTitle => 'Jaa ja vie';

  @override
  String get howToUseTip => 'Vinkki: Tallennetut asiakirjasi pysyvät Asiakirjaskannerissa, kunnes viet, jaat tai poistat ne.';

  @override
  String get howToExportDescription => 'Voit jakaa asiakirjasi milloin tahansa PDF-, JPEG- tai PNG-muodossa muiden sovellusten kautta.';

  @override
  String get recognizeText => 'Tunnista teksti';

  @override
  String get editPage => 'Muokkaa sivua';

  @override
  String get editPages => 'Muokkaa sivuja';

  @override
  String get searchablePdf => 'Haettava PDF';

  @override
  String get searchablePdfDescription => 'Alkuperäiset skannatut sivut, joiden tekstistä voi hakea';

  @override
  String get searchablePdfFailed => 'Haettavaa PDF-tiedostoa ei voitu luoda.';

  @override
  String get imageExportFailed => 'Kuvia ei voitu viedä.';

  @override
  String get recognizeTextFailed => 'Tekstiä ei voitu tunnistaa.';

  @override
  String get recognizedTextTitle => 'Tunnistettu teksti';

  @override
  String get plainText => 'Pelkkä teksti';

  @override
  String get preserveFormat => 'Säilytä muotoilu';

  @override
  String get preserveFormatFailed => 'Tekstin muotoilua ei voitu säilyttää.';

  @override
  String get noTextFound => 'Tästä asiakirjasta ei löytynyt tekstiä.';

  @override
  String get textCopied => 'Teksti kopioitu!';

  @override
  String get copyText => 'Kopioi teksti';

  @override
  String get shareText => 'Jaa teksti';

  @override
  String get cropDocument => 'Rajaa asiakirja';

  @override
  String get crop => 'Rajaa';

  @override
  String get rotate => 'Kierrä';

  @override
  String get addPage => 'Lisää sivu';

  @override
  String get scanNewPage => 'Skannaa uusi sivu';

  @override
  String get useDocumentScanner => 'Käytä asiakirjaskanneria';

  @override
  String get chooseFromPhotos => 'Valitse kuvista';

  @override
  String get selectOneOrMorePhotos => 'Valitse yksi tai useampi kuva';

  @override
  String get reorder => 'Muuta järjestystä';

  @override
  String get reorderPages => 'Järjestä sivut uudelleen';

  @override
  String get deleteCurrentPage => 'Poista nykyinen sivu';

  @override
  String get deletePageTitle => 'Poistetaanko sivu?';

  @override
  String get deletePageMessage => 'Tämä sivu poistetaan asiakirjasta.';

  @override
  String get saveChanges => 'Tallenna muutokset';

  @override
  String get savingChanges => 'Tallennetaan...';

  @override
  String get dragToReorder => 'Muuta järjestystä vetämällä';

  @override
  String get cropImageFailed => 'Kuvaa ei voitu rajata.';

  @override
  String get rotateImageFailed => 'Kuvaa ei voitu kiertää.';

  @override
  String get addScannedPageFailed => 'Skannattua sivua ei voitu lisätä.';

  @override
  String get addPhotoFailed => 'Kuvaa ei voitu lisätä.';

  @override
  String get saveChangesFailed => 'Muutoksia ei voitu tallentaa.';

  @override
  String get done => 'Valmis';
}
