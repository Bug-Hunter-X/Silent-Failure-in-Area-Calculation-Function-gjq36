# Silent Failure in Area Calculation Function

This repository demonstrates a common error in Swift: silently handling invalid inputs without providing informative feedback. The `calculateArea` function fails gracefully by returning 0 for invalid inputs instead of throwing an error.  This can lead to unexpected behavior in larger applications.

The solution demonstrates a more robust approach that uses exceptions to signal invalid inputs.