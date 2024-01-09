//Mar Brent B. Supan
//WD-401 - 2192-6BCHAIN

import React from "react";
import ChildComponent from "./ChildComponent";


//Parent Component.jsx
/* function ParentComponent(){
    const dataToPass = "Hello from Papa Noie!";
    return(
        <ChildComponent message={dataToPass}/>
    );
}

export default ParentComponent; */

//Using Class Component
class ParentComponent extends React.Component{
    render(){
        const dataToPass = "Hello from Papa Noie!";
        return(
            <ChildComponent message={dataToPass}/>
        )

}
}

export default ParentComponent;