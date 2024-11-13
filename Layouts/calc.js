function AppendElement (){
    var form= document.createElement('form');
    var body= document.createElement('body');
    body.innerHTML=`<form>
    <div class="container">
        <div class="calculator" >
           
            <div class="display">
                 <input type="text" name="display" title="Enter"  >
            </div>
            <div >
                <input type="button" value="AC" onclick="display.value= ' ' " class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;" >
                <input type="button" value="DE" onclick="display.value= display.value.toString().slice(0,-1)" class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="." onclick="display.value= '.' " class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="/" onclick="display.value= '/' " class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
            </div>
            <div>
                <input type="button" value="7" onclick="display.value += '7' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="8" onclick="display.value += '8' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="9" onclick="display.value += '9' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="*" onclick="display.value += '*' " class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
            </div>
            <div>
                <input type="button" value="4" onclick="display.value += '4' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="5" onclick="display.value += '5' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="6" onclick="display.value += '6' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="-" onclick="display.value += '-' " class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
            </div>
            <div>
                <input type="button" value="1" onclick="display.value += '1' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="2" onclick="display.value += '2' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="3" onclick="display.value += '3' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="+" onclick="display.value += '+' " class="operator" style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
            </div>
            <div>
                <input type="button" value="00" onclick="display.value += '00' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="0" onclick="display.value += '0' " style="border:0 ;
                outline: 0;
                width:60px;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                color: #fff;
                cursor: pointer;
                margin: 10px;">
                <input type="button" value="=" onclick=" display.value= eval(display.value)" class="equal operator" style="border:0 ;
                outline: 0;
                width: 145px;;
                height:60px ;
                border-radius: 10px;
                box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1), 5px 5px 15px rgba(0, 0, 0, 0.2);
                background: transparent;
                font-size: 20px;
                cursor: pointer;
                margin: 10px;">
            </div>
            
        </div>
    </div>
</form>`;
controlAddIn.appendChild(body);
}