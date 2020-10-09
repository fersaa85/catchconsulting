@component('mail::message')
    # Mensaje de contacto

    Usuario
    Nombre: {{ $name  }}
    Compañia: {{ $company  }}
    Email: {{ $email  }}
    Mensaje: {{ $message  }}
    Teléfono: {{ $phone  }}

    Detalle de la  cita
    Horario: {{ $schedule  }}
    Fecha: {{ $date  }}

@endcomponent
