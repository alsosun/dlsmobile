function loadXMLout(url, sb, gr) {
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        //if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var txt = "<table class='rubrictable'><tr><th>add to rubric</th><th>Code</th><th>Grade " + gr + " " + sb + " outcomes</th></tr>";
            x = xmlhttp.responseXML.documentElement.getElementsByTagName("outcome");
            for (i = 0; i < x.length; i++) {
                txt = txt + "<tr><td><form><input type='checkbox'></input></td>";
                xx = x[i].getElementsByTagName("identifier");
                {
                    try {
                        txt = txt + "<td>" + xx[0].firstChild.nodeValue + "</td>";
                    }
                    catch (er) {
                        txt = txt + "<td> error </td>";
                    }
                }
                xx = x[i].getElementsByTagName("outcome_text");
                {
                    try {
                        txt = txt + "<td>" + xx[0].firstChild.nodeValue + "</td>";
                    }
                    catch (er) {
                        txt = txt + "<td> error </td>";
                    }
                }
                txt = txt + "</tr>";
            }
            txt = txt + "<tr><td></td><td>citation</td><td>Adapted from Saskatchewan Ministry of Education @ www.curriculum.gov.sk.ca</td></tr></table>";
            document.getElementById('outtable').innerHTML = txt;
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }
