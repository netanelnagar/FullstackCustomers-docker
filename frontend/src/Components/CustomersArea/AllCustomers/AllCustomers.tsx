import { TreeTable } from "primereact/treetable";
import "./AllCustomers.css";
import { Column } from "primereact/column";
import { useEffect, useState } from "react";
import { TreeNode } from "primereact/treenode";
import axios from "axios";

export function AllCustomers(): JSX.Element {
    const [nodes, setNodes] = useState<TreeNode[]>([]);

    // const url =  process.env.REACT_APP_ENV_SERVER_URL as string | "https://jsonplaceholder.typicode.com/posts" ;

    //to use ENV in the vite app append .env file and give
    //name and start his at VITE_ , then import like bottom line below
    console.log(import.meta.env.VITE_SOME_KEY)


    useEffect(() => {
        // setNodes(data);
        axios('http://localhost:5000/api/customers')
            .then((response) => {
                console.log(response.data)
                const arrayCustomers: TreeNode[] = response.data.map((item, index) => {
                    return {
                        key: `${index}`,
                        data: {
                            name: `${item.customerName}`,
                            city: `${item.customerCity}`,
                            country: `${item.customerCountry}`
                        }
                    }
                })
                setNodes(arrayCustomers);
            })
            .catch((error) => console.error(error));
    }, []);

    console.log(nodes, "nodes");
    return (
        <div className="AllCustomers center">
            <TreeTable value={nodes} className='border rounded' tableStyle={{ width: '50rem' }}>
                <Column field="name" header="Name" expander></Column>
                <Column field="city" header="City"></Column>
                <Column field="country" header="Country"></Column>
            </TreeTable>
        </div>
    );
}
