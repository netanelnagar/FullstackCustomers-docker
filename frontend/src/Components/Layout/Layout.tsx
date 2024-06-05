import { Header } from "../Header/Header";
import { Main } from "../Main/Main";
import "./Layout.css";

export function Layout(): JSX.Element {
    return (
        <div className="Layout full">
			<header><Header/></header>
            <main><Main/></main>
        </div>
    );
}
