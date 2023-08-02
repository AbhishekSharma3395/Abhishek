<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="ResultCheck.aspx.cs" Inherits="Allforms.Bed.ResultCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        .result {
            padding: 20px;
            margin: 10% auto;
            width: 900px;
            border-radius: 15px;
        }

            .result span {
                font-weight: 900;
            }

        .parsley-errors-list {
            padding: 0 !important;
        }

        .parsley-required {
            color: red;
            list-style-type: none;
        }

        .parsley-minlength {
            color: red;
            list-style-type: none;
        }

        .parsley-maxlength {
            color: red;
            list-style-type: none;
        }
    </style>
    <style type="text/css">
        .style3 {
            height: 30px;
        }

        .style4 {
            text-align: center;
            width: 5%;
        }

        .style5 {
            height: 30px;
            text-align: center;
            width: 5%;
        }

        .style6 {
            width: 25%;
        }

        .style7 {
            width: 3%;
        }
    </style>

    <script type="text/javascript">
        function PrintDiv() {
            var divContents = document.getElementById("midblockHome").innerHTML;
            var printWindow = window.open('', '', 'height=786,width=999');
            printWindow.document.write('<html><head><title></title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }
    </script>

</head>

<body>
    <form runat="server">
        <asp:Panel ID="ResultForm" runat="server">
            <!--Break-->
            <div class="result card flex-center">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="col-12 col-md-12">
                            <asp:Label ID="Label2" runat="server" Text="Roll Number" CssClass="col-form-label"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" placeholder="Roll Number" CssClass="form-control" data-parsley-trigger="keyup" required="" data-parsley-required-message="Please insert your Roll Number" data-parsley-minlength="3" data-parsley-maxlength="6" data-parsley-minlength-message="Please Insert correct Roll Number" data-parsley-validation-threshold="3"></asp:TextBox>
                        </div>
                        <div class="col-12 col-md-12 mb-4">
                            <asp:Label ID="Label1" runat="server" Text="Mobile" CssClass="col-form-label"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" placeholder="+91" CssClass="form-control" data-parsley-trigger="keyup" required="" data-parsley-required-message="Please insert your Mobile number" data-parsley-minlength="10" data-parsley-maxlength="10" data-parsley-minlength-message="Please Insert correct mobile number" data-parsley-maxlength-message="Please Insert correct mobile number" data-parsley-validation-threshold="1"></asp:TextBox>
                        </div>

                        <div class="col-12 col-md-2 offset-4 offset-md-4 mt-4">
                            <asp:Button ID="Button1" runat="server" Text="Check" CssClass="btn btn-success" OnClick="Button1_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </asp:Panel>
        <div id="midblockHome">
        <asp:Panel ID="Panel1" runat="server">
           <%-- <p class="offset-5 ">
                <input type="button" onclick="PrintDiv();" value="Print" class="btn btn-success" />
            </p>--%>

            
                <div id="dvContents" style="width: 998px; margin: 0 auto; border: solid 0px #147852;">
                    <table width="100%">
                        <tr>
                            <td width="70%">
                            &nbsp;
                        <td align="right">
                            <strong style="font-family: Arial; font-size: small;">
                                 <input type="button" onclick="PrintDiv();" value="Print" class="btn btn-success" />
                                <%--<asp:Label ID="lblc1" runat="server" Text="rrrr"></asp:Label>--%>
                            </strong>
                        </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr>
                            <td width="20%" align="center">
                                <asp:Image ID="Image1" runat="server" ImageUrl="Img/pacific-logo.png" Width="150px" />
                            </td>
                            <td width="80%" align="center">
                                <span style="font-size: 20px; font-weight: 900;">PACIFIC ACADEMY OF HIGHER 
                        EDUCATION AND RESEARCH UNIVERSITY, UDAIPUR</span>
                               <h3 style="font-weight: 900; font-style: normal">(Result <%=Session["examname"].ToString()%> Entrance Exam )</h3>
                                <h3>Result - <b><%=Session["resultyear"].ToString().ToUpper() %></b></h3>
                            </td>
                        </tr>
                    </table>

                    <div style="width: 90%; margin: 0 auto; border: solid 0px #147852;">
                        <div id="divpass2" runat="server" style="padding-left: 75px">
                            <strong style="font-family: Arial; font-size: small; font-weight: lighter;"></strong>
                            <h3 style="font-style: italic; color: #ff9900">Congratulations...</h3>
                            <br />
                            <h4>&#2346;&#2381;&#2352;&#2367;&#2351; 
                                    <asp:Label ID="lblc21" runat="server" Font-Bold="True"><%=Session["name"].ToString().ToUpper() %> (<%=Session["rollno"].ToString() %>) ,</asp:Label></h4>
                            <table width="78%">                           
                            </table>
                        </div>
                    </div> 
                   <hr style="border:1px solid royalblue;">
                </div>
            
        </asp:Panel>

        <asp:Panel ID="pnl1st" runat="server">
            <div id="midblockHome1">
                <div id="dvContents1" style="width: 998px; margin: 0 auto; border: solid 0px #147852;">
            <table width="100%">
                <tr>
                  <%--  <td style="text-align: justify; padding: 10px; font-size:20px;"><b>
                       <%=Session["examname"].ToString() %>  &#2346;&#2381;&#2352;&#2357;&#2375;&#2358; &#2346;&#2352;&#2367;
                        &#2325;&#2381;&#2359;&#2366; <%=Session["resultyear"].ToString().ToUpper() %> &#2325;&#2375; &#2346;
                        &#2352;&#2367;&#2339;&#2366;&#2350; &#2325;&#2375; &#2310;&#2343;&#2366;&#2352; &#2346;&#2352; &#2310;
                        &#2346;&#2325;&#2366; &#2330;&#2351;&#2344;&nbsp;<%--<%=Session["resultname"].ToString() %>        &nbsp;&#2346;&#2366;
                        &#2336;&#2381;&#2351;&#2325;&#2381;&#2352;&#2350; &#2361;&#2375;&#2340;&#2369; &#2361;&#2379; &#2327;&#2351;
                        &#2366; &#2361;&#2376;&#2306;&#2404; &#2310;&#2346; &#2342;&#2367;&#2344;&#2366;&#2306;&#2325;
                        <%=Session["startdate"].ToString().ToUpper()%> &#2360;&#2375; <%=Session["lastdate"].ToString().ToUpper()%> 
                        <%=Session["lasttime"].ToString().ToUpper()%>  &#2348;&#2332;&#2375; &#2340;&#2325; &#2350;&#2361;&#2366;&#2357;
                        &#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351; &#2350;&#2375;&#2306;  &#2358;&#2369;&#2354;&#2381;&#2325; &#2319;
                        &#2357;&#2306; &#2344;&#2367;&#2350;&#2381;&#2344;&#2366;&#2306;&#2325;&#2367;&#2340; &#2346;&#2381;&#2352;
                        &#2350;&#2366;&#2339; &#2346;&#2340;&#2381;&#2352;&#2379;&#2306; &#2360;&#2361;&#2367;&#2340; &#2313;&#2346;
                        &#2360;&#2381;&#2341;&#2367;&#2340; &#2361;&#2379;&#2357;&#2375;&#2306;&#2404; &#2313;&#2346;&#2360;&#2381;
                        &#2341;&#2367;&#2340; &#2344;&#2361;&#2368;&#2306; &#2361;&#2379;&#2344;&#2375; &#2346;&#2352; &#2310;&#2346;
                        &#2325;&#2375; &#2360;&#2381;&#2341;&#2366;&#2344; &#2346;&#2352; &#2346;&#2381;&#2352;&#2340;&#2367;&#2325;
                        &#2381;&#2359;&#2366; &#2360;&#2370;&#2330;&#2367; &#2350;&#2375;&#2306; &#2360;&#2375; &#2325;&#2367;&#2360;
                        &#2368; &#2309;&#2344;&#2381;&#2351;&nbsp;&#2325;&#2366;&nbsp;&#2330;&#2351;&#2344; &#2325;&#2367;&#2351;&#2366; 
                        &#2332;&#2366;&#2351;&#2375;&#2327;&#2366;&#2404;</b>                    </td>--%>
                    <td style="text-align: justify; padding: 10px; font-size:20px;"><b><%=Session["examname"].ToString() %> प्रवेश परिक्षा  <%=Session["resultyear"].ToString().ToUpper() %> के परिणाम के
                        आधार पर आपका चयन  पाठ्यक्रम हेतु हो गया हैं। आप दिनांक  <%=Session["startdate"].ToString().ToUpper()%>  से <%=Session["lastdate"].ToString().ToUpper()%> 
                           <%=Session["lasttime"].ToString().ToUpper()%> बजे तक महाविद्यालय में शुल्क एवं निम्नांकित प्रमाण पत्रों सहित उपस्थित होवें। उपस्थित नहीं होने पर आप के
                        स्थान पर प्रतीक्षा सूचि में से किस अन्य का चयन किया जायेगा।</b></td>
                        </tr>
                          <tr>
                            <td>
                                <table width="60%">                                    
                                    <tr>
                                        <td>1.</td>
                                        <td>&#2340;&#2366;&#2354;&#2367;&#2325;&#2366; &#2325;&#2325;&#2381;&#2359;&#2366; X, XII, UG </td>
                                    </tr>

                                    <tr>
                                        <td>2.</td>
                                        <td>&#2335;&#2368;.&#2360;&#2368;</td>
                                    </tr>

                                    <tr>
                                        <td>3.</td>
                                        <td>&#2350;&#2366;&#2311;&#2327;&#2381;&#2352;&#2375;&#2358;&#2344; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339; &#2346;&#2340;&#2381;&#2352;</td>
                                    </tr>
                                    <tr>
                                        <td>4.</td>
                                        <td>&#2310;&#2343;&#2366;&#2352; 
                    &#2325;&#2366;&#2352;&#2381;&#2337;</td>
                                    </tr>

                                    <tr>
                                        <td>5.</td>
                                        <td>&#2346;&#2366;&#2360;&#2346;&#2379;&#2352;&#2381;&#2335; &#2360;&#2366;&#2311;&#2332; &#2347;&#2379;&#2335;&#2379;&#2327;&#2381;&#2352;&#2366;&#2347; -2</td>
                                    </tr>

                                    <tr>
                                        <td>6.</td>
                                        <td>&#2344;&#2367;&#2352;&#2381;&#2343;&#2366;&#2352;&#2367;&#2340; &#2358;&#2369;&#2354;&#2381;&#2325;</td>
                                    </tr>
                                </table>
                            <td>
                        </tr>                        
                        <tr>
                       <td>
                        <b><br />
                    &#2309;&#2343;&#2367;&#2325; &#2332;&#2366;&#2344;&#2325;&#2366;&#2352;&#2368; &#2361;&#2375;&#2340;&#2369; &#2360;&#2306;&#2346;&#2352;&#2381;&#2325; &#2325;&#2352;&#2375;&#2306;&#2404;                          
                        <br />+91 9672978055, 9672978033, 9950124424 </b>
                                  </td>  
                      </tr>
                        <tr>
                            <td>
                                 <br />
                        <span style="color: Red; font-size: larger;">नोट – NCTE  /  विश्वविद्यालय द्वारा निर्धारित मापदंड पूर्ण होने पर ही आपका प्रवेश हो सकेगा |</span>
                        <br />      
                            </td>                                             
                       </tr>
                       <tr>
                           <td> <span style="margin-left: 90%">निदेशक</span> </td>
                        </tr>
                                     
       </table>
                    </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnl2nd" runat="server">
            <div id="midblockHome2">
                <div id="dvContents2" style="width: 998px; margin: 0 auto; border: solid 0px #147852;">
                    <table width="100%">
                        <tr>
                            <td style="text-align: justify; padding: 10px;font-size:20px;"><b><%=Session["resultname"].ToString().ToUpper() %>&nbsp &#2346;&#2381;&#2352;&#2357;&#2375;&#2358; &#2346;&#2352;&#2367;&#2325;&#2381;&#2359;&#2366;&nbsp<%=Session["resultyear"].ToString().ToUpper() %>&nbsp  &#2325;&#2375; &#2346;&#2352;&#2367;&#2339;&#2366;&#2350; &#2325;&#2375; &#2310;&#2343;&#2366;&#2352; &#2346;&#2352; &#2310;&#2346;&#2325;&#2366; &#2330;&#2351;&#2344;&nbsp <%=Session["resultname"].ToString().ToUpper() %>&nbsp 
                    &#2346;&#2366;&#2336;&#2381;&#2351;&#2325;&#2381;&#2352;&#2350; &#2361;&#2375;&#2340;&#2369; &#2346;&#2381;&#2352;&#2340;&#2367;&#2325;&#2381;&#2359;&#2366; &#2360;&#2370;&#2330;&#2367; &#2350;&#2375;&#2306; &#2361;&#2376;&#2306;&#2404; &#2309;&#2340;&#2307; &#2342;&#2367;&#2344;&#2366;&#2306;&#2325;&nbsp <%=Session["lastdate"].ToString().ToUpper() %>  <%=Session["lasttime"].ToString().ToUpper() %> &nbsp &#2348;&#2332;&#2375; &#2340;&#2325; 
                    &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351; &#2350;&#2375;&#2306; &#2358;&#2369;&#2354;&#2381;&#2325; &#2319;&#2357;&#2306; &#2344;&#2367;&#2350;&#2381;&#2344;&#2366;&#2306;&#2325;&#2367;&#2340; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339; &#2346;&#2340;&#2381;&#2352;&#2379;&#2306; &#2360;&#2361;&#2367;&#2340;&#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340; &#2361;&#2379;&#2357;&#2375;&#2306;&#2404; &#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2344;&#2361;&#2368;&#2306; &#2361;&#2379;&#2344;&#2375; &#2346;&#2352; &#2310;&#2346;&#2325;&#2375; &#2360;&#2381;&#2341;&#2366;&#2344; &#2346;&#2352; &#2346;&#2381;&#2352;&#2340;&#2367;&#2325;&#2381;&#2359;&#2366; &#2360;&#2370;&#2330;&#2367; &#2350;&#2375;&#2306; &#2360;&#2375; &#2325;&#2367;&#2360;&#2368; &#2309;&#2344;&#2381;&#2351; &#2325;&#2366; &#2330;&#2351;&#2344; &#2325;&#2367;&#2351;&#2366; &#2332;&#2366;&#2351;&#2375;&#2327;&#2366;&#2404;
                    &#2346;&#2381;&#2352;&#2340;&#2367;&#2325;&#2381;&#2359;&#2366; &#2360;&#2370;&#2330;&#2367; &#2350;&#2375;&#2306; &#2344;&#2366;&#2350; &#2361;&#2379;&#2344;&#2366; &#2346;&#2381;&#2352;&#2357;&#2375;&#2358; &#2325;&#2366; &#2309;&#2343;&#2367;&#2325;&#2366;&#2352; &#2344;&#2361;&#2368;&#2306; &#2361;&#2376;&#2306;&#2404; &#2346;&#2381;&#2352;&#2357;&#2375;&#2358; &#2350;&#2375;&#2352;&#2367;&#2335; &#2346;&#2381;&#2352;&#2366;&#2346;&#2381;&#2340; 
                    &#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2368; &#2325;&#2368; &#2309;&#2344;&#2369;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2367; &#2346;&#2352; &#2361;&#2368; &#2346;&#2381;&#2352;&#2342;&#2366;&#2344; &#2325;&#2367;&#2351;&#2366; &#2332;&#2366;&#2351;&#2375;&#2327;&#2366;</b>               </td>                                             
                       </tr>
                        <tr>
                            <td>
                                <table width="60%">                                    
                                    <tr>
                                        <td>1.</td>
                                        <td>&#2340;&#2366;&#2354;&#2367;&#2325;&#2366; &#2325;&#2325;&#2381;&#2359;&#2366; X, XII, UG </td>
                                    </tr>

                                    <tr>
                                        <td>2.</td>
                                        <td>&#2335;&#2368;.&#2360;&#2368;</td>
                                    </tr>

                                    <tr>
                                        <td>3.</td>
                                        <td>&#2350;&#2366;&#2311;&#2327;&#2381;&#2352;&#2375;&#2358;&#2344; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339; &#2346;&#2340;&#2381;&#2352;</td>
                                    </tr>
                                    <tr>
                                        <td>4.</td>
                                        <td>&#2310;&#2343;&#2366;&#2352; 
                    &#2325;&#2366;&#2352;&#2381;&#2337;</td>
                                    </tr>

                                    <tr>
                                        <td>5.</td>
                                        <td>&#2346;&#2366;&#2360;&#2346;&#2379;&#2352;&#2381;&#2335; &#2360;&#2366;&#2311;&#2332; &#2347;&#2379;&#2335;&#2379;&#2327;&#2381;&#2352;&#2366;&#2347; -2</td>
                                    </tr>

                                    <tr>
                                        <td>6.</td>
                                        <td>&#2344;&#2367;&#2352;&#2381;&#2343;&#2366;&#2352;&#2367;&#2340; &#2358;&#2369;&#2354;&#2381;&#2325;</td>
                                    </tr>
                                </table>
                            <td>
                        </tr>                        
                        <tr>
                       <td>
                        <b> <br />
                    &#2309;&#2343;&#2367;&#2325; &#2332;&#2366;&#2344;&#2325;&#2366;&#2352;&#2368; &#2361;&#2375;&#2340;&#2369; &#2360;&#2306;&#2346;&#2352;&#2381;&#2325; &#2325;&#2352;&#2375;&#2306;&#2404;                          
                        <br />+91 9672978055, 9672978033, 9950124424 </b>
                                  </td>  
                                </tr>
                        <tr>
                            <td>
                                 <br />
                        <span style="color: Red; font-size: larger;">नोट – NCTE  /  विश्वविद्यालय द्वारा निर्धारित मापदंड पूर्ण होने पर ही आपका प्रवेश हो सकेगा |</span>
                        <br />      
                            </td>                                             
                       </tr>
                       <tr>
                           <td> <span style="margin-left: 90%">निर्देशक</span> </td>
                        </tr>
                        
                    </table>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlnone" runat="server">
            <div id="midblockHome3">
                <div id="dvContents3" style="width: 998px; margin: 0 auto; border: solid 0px #147852;">
                 <table width="100%">
                <tr>
                    <td style="text-align: justify; padding: 10px;font-size:20px; font-weight:bold">
                        <%=Session["resultname"]%> &nbsp प्रवेश परीक्षा <%=Session["resultyear"].ToString().ToUpper() %> में आपका नाम प्रतिक्षा सूचि में है रिक्त स्थान होने की स्थिति में  महाविद्यालय से फ़ोन पर सूचना मिलने पर ही उपस्थित हो |                   
                        <br />
                    </td>
                </tr>
                  <tr>
                       <td>
                        <b>
                    &#2309;&#2343;&#2367;&#2325; &#2332;&#2366;&#2344;&#2325;&#2366;&#2352;&#2368; &#2361;&#2375;&#2340;&#2369; &#2360;&#2306;&#2346;&#2352;&#2381;&#2325; &#2325;&#2352;&#2375;&#2306;&#2404;                          
                        <br />+91 9672978055, 9672978033, 9950124424 </b>
                                  </td>  
                                </tr>
                        <tr>
                            <td>
                                 <br /><br />
                        <span style="color: Red; font-size: larger;">नोट – NCTE  /  विश्वविद्यालय द्वारा निर्धारित मापदंड पूर्ण होने पर ही आपका प्रवेश हो सकेगा |</span>
                        <br /><br />       
                            </td>                                             
                       </tr>
                       <tr>
                           <td> <span style="margin-left: 90%">निर्देशक</span> </td>
                        </tr>
                  
            </table>
                 </div>
            </div>
        </asp:Panel>
</div>


    </form>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.1/parsley.min.js"></script>
<script type="text/javascript">
    function openModal() {
        $('#myModal').modal('show');
    }
</script>
<script type="text/javascript">
    $(function () {
        $('#form1').parsley().on('field:validated', function () {
            var ok = $('.parsley-error').length === 0;
            $('.bs-callout-info').toggleClass('hidden', !ok);
            $('.bs-callout-warning').toggleClass('hidden', ok);
        })
            .on('form:submit', function () {
                return true; // Don't submit form for this demo
            });
    });
</script>
</html>
