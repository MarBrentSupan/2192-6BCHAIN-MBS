//Mar Brent B. Supan
//WD-401 - 2192-6BCHAIN

import React from "react";

//Child Component.jsx
/*function ChildComponent(props){
    return(
       <div>
        <p>{this.props.message}</p>
       </div>
    );
}

export default ChildComponent; */

//Using Class Component
class ChildComponent extends React.Component{
    render(){
        return(
            <div>
                <h2>Using Class Component</h2>
        <p>{this.props.message}</p>
       </div>
        )
    };
}

export default ChildComponent;