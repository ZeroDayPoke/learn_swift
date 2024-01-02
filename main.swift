import Foundation

let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

// Enum to represent different block types
enum BlockType {
    case deepWork, learning, social, flux, shallowWork, meditation, outdoor, otaku, lowIntensityExercise, highIntensityExercise, meal, rest, tedium
}

// Enum to represent different categories of blocks
enum BlockCategory {
    case stress, relax, inevitable
}

// Extend BlockType to include category information
extension BlockType {
    var category: BlockCategory {
        switch self {
        case .deepWork, .learning:
            return .stress
        case .social, .flux, .shallowWork, .meditation, .outdoor, .otaku, .lowIntensityExercise, .highIntensityExercise:
            return .relax
        case .meal, .rest, .tedium:
            return .inevitable
        }
    }
}

// Basic structure for a block
struct Block {
    var type: BlockType
    var category: BlockCategory
    var duration: Int
    var startTime: Date
    var endTime: Date {
        return Calendar.current.date(byAdding: .minute, value: duration, to: startTime)!
    }

    init(type: BlockType, duration: Int, startTime: Date) {
        self.type = type
        category = type.category
        self.duration = duration
        self.startTime = startTime
    }
}

// Exercise Block
class ExerciseBlock {
    var type: BlockType
    var duration: Int
    var isHighIntensity: Bool

    init(type: BlockType, duration: Int, isHighIntensity: Bool) {
        self.type = type
        self.duration = duration
        self.isHighIntensity = isHighIntensity
    }
}

// Meal Block
class MealBlock {
    var duration: Int
    var isFastingDay: Bool

    init(duration: Int, isFastingDay: Bool) {
        self.duration = duration
        self.isFastingDay = isFastingDay
    }
}

// Rest Block
class RestBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Meditation Block
class MeditationBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Flux Block
class FluxBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Tedium Block
class TediumBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Shallow Work Block
class ShallowWorkBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Social Block
class SocialBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Learning Block
class LearningBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

// Otaku Block
class OtakuBlock {
    var duration: Int

    init(duration: Int) {
        self.duration = duration
    }
}

struct UserPreferences {
    // Exercise preferences
    var enableHighIntensityExercise: Bool
    var weeklyHighIntensityExerciseBlocks: Int

    // Default block durations
    var defaultDeepWorkDuration: Int
    var defaultLearningDuration: Int
    var defaultSocialDuration: Int
    var defaultFluxDuration: Int
    var defaultShallowWorkDuration: Int
    var defaultMeditationDuration: Int
    var defaultOutdoorDuration: Int
    var defaultOtakuDuration: Int
    var defaultExerciseDuration: Int
    var defaultMealDuration: Int
    var defaultRestDuration: Int
    var defaultTediumDuration: Int

    // Outdoor activity preferences
    var doOutdoor: Bool
    var weeklyOutdoorBlocks: Int

    // Meditation preferences
    var doMeditation: Bool
    var dailyMeditationSessions: Int

    // Work preferences
    var dailyLearningSessions: Int
    var dailyDeepWorkSessions: Int
    var weeklyShallowWorkBlocks: Int

    // Social, relaxation, and special interest preferences
    var weeklySocialBlocks: Int
    var weeklyFluxBlocks: Int
    var weeklyOtakuBlocks: Int

    // Meal preferences
    var isFasting: Bool

    // Constructor for UserPreferences
    init(enableHighIntensityExercise: Bool, weeklyHighIntensityExerciseBlocks: Int, defaultDeepWorkDuration: Int, defaultLearningDuration: Int, defaultSocialDuration: Int, defaultFluxDuration: Int, defaultShallowWorkDuration: Int, defaultMeditationDuration: Int, defaultOutdoorDuration: Int, defaultOtakuDuration: Int, defaultExerciseDuration: Int, defaultMealDuration: Int, defaultRestDuration: Int, defaultTediumDuration: Int, doOutdoor: Bool, weeklyOutdoorBlocks: Int, doMeditation: Bool, dailyMeditationSessions: Int, dailyLearningSessions: Int, dailyDeepWorkSessions: Int, weeklyShallowWorkBlocks: Int, weeklySocialBlocks: Int, weeklyFluxBlocks: Int, weeklyOtakuBlocks: Int, isFasting: Bool) {
        self.enableHighIntensityExercise = enableHighIntensityExercise
        self.weeklyHighIntensityExerciseBlocks = weeklyHighIntensityExerciseBlocks
        self.defaultDeepWorkDuration = defaultDeepWorkDuration
        self.defaultLearningDuration = defaultLearningDuration
        self.defaultSocialDuration = defaultSocialDuration
        self.defaultFluxDuration = defaultFluxDuration
        self.defaultShallowWorkDuration = defaultShallowWorkDuration
        self.defaultMeditationDuration = defaultMeditationDuration
        self.defaultOutdoorDuration = defaultOutdoorDuration
        self.defaultOtakuDuration = defaultOtakuDuration
        self.defaultExerciseDuration = defaultExerciseDuration
        self.defaultMealDuration = defaultMealDuration
        self.defaultRestDuration = defaultRestDuration
        self.defaultTediumDuration = defaultTediumDuration
        self.doOutdoor = doOutdoor
        self.weeklyOutdoorBlocks = weeklyOutdoorBlocks
        self.doMeditation = doMeditation
        self.dailyMeditationSessions = dailyMeditationSessions
        self.dailyLearningSessions = dailyLearningSessions
        self.dailyDeepWorkSessions = dailyDeepWorkSessions
        self.weeklyShallowWorkBlocks = weeklyShallowWorkBlocks
        self.weeklySocialBlocks = weeklySocialBlocks
        self.weeklyFluxBlocks = weeklyFluxBlocks
        self.weeklyOtakuBlocks = weeklyOtakuBlocks
        self.isFasting = isFasting
    }
}

// Default User Preferences
let defaultPreferences = UserPreferences(
    enableHighIntensityExercise: true,
    weeklyHighIntensityExerciseBlocks: 3,
    defaultDeepWorkDuration: 90,
    defaultLearningDuration: 90,
    defaultSocialDuration: 60,
    defaultFluxDuration: 20,
    defaultShallowWorkDuration: 30,
    defaultMeditationDuration: 15,
    defaultOutdoorDuration: 15,
    defaultOtakuDuration: 60,
    defaultExerciseDuration: 30,
    defaultMealDuration: 30,
    defaultRestDuration: 480,
    defaultTediumDuration: 30,
    doOutdoor: true,
    weeklyOutdoorBlocks: 2,
    doMeditation: true,
    dailyMeditationSessions: 1,
    dailyLearningSessions: 2,
    dailyDeepWorkSessions: 4,
    weeklyShallowWorkBlocks: 7,
    weeklySocialBlocks: 1,
    weeklyFluxBlocks: 3,
    weeklyOtakuBlocks: 10,
    isFasting: true
)

func allocateNecessityBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var necessityPlan: [String: [BlockType]] = [:]
    var isFastingDay = preferences.isFasting

    for day in daysOfWeek {
        necessityPlan[day, default: []].append(.rest)
        necessityPlan[day]?.append(.tedium)
        let mealBlocksCount = isFastingDay ? 1 : 2
        necessityPlan[day]?.append(contentsOf: Array(repeating: .meal, count: mealBlocksCount))

        if preferences.isFasting {
            isFastingDay.toggle()
        }
    }

    return necessityPlan
}

func allocateExerciseBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var exercisePlan: [String: [BlockType]] = [:]

    // Calculate the number of days high-intensity exercise should be scheduled
    let highIntensityCount = preferences.weeklyHighIntensityExerciseBlocks

    // Determine the interval for scheduling high-intensity exercise
    let interval = highIntensityCount > 0 ? max(1, daysOfWeek.count / highIntensityCount) : 0
    var highIntensityDayIndex = 0

    for day in daysOfWeek {
        var dayBlocks = [BlockType]()

        // Schedule high-intensity exercise at calculated intervals
        if highIntensityDayIndex % interval == 0, highIntensityCount > exercisePlan.values.flatMap({ $0 }).filter({ $0 == .highIntensityExercise }).count {
            dayBlocks.append(.highIntensityExercise)
        } else {
            // Fill the rest of the day's exercise blocks with low-intensity exercise
            dayBlocks.append(.lowIntensityExercise)
        }

        // Increment the day index
        highIntensityDayIndex += 1
        exercisePlan[day] = dayBlocks
    }

    return exercisePlan
}

func allocateOutdoorBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var outdoorPlan: [String: [BlockType]] = [:]
    let blocksPerDay = preferences.weeklyOutdoorBlocks / daysOfWeek.count
    let extraBlocks = preferences.weeklyOutdoorBlocks % daysOfWeek.count

    for day in daysOfWeek {
        outdoorPlan[day] = Array(repeating: .outdoor, count: blocksPerDay)
    }

    let shuffledDays = daysOfWeek.shuffled()
    for i in 0 ..< extraBlocks {
        let day = shuffledDays[i % daysOfWeek.count]
        outdoorPlan[day]?.append(.outdoor)
    }

    return outdoorPlan
}

func allocateSocialBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var socialPlan: [String: [BlockType]] = [:]
    let blocksPerDay = preferences.weeklySocialBlocks / daysOfWeek.count
    let extraBlocks = preferences.weeklySocialBlocks % daysOfWeek.count

    for day in daysOfWeek {
        socialPlan[day] = Array(repeating: .social, count: blocksPerDay)
    }

    let shuffledDays = daysOfWeek.shuffled()
    for i in 0 ..< extraBlocks {
        let day = shuffledDays[i % daysOfWeek.count]
        socialPlan[day]?.append(.social)
    }

    return socialPlan
}

func allocateMeditationBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var meditationPlan: [String: [BlockType]] = [:]

    if preferences.doMeditation {
        for day in daysOfWeek {
            meditationPlan[day] = Array(repeating: .meditation, count: preferences.dailyMeditationSessions)
        }
    }

    return meditationPlan
}

func allocateFluxBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var fluxPlan: [String: [BlockType]] = [:]
    let blocksPerDay = preferences.weeklyFluxBlocks / daysOfWeek.count
    let extraBlocks = preferences.weeklyFluxBlocks % daysOfWeek.count

    for day in daysOfWeek {
        fluxPlan[day] = Array(repeating: .flux, count: blocksPerDay)
    }

    let shuffledDays = daysOfWeek.shuffled()
    for i in 0 ..< extraBlocks {
        let day = shuffledDays[i % daysOfWeek.count]
        fluxPlan[day]?.append(.flux)
    }

    return fluxPlan
}

func allocateShallowWorkBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var shallowWorkPlan: [String: [BlockType]] = [:]
    let blocksPerDay = preferences.weeklyShallowWorkBlocks / daysOfWeek.count
    let extraBlocks = preferences.weeklyShallowWorkBlocks % daysOfWeek.count

    for day in daysOfWeek {
        shallowWorkPlan[day] = Array(repeating: .shallowWork, count: blocksPerDay)
    }

    let shuffledDays = daysOfWeek.shuffled()
    for i in 0 ..< extraBlocks {
        let day = shuffledDays[i % daysOfWeek.count]
        shallowWorkPlan[day]?.append(.shallowWork)
    }

    return shallowWorkPlan
}

func allocateStressBlocks(preferences: UserPreferences) -> [String: [BlockType]] {
    var stressPlan: [String: [BlockType]] = [:]

    for day in daysOfWeek {
        var dayStressBlocks = [BlockType]()

        // Add deep work sessions
        dayStressBlocks.append(contentsOf: Array(repeating: .deepWork, count: preferences.dailyDeepWorkSessions))

        // Add learning sessions
        dayStressBlocks.append(contentsOf: Array(repeating: .learning, count: preferences.dailyLearningSessions))

        stressPlan[day] = dayStressBlocks
    }

    return stressPlan
}

extension UserPreferences {
    func computeTotalTimeRequirement() -> Int {
        let necessityBlocks = allocateNecessityBlocks(preferences: self)
        let exerciseBlocks = allocateExerciseBlocks(preferences: self)
        let outdoorBlocks = allocateOutdoorBlocks(preferences: self)
        let socialBlocks = allocateSocialBlocks(preferences: self)
        let meditationBlocks = allocateMeditationBlocks(preferences: self)
        let fluxBlocks = allocateFluxBlocks(preferences: self)
        let shallowWorkBlocks = allocateShallowWorkBlocks(preferences: self)
        let stressBlocks = allocateStressBlocks(preferences: self)

        // Combine all allocated blocks into one weekly plan
        var totalMinutes = 0
        let combinedPlan = [necessityBlocks, exerciseBlocks, outdoorBlocks, socialBlocks, meditationBlocks, fluxBlocks, shallowWorkBlocks, stressBlocks]

        for dayPlan in combinedPlan {
            for (_, blocks) in dayPlan {
                for blockType in blocks {
                    totalMinutes += durationForBlockType(blockType)
                }
            }
        }

        print("\(totalMinutes * 100 / 10080)% of time allocated: (\(totalMinutes) of 10080) minutes ")
        return totalMinutes
    }

    func arePreferencesFeasible() -> Bool {
        let totalTimeRequired = computeTotalTimeRequirement()
        let totalAvailableTime = 7 * 24 * 60 // Total minutes in a week - 10080
        return totalTimeRequired <= totalAvailableTime
    }

    func printAllocatedBlocksSummaryAndCheckDailyFeasibility() {
        let necessityBlocks = allocateNecessityBlocks(preferences: self)
        let exerciseBlocks = allocateExerciseBlocks(preferences: self)
        let outdoorBlocks = allocateOutdoorBlocks(preferences: self)
        let socialBlocks = allocateSocialBlocks(preferences: self)
        let meditationBlocks = allocateMeditationBlocks(preferences: self)
        let fluxBlocks = allocateFluxBlocks(preferences: self)
        let shallowWorkBlocks = allocateShallowWorkBlocks(preferences: self)
        let stressBlocks = allocateStressBlocks(preferences: self)

        let combinedPlans = [necessityBlocks, exerciseBlocks, outdoorBlocks, socialBlocks, meditationBlocks, fluxBlocks, shallowWorkBlocks, stressBlocks]

        for day in daysOfWeek {
            let minutesInDay = 24 * 60
            var blockSummary = [BlockType: Int]()
            var totalDayMinutes = 0

            for plan in combinedPlans {
                if let blocks = plan[day] {
                    for blockType in blocks {
                        blockSummary[blockType, default: 0] += 1
                        totalDayMinutes += durationForBlockType(blockType)
                    }
                }
            }

            // Construct summary string for the day
            let summaryString = blockSummary.map { "\($0.key): \($0.value)" }.joined(separator: ", ")
            print("\(day): \(summaryString)")
            print("Buffer time for \(day): \(minutesInDay - totalDayMinutes) minutes")

            // Check if the day's schedule is feasible
            if totalDayMinutes > 24 * 60 {
                print("Warning: The schedule for \(day) is not feasible.")
            }
        }
    }

    func durationForBlockType(_ blockType: BlockType) -> Int {
        switch blockType {
        case .deepWork:
            return defaultDeepWorkDuration
        case .learning:
            return defaultLearningDuration
        case .social:
            return defaultSocialDuration
        case .flux:
            return defaultFluxDuration
        case .shallowWork:
            return defaultShallowWorkDuration
        case .meditation:
            return defaultMeditationDuration
        case .outdoor:
            return defaultOutdoorDuration
        case .otaku:
            return defaultOtakuDuration
        case .lowIntensityExercise, .highIntensityExercise:
            return defaultExerciseDuration
        case .meal:
            return defaultMealDuration
        case .rest:
            return defaultRestDuration
        case .tedium:
            return defaultTediumDuration
        }
    }
}

if defaultPreferences.arePreferencesFeasible() {
    // Proceed with schedule generation
    // ...
} else {
    print("The current preferences are not feasible. Please adjust your preferences.")
    // Handle infeasible preferences
}

defaultPreferences.printAllocatedBlocksSummaryAndCheckDailyFeasibility()
