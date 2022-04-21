<%@ Page Title="" Language="C#" MasterPageFile="~/pages/forms.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Allforms.pages.category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        input[type=checkbox] {
            position: relative;
            width: 30px;
            height: 15px;
            -webkit-appearance: none;
            background: #c6c6c6;
            outline: none;
            border-radius: 8px;
            box-shadow: inset 0 0 1.5px rgba(0,0,0,.2)
            /*transition:.5s;*/
        }

        input:checked[type=checkbox] {
            background: #03a9f4
        }

        input[type=checkbox]:before {
            content: "";
            position: absolute;
            width: 15px;
            height: 15px;
            border-radius: 7.5px;
            top: 0;
            left: 0;
            background: #fff;
            transform: scale(1.1);
            transition: .5s;
            box-shadow: 0 2px 1.5px rgba(0,0,0,0.2);
        }

        input:checked[type=checkbox]:before {
            left: 15px;
        }
    </style>

    <div class="card-body">
       
            <h2>Author Detail <b>(Compulsory Fields)</b>&nbsp;<span style="color: Red;">*</span></h2>
        


        <div class="row card-body font-weight-bold">

            <div class="col-sm-4">
                Name <span style="color: Red;">*</span>
                <asp:TextBox ID="txtcname" Width="100%" runat="server" CssClass="form-control" placeholder="Enter Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txtcname" ErrorMessage="Enter File"  CssClass="errormsg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>


            <div class="col-sm-4">
                Photo <span style="color: Red;">*</span>
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="FileUpload2" ErrorMessage="Enter File"  CssClass="errormsg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="col-sm-5 mt-4">
                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success mr-3" />
               
            </div>



        </div>
    </div>
    <div class="card-body">
       
            <h3> Details</h3>
       

        <div class="row card-body font-weight-bold">
            <asp:GridView ID="Gvdetail" ClientIDMode="Static" AutoGenerateColumns="false" DataKeyNames="Id" runat="server" CssClass="footable" Width="100%">
                <Columns>
                    <asp:BoundField HeaderText="id" DataField="ID" />
                    <asp:BoundField HeaderText="name" DataField="Name" />
                  

                    <asp:TemplateField HeaderText="Pic">
                        <ItemTemplate>
                            <img runat="server" src='<%#"~/Files/CategoryFile"+Eval("pic") %>' width="50" height="50"/>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="IsActive">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheakIsActive" runat="server" OnCheckedChanged="adcheak_CheckedChanged" Checked='<%#Convert.ToBoolean(Eval("isActive")) %>' AutoPostBack="true" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="gvedit" runat="server" CssClass="ti-pencil" OnClick="gvedit_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    

                </Columns>
                <EmptyDataTemplate>
                    <span class="dot">This Time no record found</span>
                </EmptyDataTemplate>
            </asp:GridView>

        </div>
    </div>

</asp:Content>


