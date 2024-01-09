//Mar Brent B. Supan
//WD-401 - 2192-6BCHAIN

import { useState } from 'react'
import './App.css'
import Hello from "./components/Hello";
import Welcome from  "./components/Welcome";
import ParentComponent from './components/ParentComponent';

function App() {


  return (
    <>
    <div>
        <Hello/>
      </div>
      <div>
        <Welcome/>
      </div>
      <div>
        <ParentComponent/>
      </div>
    </>
  )
}

export default App
