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
                <a class="item blue" href="${contextPath}/${personCard.id}/perfil"> 
                    <i class="user icon"></i> PERFIL
                </a> 
                <a class="item green" href="${contextPath}/${personCard.id}/formacion" > 
                    <i class="student icon"></i> FORMACIÓN
                </a> 
                <a class="item red active" href="${contextPath}/${personCard.id}/experiencia" > 
                    <i class="building outline icon"></i> EXPERIENCIA
                </a> 
                <a class="item purple" href="${contextPath}/${personCard.id}/conocimientos" > 
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
                <section id="left_content">
                    <nav class="ui secondary vertical pointing menu" >
                        <a class="item active" data-tab="tab_center_1_1">
                            <i class="angle right icon"></i> COSAPI SOFT
                        </a>
                        <a class="item" data-tab="tab_center_1_2">
                            <i class="angle right  icon"></i> CONSORCIO GMD-INDRA
                        </a>
                        <a class="item" data-tab="tab_center_1_3">
                            <i class="angle right  icon"></i> CERTICOM
                        </a>
                        <a class="item" data-tab="tab_center_1_4">
                            <i class="angle right  icon"></i> AXLE FINANCIAL
                        </a>
                        <a class="item" data-tab="tab_center_1_5">
                            <i class="angle right  icon"></i> ENSABAP
                        </a>
                        <a class="item" data-tab="tab_center_1_6">
                            <i class="angle right  icon"></i> SERNANP
                        </a>
                    </nav>
                </section>


                <section id="center_content">

                    <div class="content ui tab active" data-tab="tab_center_1_1">
                        <article class="item_info">
                            <h1 class="ui dividing header">COSAPI SOFT
                                <span class="date">Marzo 2016 - Actualidad</span>
                            </h1>
                            <h2>Analista Programador Java</h2>
                            <p><b>Función:</b>    Desarrollo de middleware para el cliente CLARO</p>                        
                        </article>                       
                    </div>

                    <div class="content ui tab" data-tab="tab_center_1_2">
                        <article class="item_info">
                            <h1 class="ui dividing header">CONSORCIO FÁBRICA DE SOFTWARE GMD - INDRA
                                <span class="date">Mayo 2015 - Noviembre 2015</span>
                            </h1>
                            <h2>Analista Desarrollador</h2>
                            <p><b>Función:</b>    Desarrollo de sistemas para el cliente SUNAT</p>  

                            <div class="ui tabContainer">
                                <div class="ui pointing secondary menu">
                                    <a class="active item blue" data-tab="tab_center_1_2_1">Tareas</a>
                                    <a class="item green" data-tab="tab_center_1_2_2">Herramientas</a>
                                    <a class="item orange disabled" data-tab="tab_center_1_2_3">Muestras</a>
                                </div>
                                <div class="ui tab active" data-tab="tab_center_1_2_1">
                                    <ul class="ui list">

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo del Sistema de Remates por Internet</div>
                                                <div class="description">Gestión de remates de bienes confiscados para el sistema interno de SUNAT.</div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Migración del Sistema de Tasación Intranet</div>
                                                <div class="description">Gestión de la tasación de elementos por Lote para el sistema SOL de SUNAT.</div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo del Visor de notificaciones SOL</div>
                                                <div class="description">Renovación del sistema de mensajería de Mensajes y Notificaciones  los funcionarios de SUNAT para el sistema SOL.</div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo de sistemas Batch</div>
                                                <div class="description">Tareas de migración de data, evaluación y aprobación de informes y generación de convocatorias para los sistemas de Tributos.</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>


                                <div class="ui tab " data-tab="tab_center_1_2_2">
                                    <ul class="ui list">
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Java</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Informix, Oracle</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Spring 3, MyBatis</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Bootstrap 3, Jquery</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="ui tab" data-tab="tab_center_1_2_3">

                                    <div class="ui four cards">
                                        <a class="yellow card">
                                            <div class="image">
                                                <img src="img/wireframe/white-image.png">
                                            </div>
                                        </a>
                                        <a class="blue card">
                                            <div class="image">
                                                <img src="img/wireframe/white-image.png">
                                            </div>
                                        </a>
                                        <a class="green card">
                                            <div class="image">
                                                <img src="img/wireframe/white-image.png">
                                            </div>
                                        </a>

                                        <a class="red card">
                                            <div class="image">
                                                <img src="img/wireframe/white-image.png">
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>                     
                        </article>    
                    </div>

                    <div class="content ui tab" data-tab="tab_center_1_3">
                        <article class="item_info">
                            <h1 class="ui dividing header">CERTICOM
                                <span class="date">Octubre 2014 - Mayo 2015</span>
                            </h1>
                            <h2>Analista Desarrollador</h2>
                            <p><b>Función:</b>    Análisis y programación de sistemas internos</p>

                            <div class="ui tabContainer">
                                <div class="ui pointing secondary menu">
                                    <a class="active item blue" data-tab="tab_center_1_3_1">Tareas</a>
                                    <a class="item green" data-tab="tab_center_1_3_2">Herramientas</a>
                                    <a class="item orange disabled" data-tab="tab_center_1_3_3">Muestras</a>
                                </div>
                                <div class="ui tab active" data-tab="tab_center_1_3_1">
                                    <ul class="ui list">

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo del Sistema de Control de Producción Financiera - SCPF</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Implementación del módulo de verificación de RUC, el cual genera los formatos necesarios para operar con el sistema de validación de SUNAT. Luego, permite subir los formatos generados y actualizar la información de los clientes.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Implementación del módulo de Mensajería. Gestiona mensajes informativos sobre los estados de cuenta de los clientes, generar archivos Excel y adjuntarlos a un mensaje que se enviará a los supervisores y personal involucrado vía correo electrónico.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Implementación del módulo de Aperturas y Rechazo. Permite subir archivos Excel y hojas de texto enviados por el banco y dependiendo de ellos, actualizar la información de las cuentas de los clientes.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Implementación del Metodizado. El módulo permite la gestión de toda la información financiera de un cliente, realizando cálculos personalizados y auto llenado de sus activos, pasivos, patrimonio, pérdidas y ganancias y ratios.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>


                                <div class="ui tab " data-tab="tab_center_1_3_2">
                                    <ul class="ui list">
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Java</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Mysql</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Spring 3, MyBatis</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">JSF Primefaces</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="ui tab" data-tab="tab_center_1_3_3">                                    
                                </div>
                            </div> 
                        </article>
                    </div>

                    <div class="content ui tab" data-tab="tab_center_1_4">
                        <article class="item_info">
                            <h1 class="ui dividing header">AXLE FINANCIAL
                                <span class="date">Setiembre 2012 - Setiembre 2014</span>
                            </h1>
                            <h2>Analista de Sistemas - Team Leader</h2>
                            <p><b>Función:</b>     Desarrollo de sistemas prevención de lavado de dinero para Ocean Bank - USA</p>   
                            <div class="ui tabContainer">
                                <div class="ui pointing secondary menu">
                                    <a class="active item blue" data-tab="tab_center_1_4_1">Tareas</a>
                                    <a class="item green" data-tab="tab_center_1_4_2">Herramientas</a>
                                    <a class="item orange disabled" data-tab="tab_center_1_4_3">Muestras</a>
                                </div>
                                <div class="ui tab active" data-tab="tab_center_1_4_1">
                                    <ul class="ui list">

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Team Leader equipo de desarrollo</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Encargado de supervisar los avances del equipo.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Asesoramiento sobre las tecnologías implementada a los desarrolladores.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Velar por el cumplimiento de Buenas Prácticas en el desarrollo del sistema. 
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo del Módulo Conozca a su Cliente KYC - XPERTAML</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Permite el control de un cliente para evaluar su interrelación con los demás clientes.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Evalúa la relación de un cliente con todas las cuentas del banco.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Evalúa la relación de los firmantes de una cuenta.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Permite el mantenimiento de todos los campos y tablas heredadas para un cliente, sus cuentas y los firmantes de estas.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Localiza los estados de cada dato, entre Faltante, Missing, Mandatorio, Core.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Formulario dinámico con diferentes componentes.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Exposición de la Actividad Esperada del cliente, en contraste con el mes anterior, y año anterior.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Muestra los registros y detalles de Transacciones y sub-transacciones de cada movimiento a través del tiempo, desde la Actividad Esperada.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Reportes dinámicos en PDF.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo del Sistema de Prevención de Lavado de Dinero- XPERTAML</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Implementación de framework Primefaces (JSF).
                                                        </li>
                                                        <li class="item" value="-">
                                                            Mantenimientos de entidades.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Solución de incidencias y requerimientos.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>


                                <div class="ui tab " data-tab="tab_center_1_4_2">
                                    <ul class="ui list">
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Java</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Java Reflection Api</div>
                                        </li>
                                         <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Primefaces – Primefaces extension</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Spring Security</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Hibernate</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">EJB</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Oracle</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="ui tab" data-tab="tab_center_1_4_3">                                    
                                </div>
                            </div> 
                        </article>
                    </div>

                    <div class="content ui tab" data-tab="tab_center_1_5">
                        <article class="item_info">
                            <h1 class="ui dividing header">ESCUELA NACIONAL SUPERIOR AUTONOMA DE BELLAS ARTES DEL PERÚ - ENSABAP
                                <span class="date">Noviembre 2011 - Setiembre 2012</span>
                            </h1>
                            <h2>Analista Programador I </h2>
                            <p><b>Función:</b>    Análisis y programación de sistemas internos</p>    
                            <div class="ui tabContainer">
                                <div class="ui pointing secondary menu">
                                    <a class="active item blue" data-tab="tab_center_1_5_1">Tareas</a>
                                    <a class="item green" data-tab="tab_center_1_5_2">Herramientas</a>
                                    <a class="item orange disabled" data-tab="tab_center_1_5_3">Muestras</a>
                                </div>
                                <div class="ui tab active" data-tab="tab_center_1_5_1">
                                    <ul class="ui list">

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Desarrollo del Sistema de Gestión Académica Pedagógica - SIGAP</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Desarrollo de la arquitectura de programación del SIGAP.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Desarrollo del Módulo de seguridad al sistema con gestión de acceso dinámico por usuario.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Desarrollo del Módulo de Mantenimiento de Entidades del Sistema.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Desarrollo del Módulo de Gestión, involucra el desarrollo del sub-modulo Horario en el cual se especifica la programación de los cursos por horas, grupo, aéreas, días, aulas, fechas de inicio y fin, con su respectivo sub-módulo de Reporte.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Modelado de la base de datos del SIGAP.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Mantenimiento del Sistema de Gestión Académica - SIGA</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Mantenimiento del módulo de Admisión actual Sistema de Gestión Académica de la ENSABAP.
                                                        </li>
                                                        <li class="item" value="-">
                                                            Actualización del sistema para el soporte de Cursos de otras Sedes (Chachapoyas).
                                                        </li>
                                                        <li class="item" value="-">
                                                            Actualización del sistema para el soporte de apertura de nuevos programas académicos.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>


                                <div class="ui tab " data-tab="tab_center_1_5_2">
                                    <ul class="ui list">
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Java</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">PHP</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Struts 2</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Spring 3</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">HTML5, CSS, JQuery</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">PostgreSQL</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Mysql</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="ui tab" data-tab="tab_center_1_5_3">                                    
                                </div>
                            </div> 
                        </article>
                    </div>
                    <div class="content ui tab" data-tab="tab_center_1_6">
                        <article class="item_info">
                            <h1 class="ui dividing header">SERVICIO NACIONAL DE ÁREAS NATURALES PROTEGIDAS POR EL ESTADO - SERNANP
                                <span class="date">Febrero 2011 - Julio 2011</span>
                            </h1>
                            <h2>Practicante Java</h2>
                            <p><b>Función:</b>    Análisis y programación de sistemas internos</p>  
                            <div class="ui tabContainer">
                                <div class="ui pointing secondary menu">
                                    <a class="active item blue" data-tab="tab_center_1_6_1">Tareas</a>
                                    <a class="item green" data-tab="tab_center_1_6_2">Herramientas</a>
                                    <a class="item orange disabled" data-tab="tab_center_1_6_3">Muestras</a>
                                </div>
                                <div class="ui tab active" data-tab="tab_center_1_6_1">
                                    <ul class="ui list">

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Módulo de Infracciones e Infractores de las Áreas Naturales Protegidas</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Desarrollo del m'odulo de gestion de infracciones para las ANP.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Módulo  Proyectos</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Actualización del sub-módulo de consultas  de los proyectos existentes en las diversas ANPs.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">
                                                <div class="header">Módulo de Libro de Reclamos</div>
                                                <div class="description">
                                                    <ol class="ui list">
                                                        <li class="item" value="-">
                                                            Desarrollo del sistem de Registro, Notificación y Seguimiento de las incidencias en los libros de reclamaciones para las ANP.
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>


                                <div class="ui tab " data-tab="tab_center_1_6_2">
                                    <ul class="ui list">
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Java</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">Struts 2</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">JQuery, CSS</div>
                                        </li>
                                        <li class="item">
                                            <i class="right triangle icon"></i>
                                            <div class="content">MySql</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="ui tab" data-tab="tab_center_1_6_3">                                    
                                </div>
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
