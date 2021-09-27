import { correspondenceReceived } from "./correspondenceservice.js";

const createCorrespondenceReceived = (req,res)=>{
    const values = Object.values(req.body);
    correspondenceReceived(values,(error,result)=>{
        if(error){
            res.status(500).json({message:error});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });
}

export {createCorrespondenceReceived};