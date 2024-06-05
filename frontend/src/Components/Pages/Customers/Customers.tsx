import { Route, Routes } from "react-router-dom";
import "./Customers.css";
import { AllCustomers } from "../../CustomersArea/AllCustomers/AllCustomers";
import { Customer } from "../../CustomersArea/Customer/Customer";

export function Customers(): JSX.Element {
    return (
        <div className="Customers full">
			<h3 className="center">Customers</h3>
            <hr />
            <Routes>
                <Route path="/" element={<AllCustomers/>}/>
                <Route path="/:id" element={<Customer/>}/>
            </Routes>
        </div>
    );
}
