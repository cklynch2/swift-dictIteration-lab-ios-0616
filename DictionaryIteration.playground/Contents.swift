/*: Outline
 # Iterating over a Dictionary

 ### Readings associated with this lab

 * [Dictionary](https://github.com/learn-co-curriculum/swift-dictionary-readme)
 * [Iterating over a Dictionary](https://github.com/learn-co-curriculum/swift-dictionaryIteration-readme)
 */
/*: question1
 ### 1. Create a dictionary _variable_ that maps band names to their highest-selling album.

 Here are some bands and albums you can use:

 * Nirvana: _Nevermind_
 * Blondie: _Parallel Lines_
 * The Kinks: _Low Budget_
 * The Beatles: _Sgt. Pepper's Lonely Hearts Club Band_
 */
// write your code here
var bandsAndMostPopularAlbums = ["Nirvana" : "Nevermind",
                                 "Blondie" : "Parallel Lines",
                                 "The Kinks" : "Low Budget",
                                 "The Beatles" : "Sgt. Pepper's Lonely Hearts Club Band"]



/*: question2
 ### 2. Oops, we forgot an album! Add the Pixie's _Doolittle_ to the dictionary you created in Question 1.
 */
// write your code here
bandsAndMostPopularAlbums["Pixies"] = "Doolittle"

// Print to confirm that the Pixies have been added properly:
print(bandsAndMostPopularAlbums)
/*: question3
 ### 3. We don't care that much about The Kinks. Delete them from the dictionary you created in Question 1.
 */
// write your code here
bandsAndMostPopularAlbums["The Kinks"] = nil

// Print to confirm that The Kinks have been removed:
print(bandsAndMostPopularAlbums)

/*: question4
 ### 4. A band name has been defined in the constant `bandName` below. Using this constant and the dictionary you created in Question 1, print "<Band>'s top-selling album was <Album>" to the console.
 */
let bandName = "Nirvana"
// write your code here
if let album = bandsAndMostPopularAlbums[bandName] {
    print("\(bandName)'s top-selling album was \(album).")
} else {
    print("\(bandName) is not included in the dictionary.")
}



/*: question5
 ### 5. Iterate over the dictionary you created in Question 1 and print "<Band>'s top-selling album was <Album>" for each item in the dictionary.
 */
// write your code here
for (band, album) in bandsAndMostPopularAlbums {
    print("\(band)'s top-selling album was \(album).")
}



/*: question6
 ### 6. What type of data structure is returned when you iterate over a dictionary?
 */
// Tuples of the form (key, value) are returned when you iterate over a dictionary.



/*: question7
 ### 7. Imagine every student in every grade in a high school took an exam. Each student got a letter grade based on their test results (A, B, C, D, and F). The results were averaged together per grade. How could you represent this mapping of grades to exam average?
 */
// You can represent this in a dictionary where the keys are of type Int (for each grade) and the values are of type String (for the exam average).



/*: question8
 ### 8. Create a _constant_ dictionary to store the exam results described in Question 8. This dictionary should be of type `[Int: String]`. Here are the results you can use:

 * Grade 9: B
 * Grade 10: A
 * Grade 11: C
 * Grade 12: B
 */
// write your code here
let examAverageByGrade = [9 : "B", 10 : "A", 11 : "C", 12 : "B"]



/*: question9
 ### 9. Print the message "Grade <Grade> got <Score>" for each grade in the dictionary you created in Question 8.
 */
// write your code here
for (grade, examAverage) in examAverageByGrade {
    print("Grade \(grade) had an average exam result of \(examAverage).")
}



/*: question10
 ### 10. Find which grade got the highest score! Iterate through the dictionary to find the highest score, then print the message "Grade <Grade> got the highest score with <Score>!" to the console.
 */
// I chose to make smartestGrade an array rather than a string, since it is possible that more than one grade could achieve an A average.
for (grade, examAverage) in examAverageByGrade {
    var smartestGrade = [Int]()
    if (examAverage == "A") {
        smartestGrade.append(grade)
        print("Grade \(smartestGrade) achieved the highest score!")
    }
}

// Could you sort the (grade, examAverage) tuples by examAverage alphabetically and get the highest scoring grade that way? Problem with my solution is that it assumes highest average must be an A.

/*:
 [Solution](solution)
 */
// ❤️
