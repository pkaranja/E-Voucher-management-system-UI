enum ErrorType { general, network, camera, location, api, initialization }

extension ErrorTypeExtension on ErrorType {

  String get errorImage {
    switch (this) {
      case ErrorType.network:
      return "assets/images/errors/connection.png";

      case ErrorType.camera:
      return "assets/images/errors/camera.png";

      case ErrorType.location:
      return "assets/images/errors/location.png";

      case ErrorType.api:
      return "assets/images/errors/generic.png";

      case ErrorType.general:
      return "assets/images/errors/generic.png";

      case ErrorType.initialization:
        return "assets/images/errors/generic.png";

      default:
        return "assets/images/errors/generic.png";
      }
    }

    String get errorTitle {
      switch (this) {
        case ErrorType.network:
          return "Network Error";

        case ErrorType.camera:
          return "Camera Access Denied";

        case ErrorType.location:
          return "Location Access Denied";

        case ErrorType.api:
          return "System API Down";

        case ErrorType.initialization:
          return "System malfunction";

        default:
          return "Error";
      }
    }

    String get errorMessage {
      switch (this) {
        case ErrorType.network:
          return "Could not connect to the network, please try again later";

        case ErrorType.camera:
          return "Could not access the camera";

        case ErrorType.location:
          return "Could not access the location";

        case ErrorType.api:
          return "System API is down at the moment, please try again later";

        case ErrorType.initialization:
          return "Something went wrong, we are working to resolve this issue as soon as possible";

        default:
          return "Something went wrong, we are working to resolve this issue as soon as possible";
      }
    }
  }

