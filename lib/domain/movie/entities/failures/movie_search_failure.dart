sealed class MovieSearchFailure {}

class MovieSearchConnectionError extends MovieSearchFailure {}

class MovieSearchUnknownError extends MovieSearchFailure {}
