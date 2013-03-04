<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="mainLogin"/>
    <title>Welcome to Grails</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
        #conteudo{

            width: 300px;
            height: 500px;
            margin:0 auto;
            text-align:left;
        }
        .tableLogin{
            border: none;
            margin-top: 200px;
            color: #000000;
            width: 300px;
            position: relative;
        }
    .tableLogin tr{

            background-color: #ffffff;
        }
    .tableLogin td{
        /*border: 1px #00008B solid;*/

        margin: 0 auto;
        padding: 5px;
        background-color: #ffffff;
        }
    </style>
</head>
<body>
    <div id="conteudo">
        <g:form action="authenticate">
            <table class="tableLogin">
                <tbody>
                <tr>
                    <td colspan="2" style="text-align: center;"> <g:img dir="images" file="lock-icon.png" width="100" height="100"/> </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"> Acesso ao sistema </td>
                </tr>
                    <tr style="background-color: #ffffff; cursor: pointer;">
                        <td style="text-align: right;"><label>Login:</label></td>
                        <td ><g:textField name="teste" /></td>
                    </tr>
                    <tr style="background-color: #ffffff;">
                        <td style="text-align: right;"><label>Senha:</label></td>
                        <td ><g:textField name="teste" /></td>
                    </tr>
                    <tr style="background-color: #ffffff;">
                        <td colspan="2" style="text-align: right; font-size: 0.7em;color: gray;"><label>Entre com o login e senha para ter acesso ao sistema.</label></td>

                    </tr>
                    <tr style="background-color: #ffffff;">
                        <td colspan="2" style="text-align: right;"><g:submitButton name="btnSubmit" value="Login" /> </td>
                    </tr>

                </tbody>
            </table>
        </g:form>
    </div>

</body>
</html>
