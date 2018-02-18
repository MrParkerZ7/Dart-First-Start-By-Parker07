import 'package:angular/angular.dart';

// Define annotation @Injectable class for injectable Fox
@Injectable()
class Fox {
  int layers;
  Ingredients ingredients;

  Fox(this.ingredients);
}

@Injectable()
class Ingredients {
  bool frosting;
  String flour;
}
