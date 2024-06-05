import { TreeTable } from "primereact/treetable";
import "./AllCustomers.css";
import { Column } from "primereact/column";
import { useEffect, useState } from "react";
import { TreeNode } from "primereact/treenode";
import axios from "axios";

export function AllCustomers(): JSX.Element {
    const [nodes, setNodes] = useState<TreeNode[]>([]);

    // const url =  process.env.REACT_APP_ENV_SERVER_URL as string | "https://jsonplaceholder.typicode.com/posts" ;
    
    console.log(import.meta.env.VITE_SOME_KEY)
    useEffect(() => {
        axios(import.meta.env.VITE_SOME_KEY)
            .then((response) => setNodes(response.data))
            .catch((error) => console.error(error));
    }, []);

    return (
        <div className="AllCustomers center">
            <TreeTable value={nodes} className='border rounded' tableStyle={{ minWidth: '50rem' }}>
                <Column field="name" header="Name" expander></Column>
                <Column field="size" header="Size"></Column>
                <Column field="type" header="Type"></Column>
            </TreeTable>
        </div>
    );
}
