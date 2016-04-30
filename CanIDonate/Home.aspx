<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CanIDonate.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-warning" role="alert">
                <h4>
                    <i class="material-icons">&#xE855;</i>
                    You must wait a little longer
                </h4>

                <p>You will be able to donate on february 5th!</p>

                <p><span class="badge alert-success">Notifications are ON</span> An e-mail will be sent to notify you, acording with your <a href="#">settings configuration</a>.</p>
                <p><span class="badge alert-danger">Notifications are OFF</span> If you want to be notified via e-mail <a href="#">configure your settings</a>.</p>
            </div>

            <div class="alert alert-info" role="alert">
                <p>There is not information about your last donation. Click on the <strong><a href="Donating.aspx">I am donating!</a></strong> option to save your first donation.</p>
            </div>

            <div class="alert alert-success" role="alert">
                <h4>
                    <i class="material-icons">&#xE8DC;</i>
                    Let's donate! :D
                </h4>

                <p>You are now able to donate! Remember to save your donation with the <strong><a href="Donating.aspx">I am donating!</a></strong> option.</p>
            </div>
        </div>
    </div>

    <div class="row statistics">
        <div class="col-sm-4">

        </div>
        <div class="col-sm-4">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    You have donated
                </div>
                <div class="panel-body">
                    4 times
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    Your last donation was on
                </div>
                <div class="panel-body">
                    November 16th
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <h2>Of interest...</h2>

        <div class="col-sm-6">
            <h4>Article 1</h4>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis dapibus nulla. Morbi posuere lacus pulvinar dignissim tincidunt. 
                Praesent bibendum eget magna in rhoncus. Fusce vulputate massa neque, a volutpat velit consectetur ut. Suspendisse eleifend mauris eu tellus egestas, 
                at commodo nibh convallis. Nulla ultricies erat metus, in dignissim libero ornare id. In ex ligula, tempor vel lacus in, accumsan condimentum lorem.
            </p>
            <p>
                Proin dictum, ante ut scelerisque tristique, ante ligula vulputate erat, sed auctor diam ligula sed nibh. Aliquam sit amet magna non orci sollicitudin 
                pulvinar efficitur at tellus. Suspendisse suscipit ex nulla, eget porta nisi cursus et. In at velit ut sapien tincidunt fringilla in vel enim. 
                Proin nibh sem, ullamcorper at varius nec, sollicitudin vel dui. Sed a mauris ut tortor blandit mollis sit amet consectetur nunc. Phasellus molestie 
                erat sit amet sem viverra, in pulvinar mauris rutrum. Sed pulvinar turpis elit, vehicula imperdiet mi varius quis. Vestibulum tellus magna, placerat 
                convallis odio eget, eleifend volutpat tellus. Quisque nec euismod ex. Nunc efficitur, tellus in tincidunt malesuada, leo leo porttitor ipsum, 
                eget elementum sem magna sed nisi. Aenean facilisis risus id nibh sodales, lacinia posuere erat luctus. In feugiat condimentum purus at sagittis. 
                Vivamus mi purus, eleifend vel nulla in, pellentesque cursus diam. Vestibulum a tempor lectus, vitae semper metus.
            </p>
            <p>
                Fusce iaculis ultrices nisi sit amet pharetra. Pellentesque ut dolor iaculis, ultrices orci sed, faucibus tortor. Nullam non rutrum ante. 
                Morbi ipsum purus, venenatis pharetra cursus in, suscipit pretium quam. Nullam sed maximus diam. Aliquam sit amet massa et eros pharetra ultricies. 
                Nunc scelerisque lacus eget neque placerat, in eleifend elit lacinia. In vehicula fringilla egestas. Duis ullamcorper efficitur turpis et efficitur. 
                Nam sagittis lacinia dui quis feugiat.
            </p>
            <p>
                In posuere, augue et vulputate mollis, odio lectus posuere nulla, consequat sodales odio nisi in elit. Integer quis risus id ligula faucibus commodo. 
                Fusce mauris arcu, pellentesque sit amet urna sit amet, porta sodales magna. Praesent molestie orci vel metus aliquet malesuada. Aliquam tempor dapibus pulvinar. 
                Mauris dui neque, sodales eu mauris non, sollicitudin efficitur ipsum. Maecenas suscipit leo sed dignissim consectetur. In consectetur maximus metus, 
                sed hendrerit sem. Integer auctor blandit lorem, lobortis interdum ipsum interdum in. Sed facilisis neque auctor euismod pulvinar. Vivamus vitae purus sem. 
                Mauris vel mi nunc. Maecenas sit amet blandit ligula. Suspendisse placerat feugiat elit.
            </p>
            <p>
                Sed hendrerit, tellus nec finibus consectetur, orci sapien ullamcorper elit, nec rutrum felis ligula nec quam. Aliquam sapien nunc, interdum ac sagittis sed, 
                pellentesque in lectus. Nulla placerat cursus nulla id congue. Fusce molestie eros luctus maximus vulputate. Integer sodales posuere mi, a euismod 
                neque mollis dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec leo vitae turpis volutpat rutrum et sed erat. Nam quis turpis 
                vitae nunc mattis blandit sodales sit amet est. Cras finibus, mi vitae vehicula aliquet, dui turpis fermentum sem, in lobortis lorem nibh et est. Nulla a 
                nisl at leo porta volutpat eu eget diam. Ut eget malesuada dui, nec venenatis est. Integer et lacinia nulla.
            </p>
            <p class="text-right"><a href="#">Leer más...</a></p>
        </div>
        <div class="col-sm-6">
            <h4>Article 2</h4>
            <p>
                Proin dictum, ante ut scelerisque tristique, ante ligula vulputate erat, sed auctor diam ligula sed nibh. Aliquam sit amet magna non orci sollicitudin 
                pulvinar efficitur at tellus. Suspendisse suscipit ex nulla, eget porta nisi cursus et. In at velit ut sapien tincidunt fringilla in vel enim. 
                Proin nibh sem, ullamcorper at varius nec, sollicitudin vel dui. Sed a mauris ut tortor blandit mollis sit amet consectetur nunc. Phasellus molestie 
                erat sit amet sem viverra, in pulvinar mauris rutrum. Sed pulvinar turpis elit, vehicula imperdiet mi varius quis. Vestibulum tellus magna, placerat 
                convallis odio eget, eleifend volutpat tellus. Quisque nec euismod ex. Nunc efficitur, tellus in tincidunt malesuada, leo leo porttitor ipsum, 
                eget elementum sem magna sed nisi. Aenean facilisis risus id nibh sodales, lacinia posuere erat luctus. In feugiat condimentum purus at sagittis. 
                Vivamus mi purus, eleifend vel nulla in, pellentesque cursus diam. Vestibulum a tempor lectus, vitae semper metus.
            </p>
            <p>
                In posuere, augue et vulputate mollis, odio lectus posuere nulla, consequat sodales odio nisi in elit. Integer quis risus id ligula faucibus commodo. 
                Fusce mauris arcu, pellentesque sit amet urna sit amet, porta sodales magna. Praesent molestie orci vel metus aliquet malesuada. Aliquam tempor dapibus pulvinar. 
                Mauris dui neque, sodales eu mauris non, sollicitudin efficitur ipsum. Maecenas suscipit leo sed dignissim consectetur. In consectetur maximus metus, 
                sed hendrerit sem. Integer auctor blandit lorem, lobortis interdum ipsum interdum in. Sed facilisis neque auctor euismod pulvinar. Vivamus vitae purus sem. 
                Mauris vel mi nunc. Maecenas sit amet blandit ligula. Suspendisse placerat feugiat elit.
            </p>
            <p>
                Sed hendrerit, tellus nec finibus consectetur, orci sapien ullamcorper elit, nec rutrum felis ligula nec quam. Aliquam sapien nunc, interdum ac sagittis sed, 
                pellentesque in lectus. Nulla placerat cursus nulla id congue. Fusce molestie eros luctus maximus vulputate. Integer sodales posuere mi, a euismod 
                neque mollis dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec leo vitae turpis volutpat rutrum et sed erat. Nam quis turpis 
                vitae nunc mattis blandit sodales sit amet est. Cras finibus, mi vitae vehicula aliquet, dui turpis fermentum sem, in lobortis lorem nibh et est. Nulla a 
                nisl at leo porta volutpat eu eget diam. Ut eget malesuada dui, nec venenatis est. Integer et lacinia nulla.
            </p>
            <p class="text-right"><a href="#">Leer más...</a></p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
    <script type="text/javascript">
        $("li#nav-home").addClass("active");
    </script>
</asp:Content>
