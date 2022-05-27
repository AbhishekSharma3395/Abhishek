<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="javascript1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <script>

           // var name = "my name is abhishek";
           // document.write(name);
           ////my name is abhishek

           // var age = 19;
           // document.write(age);
           // document.write(typeof (age));
           // //19 number

           // var abhi = true;
           // document.write(abhi);
           // document.write(typeof (abhi));
           // //trueboolean

           // document.write(100 + "90");
           // //10112

           // document.write(100 - "80");
           // //80

           // document.write("java" + "script");
           // //javascript 

           // document.write(true + true);
           // //2

           // document.write(true + false);
           // //1

           // document.write(false + true);
           // //1

           // document.write(false - true);
           // //-1

           // var useless = null;
           // document.write(null);
           // document.write(typeof (useless));
           // //null
           // //object

           // var standby;
           // document.write(standby);
           // document.write(typeof (standby));
           // //undefined
           ////undefined

           // document.write("aaa" - "dfaf");
           ////NaN



           // var name = "my name is abhishek";
           // var age = 895214;
           // document.write(isNaN(name));
           // document.write(isNan(age));
           // if (isNan(name))
           // {
           //     document.write("enter valid no");
           // }
           // //true
           // //false
           // // enter valid no

     

           // NaN === NaN;
           // document.write(NaN === NaN);
           //    //false
           // Number.Nan === Nan;
           // document.write(Number.Nan === Nan);
           //    //false
           // isNan(NaN);
           // document.write(isNaN(Nan));
           //    //true  ye no nhi he
           // isNan(Number.NaN);
           // document.write(isNaN(Number.NaN));
           //  //true  ye no nhi he
           // Number.isNan(NaN);
           // document.write(Number.isNan(NaN));
           //  //true ye no nhi he


          /*  document.write(5 + 20);*/
            //25

            //var x = 5;
            //var y = 5;
            //document.write(`is both equal ${+ x == y}`);
            ////is both equal true


            //var x = 5;
            //var y = '5';
            //document.write("is both equal" + x == y);
            ////false


            //var num1 = 5;
            //var num2 = '5';
            //document.write(typeof (num1));
            //document.write(typeof (num2));
            //document.write(num1 === num2);
            //number string false


            // var num1 = 5;
            //var num2 = '5';
            //document.write(typeof (num1));
            //document.write(typeof (num2));
            //document.write(num1 == num2);
            ////number string true


            //var i = 1;
            //while (i <= 10)
            //{
            //  document.write(i);
            //    i++;
            //}
           //while loop 1 to 10


            //var i = 1;
            //do {
            //    document.write(i);
            //    i++;
            //}
            //while (i <= 10)
           //do while loop 1 to 10
      
            //for (var num = 1; num < 10; num++)
            //{
            //    document.write(num);
            //}
           //for loop 1 to 10



          //table print of no.
            //for (var num = 1; num <= 10; num++)
            //{
            //    var tableof = 8;
            //    document.write(tableof + " * " + num + " = " + tableof * num);
            //}



      //function defination
      //      function sum() {
      //          var a = 5, b = 10;
      //          var sum = a + b;
      //          document.write(sum);
                
      //      }
      //     // calling a function
      //      sum();


            // function arguments(10,20) VS parameters(a,b)
            //function sum(a, b) {
            //     var sum = a + b;
            //    document.write(sum);
            //}
            //sum();
            //sum(10, 20);
            //sum(30, 20);
            ////op 30,50

            //var a = 5;
            //var num = Number(a);
            //document.write(num + 10);
            //op 15

            //var a = true;
            //var num = Number(a);
            //document.write(num);
            //op 1




// string function 


            //LENGTH
            //var str = "my";
            //var a = str.length;
            //document.write(a);
            // 2

              //LOWER
            //var str = "MY NAME IS ABHISHEK";
            //var a = str.toLowerCase();
            //document.write(a);
            // my name is abhishek

            //UPER
            //var str = "my name is abhishek";
            //var a = str.toUpperCase();
            //document.write(a);
            // op MY NAME IS ABHISHEK

            //INCLUDE
            //var str = "my name is abhishek";
            //var a = str.includes("is");
            //document.write(a);
             // true case sensetive function

            //includes  START WITH (FIND FIRST CHAR) case sensetive
            //var str = "my name is abhishek";
            //var a = str.includes("is");
            //document.write(a);
            //true

            // endsWith    START WITH (FIND LAST CHAR EXACT MATCH)
            //var str = "my name is abhishek";
            //var a = str.endsWith("abhishek");
            //document.write(a);
            //true

            //search (works like include return me true false nhi deta uska index deta he)
            //var str = "my name is abhishek";
            //var a = str.search("is");
            //document.write(a);
            // 8 kuch nhi mila to -1 retrn krega


            //Match
            //var str = "my name is is abhishek";
            //var a = str.match(/is/g);
            //document.write(a);
            //g means globaly 
            // op is, is, is

              //index of (index return krega)
            //var str = "my name is is abhishek";
            //var a = str.indexOf("is");
            //document.write(a);
            // op8 


            //last index ko 
            //var str = "my name is is abhishek";
            //var a = str.lastIndexOf("is");
            //document.write(a);
            //17

            //str replace
            //var str = "my name is is abhishek";
            //var a = str.replace("is","php");
            //document.write(a);
            ////my name php is abhishek

            //var str = "my name is is abhishek";
            //var a = str.replace(/is/g,"php");
            //document.write(a);
            ////my name php php abhphphek


            //TRIM extra space delete
            //var str = "     abhishek";
            //var a = str.trim();
            //alert(a);

            //split 
          /*  var str = "my name abhishek sharma";*/
            //var a = str.split(" ");
            //document.write(a);
            // op my,name,abhishek,sharma (space ki jgh comma)

             //repeat 
            //var str = "my name abhishek sharma";
            //var a = str.repeat(2);
            //document.write(a);
            //op my name abhishek sharmamy name abhishek sharma

            //var str = "my name abhishek sharma";
            //var a = str.slice(2,10);
            //document.write(a);
            //op name ab
            // 2nd se 10ke bich position se jitna string se he sb 

            //var str = "my name abhishek sharma";
            //var a = str.substr(2,10);
            //document.write(a);
            //op name abhi


            //var str = "my name abhishek sharma";
            //var a = str.substring(2,10);
            //document.write(a);
           //op name ab



 //Maths Function


            //var a = Math.ceil(5.2);
            //document.write(a);
            /*   op ==> 6 up value */

            //var a = Math.floor(5.2);
            //document.write(a);
            //OP = 5  (down value)

            //var a = Math.round(2.50);
            //document.write(a);
            //op 3(nearest  value return);

            //var a = Math.trunc(2.50);
            //document.write(a);
              //op 2(int  value return);

            //var a = Math.max(1,5,55,);
            //document.write(a);
            // op 55 show high value

            //var a = Math.min(1,-5,55,);
            //document.write(a);
           // op -5 show min value

           //var a = Math.sqrt(4);
           //document.write(a);
           //op 2

            //var a = Math.pow(4,2);
            //document.write(a);
            //op 16

            //var a = Math.random();
            //document.write(a);
            // op random value 0.7600295933571604

         


        </script>
    </form>
</body>
</html>
