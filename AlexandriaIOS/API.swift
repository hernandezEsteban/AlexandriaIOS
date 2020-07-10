// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LoginQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query login {
      logIn(logInInput: {email: "py@email.com", password: "123"}) {
        __typename
        name
        lastName
        isAdmin
      }
    }
    """

  public let operationName: String = "login"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("logIn", arguments: ["logInInput": ["email": "py@email.com", "password": "123"]], type: .object(LogIn.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(logIn: LogIn? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "logIn": logIn.flatMap { (value: LogIn) -> ResultMap in value.resultMap }])
    }

    public var logIn: LogIn? {
      get {
        return (resultMap["logIn"] as? ResultMap).flatMap { LogIn(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "logIn")
      }
    }

    public struct LogIn: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("isAdmin", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, lastName: String? = nil, isAdmin: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "name": name, "lastName": lastName, "isAdmin": isAdmin])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var lastName: String? {
        get {
          return resultMap["lastName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var isAdmin: Bool? {
        get {
          return resultMap["isAdmin"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isAdmin")
        }
      }
    }
  }
}
