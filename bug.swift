func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

//Error prone section
func calculateArea(width: Double, height: Double) -> Double {
    if width <= 0 || height <= 0 {
        return 0 // This handles invalid inputs but silently fails
    }
    return width * height
}

let area2 = calculateArea(width: -5, height: 5)
print(area2) // Output: 0.0, but should ideally throw an error or handle differently