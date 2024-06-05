import { Navigate, Route, Routes } from "react-router-dom";
import { Welcome } from "../Welcome/Welcome";
import { Customers } from "../Pages/Customers/Customers";
import { Products } from "../Pages/Products/Products";


export function Routing(): JSX.Element {
    return (
        <>
            <Routes>
                <Route path="/home" element={<Welcome/>}/>
                <Route path="/" element={<Navigate to={'/home'}/>}/>
                <Route path="/customers/*" element={<Customers/>}/>
                <Route path="/products" element={<Products/>}/>
            </Routes>
			
        </>
    );
}
