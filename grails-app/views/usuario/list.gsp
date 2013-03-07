
<%@ page import="sisap.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
<body>

<!-- Content -->
<div class="content">
<div class="title"><h5>Usuários</h5></div>
<div class="breadCrumbHolder module">
    <div class="breadCrumb module">
        <ul>
            <li class="firstB"><a href="#">Home</a> </li>
            <li><g:link action="index"> Usuários</g:link></li>

        </ul>
    </div>
</div>
<!-- Statistics -->
%{--<div id="header" class="wrapper">--}%

%{--</div>--}%

%{--<div id="header" class="wrapper">--}%
<g:if test="${flash.message}">
    <div class="pt20">
        <div class="nNote nSuccess hideit">
            <p><strong>Sucesso: </strong>${flash.message}</p>
        </div>
    </div>
</g:if>
    <div class="middleNav">
        <ul>
            <li class="iMes"><g:link controller="usuario" action="create"><span>Adicionar Usuário</span></g:link> </li>
            %{--<li class="iStat"><a href="#" title=""><span>Buscar usuário</span></a></li>--}%
            %{--<li class="iUser"><a href="#" title=""><span>User list</span></a></li>--}%
            %{--<li class="iOrders"><a href="#" title=""><span>Billing panel</span></a></li>--}%
        </ul>
    </div>
    <div class="fix"></div>
%{--</div>--}%
<!-- Dynamic table -->
<div class="table">
<div class="head"><h5 class="iFrames">Listagem de Usuários</h5></div>
    <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
        <thead>
        <tr>
            <td>Nome</td>
            <td>Login</td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${sisap.Usuario.list()}" var="usuario">
            <tr>
                <td><g:link id="${usuario.id}" action="show">${usuario.nome}</g:link></td>
                <td>${usuario.login}</td>
            </tr>

        </g:each>
        </tbody>
    </table>
</div>





<!-- Widgets -->
%{--<div class="widgets">--}%
%{--<div class="left">--}%

    %{--<!-- Search -->--}%
    %{--<div class="searchWidget">--}%
        %{--<form action="">--}%
            %{--<input type="text" name="search" placeholder="Enter search text..." />--}%
            %{--<input type="submit" name="find" value="" />--}%
        %{--</form>--}%
    %{--</div>--}%

    %{--<!-- Statistics -->--}%
    %{--<div class="widget">--}%
        %{--<div class="head"><h5 class="iChart8">Website statistic</h5><div class="num"><a href="#" class="blueNum">+245</a></div></div>--}%
        %{--<table cellpadding="0" cellspacing="0" width="100%" class="tableStatic">--}%
            %{--<thead>--}%
            %{--<tr>--}%
                %{--<td width="21%">Amount</td>--}%
                %{--<td>Description</td>--}%
                %{--<td width="21%">Changes</td>--}%
            %{--</tr>--}%
            %{--</thead>--}%
            %{--<tbody>--}%
            %{--<tr>--}%
                %{--<td align="center"><a href="#" title="" class="webStatsLink">980</a></td>--}%
                %{--<td>returned visitors</td>--}%
                %{--<td><span class="statPlus">0.32%</span></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td align="center"><a href="#" title="" class="webStatsLink">1545</a></td>--}%
                %{--<td>new registrations</td>--}%
                %{--<td><span class="statMinus">82.3%</span></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td align="center"><a href="#" title="" class="webStatsLink">457</a></td>--}%
                %{--<td>new affiliates registrations</td>--}%
                %{--<td><span class="statPlus">100%</span></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td align="center"><a href="#" title="" class="webStatsLink">9543</a></td>--}%
                %{--<td>new visitors</td>--}%
                %{--<td><span class="statPlus">4.99%</span></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td align="center"><a href="#" title="" class="webStatsLink">354</a></td>--}%
                %{--<td>new pending comments</td>--}%
                %{--<td><span class="statMinus">9.67%</span></td>--}%
            %{--</tr>--}%
            %{--</tbody>--}%
        %{--</table>--}%
    %{--</div>--}%

    %{--<!-- Latest orders -->--}%
    %{--<div class="widget">--}%
        %{--<div class="head"><h5 class="iMoney">Latest orders</h5><div class="num"><a href="#" class="blueNum">+245</a></div></div>--}%

        %{--<div class="supTicket nobg">--}%
            %{--<div class="issueType">--}%
                %{--<span class="issueInfo"><a href="#" title="">VPS Basic</a></span>--}%
                %{--<span class="issueNum"><a href="#" title="">[ #21254 ]</a></span>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%

            %{--<div class="issueSummary">--}%
                %{--<a href="#" title="" class="floatleft"><img src="${createLinkTo(dir: 'images', file: 'user.png')}" alt="" /></a>--}%
                %{--<div class="ticketInfo">--}%
                    %{--<ul>--}%
                        %{--<li>Current order status:</li>--}%
                        %{--<li class="even"><strong class="green">[ pending ]</strong></li>--}%
                        %{--<li>User email:</li>--}%
                        %{--<li class="even"><a href="#" title="">user@company.com</a></li>--}%
                    %{--</ul>--}%
                    %{--<div class="fix"></div>--}%
                %{--</div>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%
        %{--</div>--}%

        %{--<div class="supTicket">--}%
            %{--<div class="issueType">--}%
                %{--<span class="issueInfo"><a href="#" title="">VPS Basic</a></span>--}%
                %{--<span class="issueNum"><a href="#" title="">[ #21254 ]</a></span>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%

            %{--<div class="issueSummary">--}%
                %{--<a href="#" title="" class="floatleft"><img src="${createLinkTo(dir: 'images', file: 'user.png')}" alt="" /></a>--}%
                %{--<div class="ticketInfo">--}%
                    %{--<ul>--}%
                        %{--<li>Current order status:</li>--}%
                        %{--<li class="even"><strong class="green">[ pending ]</strong></li>--}%
                        %{--<li>User email:</li>--}%
                        %{--<li class="even"><a href="#" title="">user@company.com</a></li>--}%
                    %{--</ul>--}%
                    %{--<div class="fix"></div>--}%
                %{--</div>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%
        %{--</div>--}%

        %{--<div class="supTicket">--}%
            %{--<div class="issueType">--}%
                %{--<span class="issueInfo"><a href="#" title="">VPS Basic</a></span>--}%
                %{--<span class="issueNum"><a href="#" title="">[ #21254 ]</a></span>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%

            %{--<div class="issueSummary">--}%
                %{--<a href="#" title="" class="floatleft"><img src="${createLinkTo(dir: 'images', file: 'user.png')}" alt="" /></a>--}%
                %{--<div class="ticketInfo">--}%
                    %{--<ul>--}%
                        %{--<li>Current order status:</li>--}%
                        %{--<li class="even"><strong class="green">[ pending ]</strong></li>--}%
                        %{--<li>User email:</li>--}%
                        %{--<li class="even"><a href="#" title="">user@company.com</a></li>--}%
                    %{--</ul>--}%
                    %{--<div class="fix"></div>--}%
                %{--</div>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

    %{--<div class="fix"></div>--}%
%{--</div>--}%


%{--<!-- Right widgets -->--}%
%{--<div class="right">--}%

    %{--<!-- Support tickets widget -->--}%
    %{--<div class="widget">--}%
        %{--<div class="head"><h5 class="iHelp">Support ticket widget</h5><div class="num"><a href="#" class="redNum">+128</a></div></div>--}%

        %{--<div class="supTicket nobg">--}%
            %{--<div class="issueType">--}%
                %{--<span class="issueInfo">General financial issue</span>--}%
                %{--<span class="issueNum">[ #21254 ]</span>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%

            %{--<div class="issueSummary">--}%
                %{--<a href="#" title="" class="floatleft"><img src="${createLinkTo(dir: 'images', file: 'user.png')}" alt="" /></a>--}%
                %{--<div class="ticketInfo">--}%
                    %{--<ul>--}%
                        %{--<li><a href="#" title="">Eugene Kopyov</a></li>--}%
                        %{--<li class="even"><strong class="red">[ High priority ]</strong></li>--}%
                        %{--<li>Status: <strong class="green">[ Pending ]</strong></li>--}%
                        %{--<li class="even">Oct 25, 2011  23:12</li>--}%
                    %{--</ul>--}%
                    %{--<div class="fix"></div>--}%
                %{--</div>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%
        %{--</div>--}%

        %{--<div class="supTicket">--}%
            %{--<div class="issueType">--}%
                %{--<span class="issueInfo">General financial issue</span>--}%
                %{--<span class="issueNum">[ #21254 ]</span>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%

            %{--<div class="issueSummary">--}%
                %{--<a href="#" title="" class="floatleft"><img src="${createLinkTo(dir: 'images', file: 'user.png')}" alt="" /></a>--}%
                %{--<div class="ticketInfo">--}%
                    %{--<ul>--}%
                        %{--<li><a href="#" title="">Eugene Kopyov</a></li>--}%
                        %{--<li class="even"><strong class="red">[ High priority ]</strong></li>--}%
                        %{--<li>Status: <strong class="green">[ Pending ]</strong></li>--}%
                        %{--<li class="even">Oct 25, 2011  23:12</li>--}%
                    %{--</ul>--}%
                    %{--<div class="fix"></div>--}%
                %{--</div>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%
        %{--</div>--}%

        %{--<div class="supTicket">--}%
            %{--<div class="issueType">--}%
                %{--<span class="issueInfo">General financial issue</span>--}%
                %{--<span class="issueNum">[ #21254 ]</span>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%

            %{--<div class="issueSummary">--}%
                %{--<a href="#" title="" class="floatleft"><img src="${createLinkTo(dir: 'images', file: 'user.png')}" alt="" /></a>--}%
                %{--<div class="ticketInfo">--}%
                    %{--<ul>--}%
                        %{--<li><a href="#" title="">Eugene Kopyov</a></li>--}%
                        %{--<li class="even"><strong class="red">[ High priority ]</strong></li>--}%
                        %{--<li>Status: <strong class="green">[ Pending ]</strong></li>--}%
                        %{--<li class="even">Oct 25, 2011  23:12</li>--}%
                    %{--</ul>--}%
                    %{--<div class="fix"></div>--}%
                %{--</div>--}%
                %{--<div class="fix"></div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

    %{--<!-- Tabs widget -->--}%
    %{--<div class="widget">--}%
        %{--<ul class="tabs">--}%
            %{--<li><a href="#tab1">Tab 1</a></li>--}%
            %{--<li><a href="#tab2">Tab 2</a></li>--}%
        %{--</ul>--}%

        %{--<div class="tab_container">--}%
            %{--<div id="tab1" class="tab_content">Active tab</div>--}%
            %{--<div id="tab2" class="tab_content">Now this one is active</div>--}%
        %{--</div>--}%
        %{--<div class="fix"></div>--}%
    %{--</div>--}%

    %{--<!-- User widget -->--}%
    %{--<div class="widget">--}%
        %{--<div class="head">--}%
            %{--<div class="userWidget">--}%
                %{--<form action="">--}%
                    %{--<input type="checkbox" id="check1" name="chbox" checked="checked" />--}%
                %{--</form>--}%
                %{--<a href="#" title="" class="userLink">Eugene Kopyov</a>--}%
            %{--</div>--}%
            %{--<div class="num"><span>Balance:</span><a href="#" class="greenNum">+128</a></div>--}%
        %{--</div>--}%

        %{--<table cellpadding="0" cellspacing="0" width="100%" class="tableStatic">--}%
            %{--<tbody>--}%
            %{--<tr class="noborder">--}%
                %{--<td width="50%">Current package:</td>--}%
                %{--<td align="right"><strong class="red">VPS Ultimate</strong></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td>Paid until:</td>--}%
                %{--<td align="right">Oct 25, 2011 &nbsp; 23:12</td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td>User email:</td>--}%
                %{--<td align="right"><a href="#" title="">user@company.com</a></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td>Support tickets:</td>--}%
                %{--<td align="right"><a href="#" class="green">no pending tickets</a></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<td>Expiring domains:</td>--}%
                %{--<td align="right"><span class="expire">12 domains</span></td>--}%
            %{--</tr>--}%
            %{--</tbody>--}%
        %{--</table>--}%

    %{--</div>--}%
%{--</div>--}%
%{--</div>--}%
</div>
<div class="fix"></div>
</body>
</html>
