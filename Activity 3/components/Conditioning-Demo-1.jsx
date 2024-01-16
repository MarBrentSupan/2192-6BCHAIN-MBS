/* Mar Brent Supan 
WD-401 */
import React from "react";

//Arrow Function
function Greeting(){
    return(
        <h1>Hello! I am standard function.</h1>
    );

}
const ArrowGreeting = () => (
    <h1>Hello! I am an arrow function.</h1>
);

function ShinyButton(){
    const handleClick = () =>{
        alert("You Clicked me!");
    }
    return(
        <button on onClick={handleClick}>Click This Button!</button>
    )
}

export default ShinyButton;