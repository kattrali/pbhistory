import AppKit
import Commander

public func createPasteboard(key:String) throws -> NSPasteboard {
  if key == "find" {
    return NSPasteboard(name:NSFindPboard)
  } else if key == "general" {
    return NSPasteboard(name:NSGeneralPboard)
  }
  throw ArgumentError.InvalidType(value:key, type:"name", argument:"board")
}

public func printItems(pasteboard:NSPasteboard, number:Int) {
  let items = pasteboard.readObjectsForClasses([NSString.self], options:nil)!
  print("\(items.count) items")
  for i in 0...(min(items.count, number) - 1) {
    print(items[i])
  }
}
