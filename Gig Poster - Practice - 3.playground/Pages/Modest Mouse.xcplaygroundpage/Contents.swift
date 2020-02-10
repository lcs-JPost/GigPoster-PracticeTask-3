//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...

// change the background color
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


// begin with the lines
//rotate the canvas
canvas.rotate(by: -45)
canvas.defaultLineWidth = 20

for LineX2 in stride(from: -360, through: 360, by: 40) {
    if LineX2 < -79 {
        canvas.lineColor = lightGrey
    } else if LineX2 > -80 && LineX2 < 41 {
        canvas.lineColor = deepYellow
    } else if LineX2 > 40 {
        canvas.lineColor = black
    }
    print(LineX2)
    canvas.drawLine(from: Point(x: LineX2, y: 0), to: Point(x: LineX2, y: 800))
}
canvas.rotate(by: 45)
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)
//draw a cluster
canvas.defaultLineWidth = 2
canvas.lineColor = black
for LineY in stride(from: 0, through: 600, by: 50){
    canvas.drawLine(from: Point(x: 0, y: LineY), to: Point(x: 400, y: LineY))
}; for LineX in stride(from: 0, through: 400, by: 50) {
    canvas.drawLine(from: Point(x: LineX, y: 0), to: Point(x: LineX, y: 600))
}

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

