// List text items on the general or find pasteboard
//
// Dependencies:
// * OS X 10.10+ SDK
// * Swift 2
// * https://github.com/kylef/Commander

import Commander
import PBHistory

let version = "1.0.0"


command (
  Option("number", 5, flag: "n", description: "The maximum number of pasteboard items"),
  Option("board", "general", flag: "b", description: "The pasteboard to query. Options: find, general (default)")
) { number, board in
  do {
    printItems(try createPasteboard(board), number:10)
  } catch {
    print(error)
  }
}.run(version)

