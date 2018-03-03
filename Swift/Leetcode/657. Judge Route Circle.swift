/*
 Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.
 
 The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.
 
 Example 1:
 Input: "UD"
 Output: true
 Example 2:
 Input: "LL"
 Output: false

*/

func judgeCircle(_ moves: String) -> Bool {
    var position = (0, 0)
    Array(moves).forEach { (move) in
        switch move {
        case "U":
            position.0 += 1
        case "D":
            position.0 -= 1
        case "R":
            position.1 -= 1
        case "L":
            position.1 += 1
        default:
            break
        }
    }
    return position == (0, 0)
}
