<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
  Home Page
</asp:Content>
<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">

<script language="javascript" type="text/javascript">
<!--
$(document).ready(function()
{
    $(".checkBox,.checkBoxClear").click(function(srcc)
    {
      var cb = $(".checkBox,.checkBoxClear");
      cb.removeClass("checkBox,checkBoxClear");
      cb.addClass("checkBoxClear");
      $("#selVarId").attr("value", $(this).attr("id"));
      $(this).removeClass("checkBoxClear");
      $(this).addClass("checkBox");
      //alert($("#selVarId").attr("value"));
    });
    
    $("#varForm").submit(function(){
      var f = $("#varForm");
      var action = f.attr("action");
      var serializedForm = f.serialize();
      $.post(action, serializedForm, 
        function(ob){
        $("#main").attr('innerHTML', ob);
        });
      return false;
    })
    
    jQuery().ajaxStart(function(){
      $("#main").fadeOut("slow");
    })
    
    jQuery().ajaxStop(function(){
      $("#main").fadeIn("fast");
    })
});

function addVoice()
{
  $('#hUsername').attr('value', $('#username').attr('value'));
  $('#varForm').submit();
}
//-->
  </script>

  <h2>Кто будет следующим Президентом Украины?</h2>

  <div id="selVariant">

    <div class="varFrame">
      <img src="<%= ResolveUrl("~/Content/Images/nophoto.jpg") %>" alt="Photo 1" />
      <div id="div1" class="checkBoxClear">&nbsp;</div>
    </div>
    
    <div class="varFrame">
      <img src="<%= ResolveUrl("~/Content/Images/nophoto.jpg") %>" alt="Photo 2" />
      <div id="div2" class="checkBoxClear">&nbsp;</div>
    </div>
    
    <div class="varFrame">
      <img src="<%= ResolveUrl("~/Content/Images/nophoto.jpg") %>" alt="Photo 3" />
      <div id="div3" class="checkBoxClear">&nbsp;</div>
    </div>

  </div>
  
  <form id="varForm" action="<%= Url.Action("AddVoice") %>" method="post">
    <div id="actPanel">
      <input type="hidden" id="selVarId" name="selVarId" value="" />
      <input type="hidden" id="hUsername" name="hUsername" value="" />
      <input alt="#TB_inline?height=215&width=350&inlineId=hiddenModalContent&modal=true" class="thickbox" type="button" value="Голосовать" />
      <div id="hiddenModalContent" style="display:none">
        <% Html.RenderPartial("RegisterForm"); %>
      </div>
    </div>
  </form>

<% Html.RenderPartial("VoteResult"); %>

</asp:Content>
