<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->

       <link rel="stylesheet" href="<c:url value="/static/css/normalize.min.css" />">
        <link rel="stylesheet" href="<c:url value="/static/semantic/semantic.min.css" />" ></link>
        <link rel="stylesheet" href="<c:url value="/static/css/main.css" />" >
<%--         <script src="${contextPath}/static/js/vendor/modernizr-2.8.3.min.js"></script> --%>

    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
        <div id="wrapper">
            <nav class="ui menu">
                <div class="item">${personCard.id}</div>
                <a class="item blue " href="${contextPath}/${personCard.id}/perfil"> 
                    <i class="user icon"></i> PERFIL
                </a> 
                <a class="item green" href="${contextPath}/${personCard.id}/formacion" > 
                    <i class="student icon"></i> FORMACIÓN
                </a> 
                <a class="item red" href="${contextPath}/${personCard.id}/experiencia" > 
                    <i class="building outline icon"></i> EXPERIENCIA
                </a> 
                <a class="item purple active" href="${contextPath}/${personCard.id}/conocimientos" > 
                    <i class="trophy icon"></i> CONOCIMIENTOS
                </a>

                <div class="menu right">
                    <div class="ui pointing dropdown link item">
                        <div class="text">
                            <i class="chevron down icon"></i>
                        </div>
                        <div class="menu">
                            <div class="header">GESTIONAR</div>
                            <div class="item" id="btnContact">CONTACTAR</div>
                            <div class="divider"></div>
                            <div class="header">EXPORTAR</div>
                            <a class="item" href="files/CV_Edgar_Medina_Vargas.odt" target="_blank">
                                <i class="file word blue outline icon"></i>
                                WORD
                            </a> 
                            <a class="item " href="files/CV_Edgar_Medina_Vargas.pdf" target="_blank">
                                <i class="file pdf red outline icon"></i>
                                PDF
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
            
            <div id="content">
                <section id="center_content" class="all_whidth">
                   <div class="ui three column grid">

                        <div class="ui horizontal divider">Lenguajes</div>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="80">
                              <div class="bar"></div>
                              <div class="label">JAVA</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="50">
                              <div class="bar"></div>
                              <div class="label">PHP</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="30">
                              <div class="bar"></div>
                              <div class="label">.NET</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="70">
                              <div class="bar"></div>
                              <div class="label">JS, CSS, HTML5</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="50">
                              <div class="bar"></div>
                              <div class="label">SQL</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="40">
                              <div class="bar"></div>
                              <div class="label">ANDROID</div>
                            </div>
                        </article>

                        <div class="ui horizontal divider">Frameworks</div>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="70">
                              <div class="bar"></div>
                              <div class="label">SPRING 3</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="80">
                                <div class="bar"></div>
                                <div class="label">JSF(Primefaces)
                                    <a class="mark" href="http://www.proprofs.com/quiz-school/usercertificate.php?id=55007937&qid=588034&uname=Edgar%20Medina%20Vargas" target="_blank" title="Certificado"><i class="certificate icon blue big"></i>
                                    </a>
                                </div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="70">
                              <div class="bar"></div>
                              <div class="label">HIBERNATE</div>
                            </div>
                        </article>

                        <article class="column item_info">
                            <div class="ui active indicating progress small"  data-percent="60">
                              <div class="bar"></div>
                              <div class="label">MYBATIS</div>
                            </div>
                        </article>
                       

                   </div>                               

                </section>
            </div>
            <footer>
                MCards 2016 © Todos los derechos reservados
            </footer>

        </div>


        <div id="contactModal" class="ui modal">
            <div class="header">Contactar</div>
            <div class="content">
                <div class="ui form">                    
                    <div class="field">
                        <label><i class="mail icon"></i>Email:</label> medient@hotmail.com / medientg@gmail.com
                    </div>
                    <div class="field">
                        <label><i class="phone icon"></i>  <i class="whatsapp icon"></i>Celular / Whatsapp</label> 955 260 648
                    </div>                    
                    <div class="field">
                        <label><i class="linkedin icon"></i></i>Linkedin</label><a href="https://www.linkedin.com/in/edgar-medina-vargas-6b4768a3">https://www.linkedin.com/in/edgar-medina-vargas-6b4768a3</a>
                    </div>
                    <div class="field">
                        <label><i class="git icon"></i></i>Github</label><a href="https://github.com/monkar">https://github.com/monkar</a>
                    </div>
                </div>
          </div>
        </div>


        <script src="<c:url value="/static/js/jquery-1.12.0.min.js"/>" ></script>
        <script src="<c:url value="/static/semantic/semantic.min.js"/>" ></script>
<!--         <script>window.jQuery || document.write('<script src="static/js/vendor/jquery-1.12.0.min.js"><\/script>')</script> -->
        <script src="<c:url value="/static/js/plugins.js"/>" ></script>
        <script src="<c:url value="/static/js/main.js" />" ></script>

        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-77465408-1', 'auto');
          ga('send', 'pageview');

        </script>
    </body>
</html>
