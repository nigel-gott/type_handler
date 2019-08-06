// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// TypeHandlerGenerator
// **************************************************************************

abstract class FruitHandler<T> {
  static Function(Fruit) fruitHandler<T>(
      T Function(Apple) apple, T Function(Orange) orange) {
    return (fruit) {
      if (fruit is Apple) {
        return apple(fruit);
      } else if (fruit is Orange) {
        return orange(fruit);
      } else {
        throw UnimplementedError(
            "Unknown class given to handler: $fruit. Subtype code generation has done something incorrectly. ");
      }
    };
  }

  T handleFruit(Fruit fruit) {
    return fruitHandler(apple, orange)(fruit);
  }

  T apple(Apple apple);
  T orange(Orange orange);
}

abstract class FruitHandlerWithDefault<T> {
  T handleFruit(Fruit fruit) {
    return FruitHandler.fruitHandler(apple, orange)(fruit);
  }

  T defaultValue();

  T apple(Apple apple) {
    return defaultValue();
  }

  T orange(Orange orange) {
    return defaultValue();
  }
}

abstract class OrangeHandler<T> {
  static Function(Orange) orangeHandler<T>(T Function(A) a) {
    return (orange) {
      if (orange is A) {
        return a(orange);
      } else {
        throw UnimplementedError(
            "Unknown class given to handler: $orange. Subtype code generation has done something incorrectly. ");
      }
    };
  }

  T handleOrange(Orange orange) {
    return orangeHandler(a)(orange);
  }

  T a(A a);
}

abstract class OrangeHandlerWithDefault<T> {
  T handleOrange(Orange orange) {
    return OrangeHandler.orangeHandler(a)(orange);
  }

  T defaultValue();

  T a(A a) {
    return defaultValue();
  }
}

abstract class XHandler<T> {
  static Function(X) xHandler<T>(T Function(Y) y) {
    return (x) {
      if (x is Y) {
        return y(x);
      } else {
        throw UnimplementedError(
            "Unknown class given to handler: $x. Subtype code generation has done something incorrectly. ");
      }
    };
  }

  T handleX(X x) {
    return xHandler(y)(x);
  }

  T y(Y y);
}

abstract class XHandlerWithDefault<T> {
  T handleX(X x) {
    return XHandler.xHandler(y)(x);
  }

  T defaultValue();

  T y(Y y) {
    return defaultValue();
  }
}

abstract class StateAndEventHandler<T> {
  T handleStateAndEvent(State state, Event event) {
    if (state is StateA) {
      if (event is EventA) {
        return handleStateAEventA(state, event);
      } else {
        return handleStateAEventB(state, event);
      }
    } else {
      if (event is EventA) {
        return handleStateBEventA(state, event);
      } else {
        return handleStateBEventB(state, event);
      }
    }
  }

  T handleStateAEventA(StateA state, EventA event);
  T handleStateAEventB(StateA state, EventB event);
  T handleStateBEventA(StateB state, EventA event);
  T handleStateBEventB(StateB state, EventB event);
}
