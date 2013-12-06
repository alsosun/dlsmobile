    function loadXMLout(url) {
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                txt = "<table border='1'><tr><th>Grade</th><th>Number</th></tr>";
                x = xmlhttp.responseXML.documentElement.getElementsByTagName("outcome");
                for (i = 0; i < x.length; i++) {
                    txt = txt + "<tr>";
                    xx = x[i].getElementsByTagName("identifier");
                    {
                        try {
                            txt = txt + "<td>" + xx[0].firstChild.nodeValue + "</td>";
                        }
                        catch (er) {
                            txt = txt + "<td> </td>";
                        }
                    }
                    xx = x[i].getElementsByTagName("outcome_text");
                    {
                        try {
                            txt = txt + "<td>" + xx[0].firstChild.nodeValue + "</td>";
                        }
                        catch (er) {
                            txt = txt + "<td> </td>";
                        }
                    }
                    txt = txt + "</tr>";
                }
                txt = txt + "</table>";
                document.getElementById('outtable').innerHTML = txt;
            }
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }