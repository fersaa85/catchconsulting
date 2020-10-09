<div class="container">
    <h1>Citas</h1>
    <div class="row">
        <div class="col-md-12 ">
            <div class="panel panel-default">
                <div class="panel-heading"></div>

                <div class="panel-body">

                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Compañía</th>
                            <th scope="col">Email</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Horario</th>
                            <th scope="col">Mensaje</th>
                            <th scope="col">Remoto</th>
                        </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <th>{{$quote->name}}</th>
                                <td>{{$quote->company}}</td>
                                <td>{{$quote->email}}</td>
                                <td>{{$quote->phone}}</td>
                                <td>{{$quote->state}}</td>
                                <td>{{$quote->date}}</td>
                                <td>{{$quote->start_time}}</td>
                                <td>{{$quote->message}}</td>
                                <td>{{$quote->remote}}</td>
                            </tr>


                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </div>
</div>
