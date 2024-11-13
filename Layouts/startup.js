let controlAddIn = document.getElementById('controlAddIn'); 
// Microsoft.Dynamics.NAV.AddIn.setContent = function(jsonArray) {
//     try {
//         const data = JSON.parse(jsonArray);
//         console.log("Received data:", data);
//         insertDataIntoInterface(data);
//     } catch (error) {
//         console.error("Failed to parse JSON:", error);
//     }

// };
//     insertDataIntoInterface(data);
    
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlReady",[]);
    

// });


