//
//  PathSanitizer.swift
//  ClaudeIsland
//
//  Matches Claude Code's path sanitization logic from
//  sessionStoragePortable.ts → sanitizePath()
//

import Foundation

/// Sanitize a path the same way Claude Code does:
/// replace every non-alphanumeric character with a hyphen.
func sanitizeCwd(_ cwd: String) -> String {
    return String(cwd.map { $0.isLetter || $0.isNumber ? $0 : Character("-") })
}
