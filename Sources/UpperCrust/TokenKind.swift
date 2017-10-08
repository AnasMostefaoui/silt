// TokenKind.swift
// Automatically generated by SyntaxGen. Do not edit!
//
// Copyright 2017, The Silt Language Project.
//
// This project is released under the MIT license, a copy of which is
// available in the repository.
public enum TokenKind: Equatable {
  case eof
  case moduleKeyword
  case arrow
  case letKeyword
  case pipe
  case semicolon
  case forwardSlash
  case fieldKeyword
  case importKeyword
  case recordKeyword
  case rightParen
  case colon
  case openKeyword
  case floatingLiteral(String)
  case unknown(Character)
  case equals
  case dataKeyword
  case leftBrace
  case typeKeyword
  case withKeyword
  case identifier(String)
  case rightBrace
  case leftParen
  case inKeyword
  case whereKeyword
  case period
  case integerLiteral(String)

  public init(punctuation: String) {
    switch punctuation {
    case "->": self = .arrow
    case "|": self = .pipe
    case ";": self = .semicolon
    case "\\": self = .forwardSlash
    case ")": self = .rightParen
    case ":": self = .colon
    case "=": self = .equals
    case "{": self = .leftBrace
    case "}": self = .rightBrace
    case "(": self = .leftParen
    case ".": self = .period
    default: fatalError("Not punctuation?")
    }
  }

  public init(identifier: String) {
    switch identifier {
    case "module": self = .moduleKeyword
    case "let": self = .letKeyword
    case "field": self = .fieldKeyword
    case "import": self = .importKeyword
    case "record": self = .recordKeyword
    case "open": self = .openKeyword
    case "data": self = .dataKeyword
    case "type": self = .typeKeyword
    case "with": self = .withKeyword
    case "in": self = .inKeyword
    case "where": self = .whereKeyword
    default: self = .identifier(identifier)
    }
  }
  public var text: String {
    switch self {
    case .eof: return ""
    case .moduleKeyword: return "module"
    case .arrow: return "->"
    case .letKeyword: return "let"
    case .pipe: return "|"
    case .semicolon: return ";"
    case .forwardSlash: return "\\"
    case .fieldKeyword: return "field"
    case .importKeyword: return "import"
    case .recordKeyword: return "record"
    case .rightParen: return ")"
    case .colon: return ":"
    case .openKeyword: return "open"
    case .floatingLiteral(let text): return text.description
    case .unknown(let text): return text.description
    case .equals: return "="
    case .dataKeyword: return "data"
    case .leftBrace: return "{"
    case .typeKeyword: return "type"
    case .withKeyword: return "with"
    case .identifier(let text): return text.description
    case .rightBrace: return "}"
    case .leftParen: return "("
    case .inKeyword: return "in"
    case .whereKeyword: return "where"
    case .period: return "."
    case .integerLiteral(let text): return text.description
    }
  }
  public static func == (lhs: TokenKind, rhs: TokenKind) -> Bool {
    switch (lhs, rhs) {
    case (.eof, .eof): return true
    case (.moduleKeyword, .moduleKeyword): return true
    case (.arrow, .arrow): return true
    case (.letKeyword, .letKeyword): return true
    case (.pipe, .pipe): return true
    case (.semicolon, .semicolon): return true
    case (.forwardSlash, .forwardSlash): return true
    case (.fieldKeyword, .fieldKeyword): return true
    case (.importKeyword, .importKeyword): return true
    case (.recordKeyword, .recordKeyword): return true
    case (.rightParen, .rightParen): return true
    case (.colon, .colon): return true
    case (.openKeyword, .openKeyword): return true
    case (.floatingLiteral(let l), .floatingLiteral(let r)): return l == r
    case (.unknown(let l), .unknown(let r)): return l == r
    case (.equals, .equals): return true
    case (.dataKeyword, .dataKeyword): return true
    case (.leftBrace, .leftBrace): return true
    case (.typeKeyword, .typeKeyword): return true
    case (.withKeyword, .withKeyword): return true
    case (.identifier(let l), .identifier(let r)): return l == r
    case (.rightBrace, .rightBrace): return true
    case (.leftParen, .leftParen): return true
    case (.inKeyword, .inKeyword): return true
    case (.whereKeyword, .whereKeyword): return true
    case (.period, .period): return true
    case (.integerLiteral(let l), .integerLiteral(let r)): return l == r
    default: return false
    }
  }
}
