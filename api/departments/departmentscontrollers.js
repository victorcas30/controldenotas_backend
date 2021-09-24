import { getDepartments } from "./departmentsservice.js";

const getCyrDepartments = (req,res)=>{
    getDepartments((errors,result)=>{
        if(errors){
            console.log(errors);
            return;
        }else{
           return res.json({success:1,cyrDeparments:result});
        }
    });
}

export {getCyrDepartments};