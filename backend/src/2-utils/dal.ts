import { createPool } from "mysql2";


const connection = createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE
    // host: 'localhost',
    // user: "root",
    // password: "",
    // database: "sample_2",
})



function execute(sql: string): Promise<any> {
    return new Promise((resolve, reject) => {
        connection.query(sql, (err, result) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(result);
        });
    })
}


export default{
    execute
}
