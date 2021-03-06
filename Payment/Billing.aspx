﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="Billing.aspx.cs" Inherits="Payment_Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            height: 153px;
            width: 459px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 19px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="auto-style28">PAY WITH CREDIT CARD</span> <span class="auto-style27">- </span> <span class="auto-style29">the safer, easier way to pay</span><br />
        <br />
        <span class="auto-style36">BOOKING NO&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="BookingNo" runat="server"></asp:Label>
        </span> <span class="auto-style29">
                <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="totalAmount" runat="server" Visible="False"></asp:Label>
        <br />
        </span>
        </span>
        <br />
        <table style="height: 33px; width: 291px; font-size: small;">
            <tr>
                <td class="auto-style1">Enter your billing information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>

        <table class="auto-style1">
            <tr>
            <td class="auto-style25">CREDIT CARD NO</td>
            <td class="auto-style2">
                <asp:TextBox ID="CreditNo" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="CreditNo" ErrorMessage="Please Enter Credit Card No" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CreditNo" ErrorMessage="Invalid Length, Credit Card No Only Accept 16 Digits" ForeColor="Red" ValidationExpression="&quot;\d{16}&quot;/">*</asp:RegularExpressionValidator>
                </td>
        </tr>
            <tr>
            <td class="auto-style25">BANK</td>
            <td class="auto-style2">
                <asp:DropDownList ID="Banklist" runat="server" Width="182px">
                <asp:ListItem>Please Select</asp:ListItem>
                    <asp:ListItem>Maybank</asp:ListItem>
                    <asp:ListItem Value="PublicBank">Public Bank</asp:ListItem>
                    <asp:ListItem Value="HongLeongBank">Hong Leong Bank</asp:ListItem>
                    <asp:ListItem Value="RHBBank">RHB Bank</asp:ListItem>
                    <asp:ListItem Value="Ambank">Ambank</asp:ListItem>
                    <asp:ListItem Value="CIMBBank">CIMB Bank</asp:ListItem>
                    <asp:ListItem Value="Citibank">Citibank</asp:ListItem>
                    <asp:ListItem Value="HSBCBank">HSBC Bank</asp:ListItem>
                    <asp:ListItem Value="OCBCBank">OCBC Bank</asp:ListItem>
                </asp:DropDownList>

                </td>
                <td class="auto-style3">
                    &nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style25">CARD HOLDER NAME</td>
            <td class="auto-style2">
                <asp:TextBox ID="cardHolderName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="cardHolderName" ErrorMessage="Please Enter Card Holder Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td class="auto-style25">BILLING ADDRESS LINE 1 </td>
            <td class="auto-style2">
                <asp:TextBox ID="Address1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Address1" ErrorMessage="Please Enter Your Billing Address Line 1" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td class="auto-style25">BILLING ADDRESS LINE 2 </td>
            <td class="auto-style2">
                <asp:TextBox ID="Address2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Address2" ErrorMessage="Please Enter Your Billing Address Line 2" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td class="auto-style25">TOWN/CITY </td>
            <td class="auto-style2">
                <asp:TextBox ID="Town" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Town" ErrorMessage="Please Enter Your Town/City" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td class="auto-style25">COUNTRY </td>
            <td class="auto-style2">
                <asp:DropDownList ID="Countrylist" runat="server" Height="16px" Width="182px">
                    <asp:ListItem Value="">Please Select</asp:ListItem>
<asp:ListItem Value="Afganistan">Afghanistan</asp:ListItem>
<asp:ListItem Value="Albania">Albania</asp:ListItem>
<asp:ListItem Value="Algeria">Algeria</asp:ListItem>
<asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>
<asp:ListItem Value="Andorra">Andorra</asp:ListItem>
<asp:ListItem Value="Angola">Angola</asp:ListItem>
<asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
<asp:ListItem Value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</asp:ListItem>
<asp:ListItem Value="Argentina">Argentina</asp:ListItem>
<asp:ListItem Value="Armenia">Armenia</asp:ListItem>
<asp:ListItem Value="Aruba">Aruba</asp:ListItem>
<asp:ListItem Value="Australia">Australia</asp:ListItem>
<asp:ListItem Value="Austria">Austria</asp:ListItem>
<asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
<asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
<asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
<asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
<asp:ListItem Value="Barbados">Barbados</asp:ListItem>
<asp:ListItem Value="Belarus">Belarus</asp:ListItem>
<asp:ListItem Value="Belgium">Belgium</asp:ListItem>
<asp:ListItem Value="Belize">Belize</asp:ListItem>
<asp:ListItem Value="Benin">Benin</asp:ListItem>
<asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
<asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
<asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
<asp:ListItem Value="Bonaire">Bonaire</asp:ListItem>
<asp:ListItem Value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</asp:ListItem>
<asp:ListItem Value="Botswana">Botswana</asp:ListItem>
<asp:ListItem Value="Brazil">Brazil</asp:ListItem>
<asp:ListItem Value="British Indian Ocean Ter">British Indian Ocean Ter</asp:ListItem>
<asp:ListItem Value="Brunei">Brunei</asp:ListItem>
<asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
<asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
<asp:ListItem Value="Burundi">Burundi</asp:ListItem>
<asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
<asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
<asp:ListItem Value="Canada">Canada</asp:ListItem>
<asp:ListItem Value="Canary Islands">Canary Islands</asp:ListItem>
<asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
<asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
<asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
<asp:ListItem Value="Chad">Chad</asp:ListItem>
<asp:ListItem Value="Channel Islands">Channel Islands</asp:ListItem>
<asp:ListItem Value="Chile">Chile</asp:ListItem>
<asp:ListItem Value="China">China</asp:ListItem>
<asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>
<asp:ListItem Value="Cocos Island">Cocos Island</asp:ListItem>
<asp:ListItem Value="Colombia">Colombia</asp:ListItem>
<asp:ListItem Value="Comoros">Comoros</asp:ListItem>
<asp:ListItem Value="Congo">Congo</asp:ListItem>
<asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
<asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
<asp:ListItem Value="Cote DIvoire">Cote D'Ivoire</asp:ListItem>
<asp:ListItem Value="Croatia">Croatia</asp:ListItem>
<asp:ListItem Value="Cuba">Cuba</asp:ListItem>
<asp:ListItem Value="Curaco">Curacao</asp:ListItem>
<asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
<asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
<asp:ListItem Value="Denmark">Denmark</asp:ListItem>
<asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
<asp:ListItem Value="Dominica">Dominica</asp:ListItem>
<asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
<asp:ListItem Value="East Timor">East Timor</asp:ListItem>
<asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
<asp:ListItem Value="Egypt">Egypt</asp:ListItem>
<asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>
<asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
<asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
<asp:ListItem Value="Estonia">Estonia</asp:ListItem>
<asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
<asp:ListItem Value="Falkland Islands">Falkland Islands</asp:ListItem>
<asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
<asp:ListItem Value="Fiji">Fiji</asp:ListItem>
<asp:ListItem Value="Finland">Finland</asp:ListItem>
<asp:ListItem Value="France">France</asp:ListItem>
<asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
<asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>
<asp:ListItem Value="French Southern Ter">French Southern Ter</asp:ListItem>
<asp:ListItem Value="Gabon">Gabon</asp:ListItem>
<asp:ListItem Value="Gambia">Gambia</asp:ListItem>
<asp:ListItem Value="Georgia">Georgia</asp:ListItem>
<asp:ListItem Value="Germany">Germany</asp:ListItem>
<asp:ListItem Value="Ghana">Ghana</asp:ListItem>
<asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
<asp:ListItem Value="Great Britain">Great Britain</asp:ListItem>
<asp:ListItem Value="Greece">Greece</asp:ListItem>
<asp:ListItem Value="Greenland">Greenland</asp:ListItem>
<asp:ListItem Value="Grenada">Grenada</asp:ListItem>
<asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
<asp:ListItem Value="Guam">Guam</asp:ListItem>
<asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
<asp:ListItem Value="Guinea">Guinea</asp:ListItem>
<asp:ListItem Value="Guyana">Guyana</asp:ListItem>
<asp:ListItem Value="Haiti">Haiti</asp:ListItem>
<asp:ListItem Value="Hawaii">Hawaii</asp:ListItem>
<asp:ListItem Value="Honduras">Honduras</asp:ListItem>
<asp:ListItem Value="Hong Kong">Hong Kong</asp:ListItem>
<asp:ListItem Value="Hungary">Hungary</asp:ListItem>
<asp:ListItem Value="Iceland">Iceland</asp:ListItem>
<asp:ListItem Value="India">India</asp:ListItem>
<asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
<asp:ListItem Value="Iran">Iran</asp:ListItem>
<asp:ListItem Value="Iraq">Iraq</asp:ListItem>
<asp:ListItem Value="Ireland">Ireland</asp:ListItem>
<asp:ListItem Value="Isle of Man">Isle of Man</asp:ListItem>
<asp:ListItem Value="Israel">Israel</asp:ListItem>
<asp:ListItem Value="Italy">Italy</asp:ListItem>
<asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
<asp:ListItem Value="Japan">Japan</asp:ListItem>
<asp:ListItem Value="Jordan">Jordan</asp:ListItem>
<asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
<asp:ListItem Value="Kenya">Kenya</asp:ListItem>
<asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
<asp:ListItem Value="Korea North">Korea North</asp:ListItem>
<asp:ListItem Value="Korea Sout">Korea South</asp:ListItem>
<asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
<asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
<asp:ListItem Value="Laos">Laos</asp:ListItem>
<asp:ListItem Value="Latvia">Latvia</asp:ListItem>
<asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
<asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
<asp:ListItem Value="Liberia">Liberia</asp:ListItem>
<asp:ListItem Value="Libya">Libya</asp:ListItem>
<asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
<asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
<asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
<asp:ListItem Value="Macau">Macau</asp:ListItem>
<asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
<asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
<asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
<asp:ListItem Value="Malawi">Malawi</asp:ListItem>
<asp:ListItem Value="Maldives">Maldives</asp:ListItem>
<asp:ListItem Value="Mali">Mali</asp:ListItem>
<asp:ListItem Value="Malta">Malta</asp:ListItem>
<asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>
<asp:ListItem Value="Martinique">Martinique</asp:ListItem>
<asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
<asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
<asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
<asp:ListItem Value="Mexico">Mexico</asp:ListItem>
<asp:ListItem Value="Midway Islands">Midway Islands</asp:ListItem>
<asp:ListItem Value="Moldova">Moldova</asp:ListItem>
<asp:ListItem Value="Monaco">Monaco</asp:ListItem>
<asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
<asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
<asp:ListItem Value="Morocco">Morocco</asp:ListItem>
<asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
<asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
<asp:ListItem Value="Nambia">Nambia</asp:ListItem>
<asp:ListItem Value="Nauru">Nauru</asp:ListItem>
<asp:ListItem Value="Nepal">Nepal</asp:ListItem>
<asp:ListItem Value="Netherland Antilles">Netherland Antilles</asp:ListItem>
<asp:ListItem Value="Netherlands">Netherlands (Holland, Europe)</asp:ListItem>
<asp:ListItem Value="Nevis">Nevis</asp:ListItem>
<asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
<asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
<asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
<asp:ListItem Value="Niger">Niger</asp:ListItem>
<asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
<asp:ListItem Value="Niue">Niue</asp:ListItem>
<asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
<asp:ListItem Value="Norway">Norway</asp:ListItem>
<asp:ListItem Value="Oman">Oman</asp:ListItem>
<asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
<asp:ListItem Value="Palau Island">Palau Island</asp:ListItem>
<asp:ListItem Value="Palestine">Palestine</asp:ListItem>
<asp:ListItem Value="Panama">Panama</asp:ListItem>
<asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>
<asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
<asp:ListItem Value="Peru">Peru</asp:ListItem>
<asp:ListItem Value="Phillipines">Philippines</asp:ListItem>
<asp:ListItem Value="Pitcairn Island">Pitcairn Island</asp:ListItem>
<asp:ListItem Value="Poland">Poland</asp:ListItem>
<asp:ListItem Value="Portugal">Portugal</asp:ListItem>
<asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
<asp:ListItem Value="Qatar">Qatar</asp:ListItem>
<asp:ListItem Value="Republic of Montenegro">Republic of Montenegro</asp:ListItem>
<asp:ListItem Value="Republic of Serbia">Republic of Serbia</asp:ListItem>
<asp:ListItem Value="Reunion">Reunion</asp:ListItem>
<asp:ListItem Value="Romania">Romania</asp:ListItem>
<asp:ListItem Value="Russia">Russia</asp:ListItem>
<asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
<asp:ListItem Value="St Barthelemy">St Barthelemy</asp:ListItem>
<asp:ListItem Value="St Eustatius">St Eustatius</asp:ListItem>
<asp:ListItem Value="St Helena">St Helena</asp:ListItem>
<asp:ListItem Value="St Kitts-Nevis">St Kitts-Nevis</asp:ListItem>
<asp:ListItem Value="St Lucia">St Lucia</asp:ListItem>
<asp:ListItem Value="St Maarten">St Maarten</asp:ListItem>
<asp:ListItem Value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</asp:ListItem>
<asp:ListItem Value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</asp:ListItem>
<asp:ListItem Value="Saipan">Saipan</asp:ListItem>
<asp:ListItem Value="Samoa">Samoa</asp:ListItem>
<asp:ListItem Value="Samoa American">Samoa American</asp:ListItem>
<asp:ListItem Value="San Marino">San Marino</asp:ListItem>
<asp:ListItem Value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</asp:ListItem>
<asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
<asp:ListItem Value="Senegal">Senegal</asp:ListItem>
<asp:ListItem Value="Serbia">Serbia</asp:ListItem>
<asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
<asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
<asp:ListItem Value="Singapore">Singapore</asp:ListItem>
<asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
<asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
<asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
<asp:ListItem Value="Somalia">Somalia</asp:ListItem>
<asp:ListItem Value="South Africa">South Africa</asp:ListItem>
<asp:ListItem Value="Spain">Spain</asp:ListItem>
<asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
<asp:ListItem Value="Sudan">Sudan</asp:ListItem>
<asp:ListItem Value="Suriname">Suriname</asp:ListItem>
<asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
<asp:ListItem Value="Sweden">Sweden</asp:ListItem>
<asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
<asp:ListItem Value="Syria">Syria</asp:ListItem>
<asp:ListItem Value="Tahiti">Tahiti</asp:ListItem>
<asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
<asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
<asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
<asp:ListItem Value="Thailand">Thailand</asp:ListItem>
<asp:ListItem Value="Togo">Togo</asp:ListItem>
<asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
<asp:ListItem Value="Tonga">Tonga</asp:ListItem>
<asp:ListItem Value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</asp:ListItem>
<asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
<asp:ListItem Value="Turkey">Turkey</asp:ListItem>
<asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
<asp:ListItem Value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</asp:ListItem>
<asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
<asp:ListItem Value="Uganda">Uganda</asp:ListItem>
<asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
<asp:ListItem Value="United Arab Erimates">United Arab Emirates</asp:ListItem>
<asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
<asp:ListItem Value="United States of America">United States of America</asp:ListItem>
<asp:ListItem Value="Uraguay">Uruguay</asp:ListItem>
<asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
<asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
<asp:ListItem Value="Vatican City State">Vatican City State</asp:ListItem>
<asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
<asp:ListItem Value="Vietnam">Vietnam</asp:ListItem>
<asp:ListItem Value="Virgin Islands (Brit)">Virgin Islands (Brit)</asp:ListItem>
<asp:ListItem Value="Virgin Islands (USA)">Virgin Islands (USA)</asp:ListItem>
<asp:ListItem Value="Wake Island">Wake Island</asp:ListItem>
<asp:ListItem Value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</asp:ListItem>
<asp:ListItem Value="Yemen">Yemen</asp:ListItem>
<asp:ListItem Value="Zaire">Zaire</asp:ListItem>
<asp:ListItem Value="Zambia">Zambia</asp:ListItem>
<asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Countrylist" ErrorMessage="Please Select Your Country" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style25">POSTCODE </td>
            <td class="auto-style2">
                <asp:TextBox ID="Postcode" runat="server" Width="180px" ClientIDMode="AutoID"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Postcode" ErrorMessage="Please Enter Your Postcode" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Postcode" ErrorMessage="Invalid Format, Postcode 5 Digits No Only" ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">CONTACT NO </td>
            <td class="auto-style2">
                <asp:TextBox ID="Contact" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Contact" ErrorMessage="Please Enter Your Contact No" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">EMAIL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style2">
                <asp:TextBox ID="Email" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Email" ErrorMessage="Please Enter Your Contact No" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

    </table>
        <br />
        <table style="height: 33px; width: 459px; font-size: small;">
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text=" I hereby agree that the above information are correct " />
                    and agree to the T&amp;C and 
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; privacy statement</td>
            </tr>
        </table>

        <br />
&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BorderStyle="Solid" Height="30px" PostBackUrl="~/Payment/PaymentMethod.aspx" Text="Back" Width="115px" CausesValidation="False" />
&nbsp;<asp:Button ID="Button1" runat="server" BorderStyle="Solid" Text="Save &amp; Continue" Height="30px" Width="115px" OnClick="Button1_Click1" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="The following problems have been encountered" ShowMessageBox="True" ShowSummary="False" />
        <br />
        <br />
</asp:Content>
