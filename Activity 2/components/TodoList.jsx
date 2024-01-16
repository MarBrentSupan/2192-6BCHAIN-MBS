/* Mar Brent Supan 
WD-401 */
import React from "react";
import './TodoList.css';  // Import your custom CSS file

class TodoList extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            checkboxes: {},
        };
    }

    handleCheckboxChange = (checkboxId) => {
        this.setState((prevState) => ({
            checkboxes: {
                ...prevState.checkboxes,
                [checkboxId]: !prevState.checkboxes[checkboxId],
            },
        }));
    };

    render() {
        return (
            <table className="custom-table">
                <thead>
                    <tr>
                        <th>To Do</th>
                        <th>Checkbox</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Clean Porch</td>
                        <td>
                            <input
                                type="checkbox"
                                checked={this.state.checkboxes['cleanPorch']}
                                onChange={() => this.handleCheckboxChange('cleanPorch')}
                            />
                        </td>
                    </tr>
                    <tr>
                        <td>Wash Car</td>
                        <td>
                            <input
                                type="checkbox"
                                checked={this.state.checkboxes['washCar']}
                                onChange={() => this.handleCheckboxChange('washCar')}
                            />
                        </td>
                    </tr>
                    <tr>
                        <td>Attend BCHAIN Class</td>
                        <td>
                            <input
                                type="checkbox"
                                checked={this.state.checkboxes['attendClass']}
                                onChange={() => this.handleCheckboxChange('attendClass')}
                            />
                        </td>
                    </tr>
                </tbody>
            </table>
        );
    }
}

export default TodoList;
