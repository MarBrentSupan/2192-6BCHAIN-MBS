/* Mar Brent Supan 
WD-401 */
import './App.css' 
import TodoList from './components/TodoList'
import MovieList from './components/MovieList'
import BookList from './components/BookList'
import './components/BookList.module.css'
import './components/MovieList.module.css'
import ShinyButton from './components/Conditioning-Demo-1'
import Rain from './components/Conditioning-Demo-2'
import Sun from './components/Conditioning-Demo-3'
import Demo4 from './components/Conditioning-Demo-4'

function App() {


  return (
    <>
      {/* <div>
        <TodoList/>
      </div>

      <div>
        <MovieList/>
      </div>
      <div>
        <BookList/>
      </div> */}
      <div>
        <ShinyButton/>
      </div>
      <div>
        <Rain/>
      </div>
      <div>
        <Sun/>
      </div>
      <div>
        <Demo4/>
      </div>
    </>
  )
}

export default App
