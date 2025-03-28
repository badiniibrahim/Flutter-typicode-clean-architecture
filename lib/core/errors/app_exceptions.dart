/// Base class for all app exceptions (abstract)
abstract class AppException implements Exception {
  final String message;
  final int? statusCode;

  AppException(this.message, {this.statusCode});

  @override
  String toString() => "$runtimeType: $message";
}

// 🔒 400 – Mauvaise requête
class BadRequestException extends AppException {
  BadRequestException() : super("Requête invalide", statusCode: 400);
}

// 🔒 401 – Non autorisé
class UnauthorizedException extends AppException {
  UnauthorizedException() : super("Accès non autorisé", statusCode: 401);
}

// 🔒 403 – Accès interdit
class ForbiddenException extends AppException {
  ForbiddenException() : super("Accès interdit", statusCode: 403);
}

// 🔍 404 – Ressource non trouvée
class NotFoundException extends AppException {
  NotFoundException() : super("Ressource introuvable", statusCode: 404);
}

// 💥 500 – Erreur serveur
class ServerErrorException extends AppException {
  ServerErrorException() : super("Erreur interne du serveur", statusCode: 500);
}

// ⏱️ Timeout – pas de réponse dans les temps
class TimeoutException extends AppException {
  TimeoutException() : super("Le délai de réponse a été dépassé");
}

// 🌐 Problème de connexion internet
class NetworkException extends AppException {
  NetworkException([String? msg])
      : super(msg ?? "Erreur réseau. Vérifiez votre connexion internet");
}

// ❓ Par défaut – erreur inconnue
class UnknownHttpException extends AppException {
  UnknownHttpException() : super("Une erreur inconnue est survenue");
}
