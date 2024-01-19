import 'package:flutter/material.dart';
import 'package:guia_turistica/core/models/atraction_model.dart';
import 'package:guia_turistica/core/models/category_model.dart';
import 'package:guia_turistica/core/models/city_model.dart';
import 'package:guia_turistica/core/models/city_model_2.dart';
import 'package:guia_turistica/core/services/services.dart';

class HomeScreenNotifier extends ChangeNotifier {
  /// Crear el constructor con la inyeccion de dependencias - Services
  HomeScreenNotifier(this._services);
  final Services _services;

  /// Crear las variables de estado

  List<CityModel>? _cities;

  CityModel2? _cities2;

  List<CategoryModel>? _categories;

  List<AttractionModel>? _attraction;

  /// Crear getters y setters variables

  List<CityModel>? get cities => _cities;

  CityModel2? get cities2 => _cities2;

  List<CategoryModel>? get categories => _categories;

  List<AttractionModel>? get attractions => _attraction;

  set cities(List<CityModel>? cities) {
    _cities = cities;

    /// setState((){})
    notifyListeners();
  }

  set cities2(CityModel2? cities) {
    _cities2 = cities;
    notifyListeners();
  }

  set categories(List<CategoryModel>? categories) {
    _categories = categories;
    notifyListeners();
  }

  set attractions(List<AttractionModel>? attraction) {
    _attraction = attraction;
    notifyListeners();
  }

  /// Crear los métodos
  Future<void> getCities() async {
    try {
      _cities = await _services.getCities();
      _cities2 = await _services.getCities2();
    } catch (err) {
      _cities = [];
    } finally {
      notifyListeners();
    }
  }

  Future<void> getCategories() async {
    try {
      _categories = await _services.getCategories();
    } catch (err) {
      _categories = [];
    } finally {
      notifyListeners();
    }
  }

  Future<void> getAttraction() async {
    try {
      _attraction = await _services.getAttractionsWithFilters();
    } catch (err) {
      _attraction = [];
    } finally {
      notifyListeners();
    }
  }
}
