import Foundation

func getGreeting() -> String {
    // Get the current time in Indonesia
    let indonesiaTimeZone = TimeZone(identifier: "Asia/Jakarta")!
    let currentDate = Date()

    // Set the calendar to use the Indonesia timezone
    var calendar = Calendar.current
    calendar.timeZone = indonesiaTimeZone

    // Extract the hour component from the current time
    let hour = calendar.component(.hour, from: currentDate)

    // Determine the greeting based on the hour
    if hour >= 5 && hour < 12 {
        return "Good Morning"
    } else if hour >= 12 && hour < 18 {
        return "Good Afternoon"
    } else {
        return "Good Evening"
    }
}
