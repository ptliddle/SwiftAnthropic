//
//  AnthropicServiceFactory.swift
//
//
//  Created by James Rochabrun on 1/28/24.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public final class AnthropicServiceFactory {
   
   /// Creates and returns an instance of `AnthropicService`.
   ///
   /// - Parameters:
   ///   - apiKey: The API key required for authentication.
   ///   - apiVersion: The Anthropic api version. Currently "2023-06-01". (Can be overriden)
   ///   - configuration: The URL session configuration to be used for network calls (default is `.default`).
   ///
   /// - Returns: A fully configured object conforming to `AnthropicService`.
   public static func service(
      apiKey: String,
      apiVersion: String = "2023-06-01",
      basePath: String = "https://api.anthropic.com",
      configuration: URLSessionConfiguration = .default)
      -> some AnthropicService
   {
      DefaultAnthropicService(
         apiKey: apiKey,
         apiVersion: apiVersion, 
         basePath: basePath,
         configuration: configuration)
   }
}
