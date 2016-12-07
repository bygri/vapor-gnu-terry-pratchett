import HTTP

final class GNUTerryPratchettMiddleware: Middleware {
  func respond(to request: Request, chainingTo next: Responder) throws -> Response {
    let response = try next.respond(to: request)
    response.headers["X-Clacks-Overhead"] = "GNU Terry Pratchett"
    return response
  }
}
