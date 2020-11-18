// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$showInfosAtom = Atom(name: '_HomeControllerBase.showInfos');

  @override
  bool get showInfos {
    _$showInfosAtom.reportRead();
    return super.showInfos;
  }

  @override
  set showInfos(bool value) {
    _$showInfosAtom.reportWrite(value, super.showInfos, () {
      super.showInfos = value;
    });
  }

  final _$fontSizeCardTitleAtom =
      Atom(name: '_HomeControllerBase.fontSizeCardTitle');

  @override
  double get fontSizeCardTitle {
    _$fontSizeCardTitleAtom.reportRead();
    return super.fontSizeCardTitle;
  }

  @override
  set fontSizeCardTitle(double value) {
    _$fontSizeCardTitleAtom.reportWrite(value, super.fontSizeCardTitle, () {
      super.fontSizeCardTitle = value;
    });
  }

  final _$fontSizeCardFooterBottomAtom =
      Atom(name: '_HomeControllerBase.fontSizeCardFooterBottom');

  @override
  double get fontSizeCardFooterBottom {
    _$fontSizeCardFooterBottomAtom.reportRead();
    return super.fontSizeCardFooterBottom;
  }

  @override
  set fontSizeCardFooterBottom(double value) {
    _$fontSizeCardFooterBottomAtom
        .reportWrite(value, super.fontSizeCardFooterBottom, () {
      super.fontSizeCardFooterBottom = value;
    });
  }

  final _$posYAtom = Atom(name: '_HomeControllerBase.posY');

  @override
  double get posY {
    _$posYAtom.reportRead();
    return super.posY;
  }

  @override
  set posY(double value) {
    _$posYAtom.reportWrite(value, super.posY, () {
      super.posY = value;
    });
  }

  final _$swipedCardAtom = Atom(name: '_HomeControllerBase.swipedCard');

  @override
  bool get swipedCard {
    _$swipedCardAtom.reportRead();
    return super.swipedCard;
  }

  @override
  set swipedCard(bool value) {
    _$swipedCardAtom.reportWrite(value, super.swipedCard, () {
      super.swipedCard = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void swipeCard() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.swipeCard');
    try {
      return super.swipeCard();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setShowInfos() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setShowInfos');
    try {
      return super.setShowInfos();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showInfos: ${showInfos},
fontSizeCardTitle: ${fontSizeCardTitle},
fontSizeCardFooterBottom: ${fontSizeCardFooterBottom},
posY: ${posY},
swipedCard: ${swipedCard}
    ''';
  }
}
