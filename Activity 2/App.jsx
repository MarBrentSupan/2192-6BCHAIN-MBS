/* Mar Brent Supan 
WD-401 */
import './App.css' 
import TodoList from './components/TodoList'
import MovieList from './components/MovieList'
import BookList from './components/BookList'
import './components/BookList.module.css'
import './components/MovieList.module.css'

function App() {


  return (
    <>
      <div>
        <TodoList/>
      </div>

      <div>
        <MovieList/>
      </div>
      <div>
        <BookList/>
      </div>
    </>
  )
}

export default App
