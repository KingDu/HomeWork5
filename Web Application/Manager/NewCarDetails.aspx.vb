
Partial Class detailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delCar As String = e.Values("Car_Make").ToString()

        Response.Write("the record")
        Response.Write("<span class=deletedcarinformationhighlight>")
        Response.Write(delCar)
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL=./NewCarTable.aspx")

        'Response.Write("The car information has been successfully deleted!")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./NewCarTable.aspx")
    End Sub

End Class
