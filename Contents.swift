// Part 1: creating a dictionary for each player with all of their information

let player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "hasExperience": true, "parentsNames": "Jim and Jan Smith"]
let player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "hasExperience": true, "parentsNames": "Ciara Tanner"]
let player3: [String: Any] = ["name": "Bill Bon", "height": 43.0, "hasExperience": true, "parentsNames": "Sara and Jenny Bon"]
let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "hasExperience": false, "parentsNames": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "hasExperience": false, "parentsNames": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "hasExperience": false, "parentsNames": "Bill and Hillary Stein"]
let player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "hasExperience": false, "parentsNames": "Jeff Adams"]
let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "hasExperience": true, "parentsNames": "Heather Bledsoe"]
let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "hasExperience": true, "parentsNames": "Henrietta Dumas"]
let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "hasExperience": false, "parentsNames": "Gala Dali"]
let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "hasExperience": false, "parentsNames": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "hasExperience": false, "parentsNames": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "hasExperience": true, "parentsNames": "Robin and Sarika Soto"]
let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "hasExperience": false, "parentsNames": "David and Jamie Alaska"]
let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "hasExperience": false, "parentsNames": "Claire Willis"]
let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "hasExperience": true, "parentsNames": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "hasExperience": true, "parentsNames": "Wynonna Brown"]
let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "hasExperience": true, "parentsNames": "Hyman and Rachel Krustofski"]

// array of player dictionaries (to combine all player information into one collection)

let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

//Step 2: Begining to sort players:


// sorting players into experienced vs. inexperienced

var hasExperience = [[String: Any]]()
var noExperience = [[String: Any]]()

for players in players {
    
    if players["hasExperience"] as? Bool == true {
        
        hasExperience.append(players)
    } else {
        
        noExperience.append(players)
    }
}


// sorting experienced players evenly onto 3 teams by removing players 1 by 1 from hasExperience and adding them to each team until expCounter reaches 0 (meaning they've all been sorted)

var teamDragons = [[String: Any]]()
var teamSharks = [[String: Any]]()
var teamRaptors = [[String: Any]]()


var expCounter = hasExperience.count

while expCounter > 0 {
    
    teamDragons.append(hasExperience.removeFirst())
    expCounter -= 1
    teamSharks.append(hasExperience.removeFirst())
    expCounter -= 1
    teamRaptors.append(hasExperience.removeFirst())
    expCounter -= 1
}

// Sorting the non experienced players evenly onto the three teams using the same logic as I did with the experienced players

var noExpCounter = noExperience.count

while noExpCounter > 0 {
    
    teamDragons.append(noExperience.removeFirst())
    noExpCounter -= 1
    teamSharks.append(noExperience.removeFirst())
    noExpCounter -= 1
    teamRaptors.append(noExperience.removeFirst())
    noExpCounter -= 1
    
}


// Part 3: I created an array to store all the letters called "letters". I then created for loops for each team, using string interpolation to put the names and parent's name into each letter. After that, I appended my "letters" array to store all of the letters for all the teams and players


var letters: Array = [""]


for dragonsLetter in teamDragons {
    

     let dragonsLetters = ("Dear \(dragonsLetter["parentsNames"]!), \(dragonsLetter["name"]!) is a beast of a player and has been drafted onto the Dragons! Our first practice will be March 17, 1pm!")
    
    letters.append(dragonsLetters)
    
}




for sharksLetters in teamSharks {

    
    let sharksLetters: String! = ("Dear \(sharksLetters["parentsNames"]!), \(sharksLetters["name"]!) is a beast of a player and has been drafted onto the Sharks! Our first practice will be March 17, 3pm!")
    
    letters.append(sharksLetters)
    
}

for raptorsLetters in teamRaptors {
    
    
    let raptorsLetters: String = ("Dear \(raptorsLetters["parentsNames"]!), \(raptorsLetters["name"]!) is a beast of a player and has been drafted onto the Raptors! Our first practice will be March 18, 1pm!")
    
    letters.append(raptorsLetters)
    
}

//this, I believe was the only change I needed to make. the letters are now formatted and printed separately:

for letter in letters {
    
    print(letter)
}













