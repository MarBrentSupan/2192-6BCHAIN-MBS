/* Mar Brent Supan 
WD-401 */
import React from "react";
import './BookList.module.css';  // Import your custom CSS file

function BookList() {
    return (
        <div className="book-list-container">
            <h1>My Book List</h1>
            <div className="book-item">
                <img src="https://upload.wikimedia.org/wikipedia/id/9/99/Solo_Leveling_Webtoon.png" alt="Solo Leveling" />
                <h3>Solo Leveling</h3>
            </div>

            <div className="book-item">
                <img src="https://cdn.kobo.com/book-images/e354f3eb-d7f8-4339-9c95-f6b1885bad7d/1200/1200/False/naruto-vol-1.jpg" alt="Naruto" />
                <h3>Naruto</h3>
            </div>

            <div className="book-item">
                <img src="https://upload.wikimedia.org/wikipedia/en/3/3f/Bleach_%28manga%29_1.png" alt="Bleach" />
                <h3>Bleach</h3>
            </div>
        </div>
    );
}

export default BookList;
