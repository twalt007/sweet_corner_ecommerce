import React, {Component} from 'react'
import axios from 'axios';
import './schedule.scss';
import Table from 'react-bootstrap/Table';


class Schedule extends Component {
    constructor (props){
        super(props);

        this.state={
            schedule:[]
        }
    }
    componentDidMount(e){
        const apiUrl = "/data/schedule.json" 
        axios.get(apiUrl).then((resp)=>{
            console.log("api response", resp);
            this.setState({
                schedule: resp.data.schedule
            });
        }).catch((err=>{
            console.log(err);
        }));
    }
    render(){
        const timeList = this.state.schedule.map((timeInfo,index)=>{
            return (
                <tr key={index} className="row">
                    <td className="day align-middle">{timeInfo.day}</td>
                    <td className="time align-middle">{`${timeInfo.open}-${timeInfo.close}`}</td>
                </tr>
            )
        })
        return(
            <div className="schedule-container">
                <div>For phone orders, our schedule is:</div>
                <Table className="table">
                    <tbody>
                        {timeList}
                    </tbody>
                    
                </Table>
            </div>
        )
    }
}

export default Schedule;