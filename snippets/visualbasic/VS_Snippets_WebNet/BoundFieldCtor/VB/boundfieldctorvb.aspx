<!-- <Snippet1> -->

<%@ Page language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    ' Dynamically generated field columns need to be created only 
    ' the first time the page is loaded.
    If Not IsPostBack Then
    
      ' Dynamically create field columns to display the desired
      ' fields from the data source.
  
      ' Create a BoundField object to display a customer's company name.
      Dim nameBoundField As New BoundField()
      nameBoundField.DataField = "CompanyName"
      nameBoundField.HeaderText = "Company Name"
    
      ' Create a BoundField object to display a customer's city.
      Dim cityBoundField As New BoundField()
      cityBoundField.DataField = "City"
      cityBoundField.HeaderText = "City"
    
      ' Add the field columns to the ColumnFields collection of the
      ' GridView control.
      CustomersGridView.Columns.Add(nameBoundField)
      CustomersGridView.Columns.Add(cityBoundField)
    
    End If
  
  End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>BoundField Constructor Example</title>
</head>
<body>
    <form id="form1" runat="server">
        
      <h3>BoundField Constructor Example</h3>

      <asp:gridview id="CustomersGridView" 
        datasourceid="CustomersSqlDataSource" 
        autogeneratecolumns="false"
        runat="server">                
      </asp:gridview>
            
      <!-- This example uses Microsoft SQL Server and connects  -->
      <!-- to the Northwind sample database. Use an ASP.NET     -->
      <!-- expression to retrieve the connection string value   -->
      <!-- from the Web.config file.                            -->
      <asp:sqldatasource id="CustomersSqlDataSource"  
        selectcommand="Select [CustomerID], [CompanyName], [Address], [City], [PostalCode], [Country] From [Customers]"
        connectionstring="<%$ ConnectionStrings:NorthWindConnectionString%>"
        runat="server">
      </asp:sqldatasource>
            
    </form>
  </body>
</html>

<!-- </Snippet1> -->