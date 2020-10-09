<!DOCTYPE html>

<head>
    <title>Zoom WebSDK</title>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="https://source.zoom.us/1.7.7/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="https://source.zoom.us/1.7.7/css/react-select.css" />
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="_token" content="{{ csrf_token() }}" >
</head>

<body>
<style>
    body {
        padding-top: 50px;
    }


    #nav-tool{
        padding: 5px;
    }
    .selectpicker {
        height: 34px;
        border-radius: 4px;
    }

    .navbar-inverse {
         background-color: #fafafa;
         border: 0px;
    }
    .navbar-brand{
        padding: 0px;
    }


    .btn-primary {
        background-color:  #4285f4 !important;
        border-color:  #4285f4 !important;
    }

</style>

<nav id="nav-tool" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">
                <img src="images/home/Catch_Consulting_Oficial-mini.png" />
            </a>
        </div>
        <div id="navbar">
            <form class="navbar-form navbar-right" id="meeting_form">
                <div class="form-group">
                    <input type="hidden" name="display_name" id="display_name" value="1.7.7#CDN" maxLength="100"
                           placeholder="Name" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="text" name="meeting_number" id="meeting_number" value="" maxLength="11"
                           style="width:200px" placeholder="ID de la reunión" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="text" name="meeting_pwd" id="meeting_pwd" value="" style="width:200px"
                           maxLength="32" placeholder="Contraseña de la reunión" class="form-control">
                </div>

                <div class="form-group">
                    <select id="meeting_role" class="selectpicker" >
                        <option value="0">Asistente</option>
                        <!--
                        <option value=0 selected="selected">Attendee</option>
                        <option value=1>Host</option>
                        <option value=5>Assistant</option>
                        -->
                    </select>
                </div>
                <div class="form-group">
                    <select id="meeting_lang" class="selectpicker dropdown">
                        <option value="es-ES">Spanish - Español</option>
                        <option value="en-US">English - Ingles</option>
                        <!--
                        <option value="en-US">English</option>
                        <option value="de-DE">German Deutsch</option>
                        <option value="es-ES" selected="selected">Spanish Español</option>
                        <option value="fr-FR">French Français</option>
                        <option value="jp-JP">Japanese 日本語</option>
                        <option value="pt-PT">Portuguese Portuguese</option>
                        <option value="ru-RU">Russian Русский</option>
                        <option value="zh-CN">Chinese 简体中文</option>
                        <option value="zh-TW">Chinese 繁体中文</option>
                        <option value="ko-KO">Korean 한국어</option>
                        -->
                    </select>
                </div>

                <button type="submit" class="btn btn-primary" id="join_meeting">Unirse</button>
                <button type="submit" class="btn btn-primary" id="clear_all">Limpiar</button>

            </form>
        </div>
        <!--/.navbar-collapse -->
    </div>
</nav>


<script src="https://source.zoom.us/1.7.7/lib/vendor/react.min.js"></script>
<script src="https://source.zoom.us/1.7.7/lib/vendor/react-dom.min.js"></script>
<script src="https://source.zoom.us/1.7.7/lib/vendor/redux.min.js"></script>
<script src="https://source.zoom.us/1.7.7/lib/vendor/redux-thunk.min.js"></script>
<script src="https://source.zoom.us/1.7.7/lib/vendor/jquery.min.js"></script>
<script src="https://source.zoom.us/1.7.7/lib/vendor/lodash.min.js"></script>

<script src="https://source.zoom.us/zoom-meeting-1.7.7.min.js"></script>
<script src="{{ asset('js/zoom/tool.js') }}"></script>
<script src="{{ asset('js/zoom/index.js') }}"></script>

<script>

</script>
</body>

</html>