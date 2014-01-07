

$(document).on('pageshow', '#classes', function () {
   onClassesReady();
   alert("from js");
});

$(document).on('pageshow', '#sask', function () {
    onSaskReady();
    alert("from js");
});
//classes page
// popup menu
//addclasses show
$("#addclasslink").on("click", function (event) {
    $("#addclass").show();
    $("#delclass").hide();
    $("#addst").hide();
    $("#delst").hide();
});
//delclasses show
$("#delclasslink").on("click", function (event) {
    $("#addclass").hide();
    $("#delclass").show();
    $("#addst").hide();
    $("#delst").hide();
});
//addst show
$("#addstlink").on("click", function (event) {
    $("#addclass").hide();
    $("#delclass").hide();
    $("#addst").show();
    $("#delst").hide();
});
//delst show
$("#delstlink").on("click", function (event) {
    $("#addclass").hide();
    $("#delclass").hide();
    $("#addst").hide();
    $("#delst").show();
});