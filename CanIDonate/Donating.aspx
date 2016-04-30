<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donating.aspx.cs" Inherits="CanIDonate.Donating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/dropzone.css" />

    <style type="text/css">
        .dropzone {
            border: dashed gainsboro 1px;
            background-color: transparent;
            padding: 0;
            overflow-x: hidden;
            overflow-y: auto;
            max-height: 200px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h1>I am donating!</h1>

    <div class="form-group">
        <label for="txtDate">Date</label>
        <input id="txtDate" type="date" class="form-control" placeholder="When are you donating?" />
    </div>
    <div class="form-group">
        <label for="txtPlace">Place</label>
        <input id="txtPlace" type="text" class="form-control" placeholder="Where are you donating?" />
    </div>
    <div class="form-group">
        <label for="cboComplete">Was a complete donation?</label>
        <select id="cboComplete" class="form-control">
            <option value="Y">Yes</option>
            <option value="N">No</option>
        </select>
    </div>

    <div class="row">
        <div class="col-sm-8">
            <div class="form-group">
                <label for="txtComments">Comments</label>
                <textarea id="txtComments" class="form-control" placeholder="Want to save something else?" style="height: 200px;"></textarea>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label for="selfieFile">Selfie</label>
                <div id="dZUpload" class="dropzone">
                    <div class="fallback dz-default dz-message"></div>
                </div>



                <%--<input id="selfieFile" type="file" />--%>
            </div>
        </div>
    </div>

    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-danger btn-lg" Text="Save this donation" style="width: 100%;" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
    <script src="js/dropzone.js"></script>

    <script type="text/javascript">
        $("li#nav-donating").addClass("active");

        $(document).ready(function () {
            Dropzone.autoDiscover = false;
            
            $("#dZUpload").dropzone({
                url: "FileUpload.ashx?accountCode=" + "<%= accountId %>",
                acceptedFiles: "image/*",
                maxFilesize: 5,
                maxFiles: 2,
                addRemoveLinks: true,
                uploadMultiple: false,
                maxfilesexceeded: function (file) {
                    this.removeFile(file);
                },
                removedfile: function (file) {
                    $(file.previewElement).remove();

                    $.ajax({
                        url: "FileRemove.ashx?accountCode=" + "<%= accountId %>" + "&file=" + file.name,
                        error: function () {
                            
                        },
                        success: function (data) {
                            
                        }
                    });
                }
            });
        });
    </script>
</asp:Content>
