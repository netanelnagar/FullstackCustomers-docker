import "./Welcome.css";
import welcomeGif from "../../../images/welcome.svg";

export function Welcome(): JSX.Element {
    return (
        <div className="Welcome full center">
			<h6 style={{width: '100%', textAlign: 'center', margin: '0px'}}>Welcome to my website i hope you enjoy</h6>
            <img src={welcomeGif} alt="" className="border rounded" style={{margin: '0px'}}/>
        </div>
    );
}
