/* Mar Brent Supan 
WD-401 */
import React from "react";
import './MovieList.module.css';  
class MovieList extends React.Component {
    render() {
        return (
            <div className="movie-list-container">
                <h1>Movie List</h1>
                <div className="movie-item">
                    <img src="https://m.media-amazon.com/images/M/MV5BOTVlNWEyNmMtYmI0ZC00NWJlLTgyZGItMmE5MWYxNTAyZDRlXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_.jpg" alt="Rewind" />
                    <h3>Rewind</h3>
                </div>

                <div className="movie-item">
                    <img src="https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2023/09/gekijoubanhaikyugomisutebanokessen_teaserposter.jpg?resize=421%2C595&ssl=1" alt="Battle of the Garbage Dump" />
                    <h3>Haikyu!! Movie: Battle of the Garbage Dump</h3>
                </div>

                <div className="movie-item">
                    <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTnzpmlF8Ujz8nyKfv5hj8p_z2y8cjV5M3uJi6OuyqyNRWRsieL" alt="Jujutsu Kaisen 0" />
                    <h3>Jujutsu Kaisen 0</h3>
                </div>
            </div>
        );
    }
}

export default MovieList;
