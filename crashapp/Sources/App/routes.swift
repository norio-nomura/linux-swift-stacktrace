import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get("apple") { (req) -> String in
        return "Hello, world!"
    }
    
    router.get("banana") { (req) -> String in
        fatalError("fatal banana")
    }
    
    router.get("charly") { (req) -> String  in
        "".enumerateLines { (a, b) in
            
        }
        
        return ""
    }

}
