/* Mar Brent Supan 
WD-401 */
import React from "react";

function Checked(){
    return(
        <div>
            <h1>Things to Bring</h1>
            <h3 className="checkedHeading">My Strawhat</h3>
            <h3 className="checkedHeading">Gum gum fruit</h3>
            <h3 className="checkedHeadingRed">The Red Vest</h3>
        </div>
    );
}
function False(){
    return(
        <div>
            <h1>Things to Bring</h1>
            <h3 >My Strawhat</h3>
            <h3 >Gum gum fruit</h3>
            <h3 >The Red Vest</h3>
        </div>
    );
}
function CheckedOrFalse(props){
    const isChecked = props.isChecked;
    if (isChecked){
        return(
            <Checked/>
        );
    }
    return(
        <False/>
    );
}
export default function Answer(){
    return(
        <div>
            <CheckedOrFalse isChecked={false}/>
        </div>
    )
}
