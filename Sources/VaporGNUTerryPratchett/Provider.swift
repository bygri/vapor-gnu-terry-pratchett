import Vapor

public final class Provider: Vapor.Provider {
  public init(config: Config) throws {}
  
  public func boot(_ drop: Droplet) {
    drop.middleware.append(GNUTerryPratchettMiddleware())
  }

  public func beforeRun(_ drop: Droplet) {}
}
