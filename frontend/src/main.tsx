import ReactDOM from 'react-dom/client'
import './index.css'
import { Layout } from './Components/Layout/Layout'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/css/bootstrap.rtl.css'
import 'bootstrap/dist/css/bootstrap.rtl.min.css'
import 'bootstrap/dist/js/bootstrap.bundle.min.js'
import 'primeicons/primeicons.css';
import { BrowserRouter } from 'react-router-dom';
import { PrimeReactProvider } from 'primereact/api';
import { Profiler } from 'react'

function onRender(id: any, phase: any, actualDuration: any, baseDuration: any, startTime: any, commitTime: any) {
  console.log(id, phase, actualDuration, baseDuration, startTime, commitTime)
}

ReactDOM.createRoot(document.getElementById('root')!).render(
  <BrowserRouter>
    <PrimeReactProvider>
      <Profiler id='app' onRender={onRender}>
        <Layout />
      </Profiler>
    </PrimeReactProvider>
  </BrowserRouter>,
)
