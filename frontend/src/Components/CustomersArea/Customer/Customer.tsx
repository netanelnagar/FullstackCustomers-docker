import "./Customer.css";
import { useParams } from "react-router-dom";

export function Customer(): JSX.Element {
    const {id} = useParams<{id:string}>();
    console.log(id)
    return (
        <div className="Customer">
			customer {id}
        </div>
    );
}
