enum AreaError: Error {
    case invalidInput
}

func calculateArea(width: Double, height: Double) throws -> Double {
    guard width > 0, height > 0 else {
        throw AreaError.invalidInput
    }
    return width * height
}

dois{
    let area = try calculateArea(width: 10, height: 5)
    print(area) // Output: 50.0

    let area2 = try calculateArea(width: -5, height: 5) 
    print(area2) // This will throw an error
} catch AreaError.invalidInput {
    print("Invalid input: width and height must be positive.")
} catch {
    print("An unexpected error occurred.")
}

//Alternative Solution using optionals
func calculateAreaOptional(width: Double, height: Double) -> Double?
{
    guard width > 0, height > 0 else {
        return nil
    }
    return width * height
}

if let area3 = calculateAreaOptional(width: 10, height: 5) {
    print(area3) //Output:50.0
}

if let area4 = calculateAreaOptional(width: -5, height: 5) {
    print(area4)
} else {
    print("Invalid input: width and height must be positive.")
}