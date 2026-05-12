# 3.1. User Stories.


<table>
  <thead>
    <tr>
      <th>Epic / Story ID</th>
      <th>Título</th>
      <th>Descripción</th>
      <th>Criterios de Aceptación</th>
      <th>Relacionado con</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>EP01</b></td>
      <td>Autenticación y Acceso Seguro</td>
      <td><b>Como</b> usuario del sistema (ganadero o veterinario), <b>quiero</b> gestionar mi cuenta y acceder a la plataforma mediante autenticación segura, <b>para</b> mantener la total privacidad de los datos de mi finca.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>EP02</b></td>
      <td>Gestión de Inventario Ganadero (Hato)</td>
      <td><b>Como</b> ganadero, <b>quiero</b> gestionar el registro de mis animales (crear, consultar, editar y eliminar), incluyendo información detallada como identificación, características, estado de salud, reproducción y ubicación, <b>para</b> mantener un control digital, preciso y escalable de mi ganado.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>EP03</b></td>
      <td>Gestión de Eventos Sanitarios</td>
      <td><b>Como</b> ganadero, <b>quiero</b> registrar y gestionar eventos sanitarios generales (vacunación, plagas, campañas), <b>para</b> planificar y controlar la salud del ganado a nivel global.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>EP04</b></td>
      <td>Historial Clínico por Animal</td>
      <td><b>Como</b> ganadero o veterinario, <b>quiero</b> registrar y consultar el historial clínico de cada animal, <b>para</b> asegurar su trazabilidad y seguimiento médico individual.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>EP05</b></td>
      <td>Control Económico y Financiero</td>
      <td><b>Como</b> administrador de la finca, <b>quiero</b> registrar diariamente mis ingresos (ej. ventas) y egresos (ej. compra de insumos), <b>para</b> tener una visibilidad clara de mis finanzas y calcular la rentabilidad real de mi producción.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>EP06</b></td>
      <td>Monitoreo, Estadísticas y Alertas (Dashboard)</td>
      <td><b>Como</b> ganadero, <b>quiero</b> visualizar un panel de control con indicadores clave y recibir notificaciones preventivas, <b>para</b> tomar decisiones estratégicas de forma rápida y proactiva.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>EP07</b></td>
      <td>Landing Page Comercial y de Conversión</td>
      <td><b>Como</b> visitante interesado, <b>quiero</b> informarme sobre la propuesta de valor, características, testimonios y precios de AniTec en una web pública, <b>para</b> evaluar el producto y decidir si me registro en la plataforma.</td>
      <td>No aplica</td>
      <td>No aplica</td>
    </tr>
    <tr>
      <td><b>US01</b></td>
      <td>Registro de Nueva Cuenta</td>
      <td><b>Como</b> nuevo usuario, <b>quiero</b> registrar mis datos y crear credenciales, <b>para</b> obtener una cuenta que me permita gestionar mi hato ganadero.</td>
      <td>
        - <b>Dado que</b> un usuario ingresa datos válidos y acepta las políticas de privacidad, <b>Cuando</b> procesa el registro, <b>Entonces</b> el sistema crea la cuenta de forma persistente y le otorga acceso automático.<br><br>
        - <b>Dado que</b> el correo electrónico ingresado ya se encuentra registrado en la plataforma, <b>Cuando</b> se intenta procesar el registro, <b>Entonces</b> el sistema rechaza la solicitud e informa la duplicidad sin comprometer otros datos.
      </td>
      <td>EP01</td>
    </tr>
    <tr>
      <td><b>US02</b></td>
      <td>Inicio de Sesión</td>
      <td><b>Como</b> usuario registrado, <b>quiero</b> autenticarme en la plataforma, <b>para</b> acceder a mi información de forma segura.</td>
      <td>
        - <b>Dado que</b> un usuario provee credenciales correctas, <b>Cuando</b> solicita acceso, <b>Entonces</b> el sistema lo redirige a su panel principal.<br><br>
        - <b>Dado que</b> el usuario ingresa una clave errónea, <b>Cuando</b> intenta acceder, <b>Entonces</b> el sistema deniega el paso.
      </td>
      <td>EP01</td>
    </tr>
    <tr>
      <td><b>US03</b></td>
      <td>Recuperación de Contraseña</td>
      <td><b>Como</b> usuario registrado, <b>quiero</b> solicitar un restablecimiento de mi clave, <b>para</b> recuperar el acceso a mi cuenta si la olvido.</td>
     <td>
        - <b>Dado que</b> el usuario ingresa un correo válido, <b>Cuando</b> solicita la recuperación, <b>Entonces</b> el sistema envía un enlace de restablecimiento.<br><br>
        - <b>Dado que</b> el usuario accede al enlace recibido, <b>Cuando</b> ingresa una nueva contraseña, <b>Entonces</b> el sistema actualiza la contraseña y permite el acceso.<br><br>
        - <b>Dado que</b> el correo no está registrado, <b>Cuando</b> el usuario solicita la recuperación, <b>Entonces</b> el sistema muestra un mensaje genérico por seguridad.
      </td>
      <td>EP01</td>
    </tr>
    <tr>
      <td><b>US04</b></td>
      <td>Ingreso de Nuevo Animal</td>
      <td><b>Como</b> ganadero, <b>quiero</b> registrar un animal con su información taxonómica y biográfica, <b>para</b> ingresarlo a mi base de datos digital.</td>
      <td>
        - <b>Dado que</b> se ingresan datos obligatorios válidos, <b>Cuando</b> se confirma la creación, <b>Entonces</b> el sistema almacena el perfil del animal <b>Y</b> lo muestra en el listado actualizado.<br><br>
        - <b>Dado que</b> falta un campo obligatorio (ej. especie), <b>Cuando</b> intenta guardar, <b>Entonces</b> el sistema bloquea la acción y resalta el error.<br><br>
        - <b>Dado que</b> el ganadero ingresa datos en formato inválido (ej. edad negativa), <b>Cuando</b> intenta guardar, <b>Entonces</b> el sistema muestra un mensaje de error indicando que el formato es incorrecto.
      </td>
      <td>EP02</td>
    </tr>
    <tr>
      <td><b>US05</b></td>
      <td>Edición de Datos del Animal</td>
      <td><b>Como</b> ganadero, <b>quiero</b> modificar los datos de un animal existente, <b>para</b> mantener su información actualizada.</td>
      <td>
        - <b>Dado que</b> el usuario modifica un campo válido de un animal, <b>Cuando</b> guarda los cambios, <b>Entonces</b> el sistema actualiza la base de datos sin alterar el identificador único.<br><br>
        - <b>Dado que</b> el ganadero ingresa datos inválidos (ej. valores negativos), <b>Cuando</b> intenta guardar los cambios, <b>Entonces</b> el sistema bloquea la actualización y muestra mensajes de error indicando los campos correspondientes mal ingresados.<br><br>
        - <b>Dado que</b> eL ganadero deja campos obligatorios vacíos, <b>Cuando</b> intenta guardar, <b>Entonces</b> el sistema impide la acción y resalta los campos requeridos.
      </td>
      <td>EP02</td>
    </tr>
    <tr>
      <td><b>US06</b></td>
      <td>Baja / Eliminación de Animal</td>
      <td><b>Como</b> ganadero, <b>quiero</b> dar de baja a un animal del sistema, <b>para</b> reflejar ventas o decesos en mi inventario real.</td>
     <td>
        - <b>Dado que</b> el usuario selecciona eliminar un registro, E ingrese el ID del animal a eliminar y el motivo (Muerte o Venta) <b>Cuando</b> confirma la acción, <b>Entonces</b> el sistema lo remueve y actualiza el listado principal.<br><br>
        - <b>Dado que</b> el ganadero no selecciona un motivo de baja ni el ID del animal <b>Cuando</b> intenta confirmar la eliminación, <b>Entonces</b> el sistema bloquea la acción y solicita completar los campos requeridos.
      </td>
      <td>EP02</td>
    </tr>
    <tr>
      <td><b>US07</b></td>
      <td>Listado de Animales</td>
      <td><b>Como</b> ganadero, <b>quiero</b> ver una lista de todos mis animales, <b>para</b> tener una visión general de mi inventario.</td>
      <td>
        - <b>Dado que</b> el usuario accede al módulo de inventario, <b>Cuando</b> carga la vista, <b>Entonces</b> el sistema retorna una lista con resúmenes básicos (especie, edad, sexo) por animal.<br><br>
        - <b>Dado que</b> no existen animales registrados, <b>Cuando</b> el usuario accede al módulo, <b>Entonces</b> el sistema muestra un mensaje indicando que no hay datos disponibles.
      </td>
      <td>EP02</td>
    </tr>
    <tr>
      <td><b>US08</b></td>
      <td>Búsqueda y Filtrado</td>
      <td><b>Como</b> ganadero, <b>quiero</b> buscar animales por ID o aplicar filtros, <b>para</b> encontrar especímenes específicos de forma rápida.</td>
     <td>
        - <b>Dado que</b> el usuario ingresa un término de búsqueda, <b>Cuando</b> ejecuta la consulta, <b>Entonces</b> el sistema retorna solo los registros que coinciden con el término.<br><br>
        - <b>Dado que</b> aplica un filtro de especie, <b>Cuando</b> la vista se actualiza, <b>Entonces</b> solo se muestran los animales de dicha categoría.<br><br>
        - <b>Dado que</b> el ganadero limpia los filtros o el término de búsqueda, <b>Cuando</b> restablece la vista, <b>Entonces</b> el sistema muestra nuevamente el listado completo de animales.
      </td>
      <td>EP02</td>
    </tr>
    <tr>
      <td><b>US09</b></td>
      <td>Ficha Detallada del Animal</td>
      <td><b>Como</b> ganadero, <b>quiero</b> abrir el perfil completo de un animal, <b>para</b> revisar todos sus atributos, estado reproductivo y documentos.</td>
      <td>
        - <b>Dado que</b> el usuario selecciona un animal del listado, <b>Cuando</b> solicita su detalle, <b>Entonces</b> el sistema expone toda su información biográfica y archivos adjuntos.
      </td>
      <td>EP02</td>
    </tr>
    <tr>
      <td><b>US10</b></td>
      <td>Visualización de Próximos Eventos</td>
      <td><b>Como</b> ganadero, <b>quiero</b> ver eventos programados, <b>para</b> anticipar campañas de vacunación o tareas sanitarias.</td>
      <td>
        - <b>Dado que</b> el usuario accede al módulo de eventos, <b>Cuando</b> carga la vista, <b>Entonces</b> el sistema muestra un listado de eventos (vacunación, tratamientos, campañas) con información básica (tipo, fecha, titulo, descripción, imagen referencial).<br><br>
        - <b>Dado que</b> el usuario aplica filtro según tipo de evento, <b>Cuando</b> actualiza la vista, <b>Entonces</b> el sistema muestra solo los eventos que cumplen los criterios.<br><br>
        - <b>Dado que</b> no existen eventos registrados, <b>Cuando</b> el usuario accede al módulo, <b>Entonces</b> el sistema muestra un mensaje indicando que no hay eventos disponibles.
      </td>
      <td>EP03</td>
    </tr>
    <tr>
      <td><b>US11</b></td>
      <td>Registro de nuevo Evento</td>
      <td><b>Como</b> ganadero, <b>quiero</b> registrar un nuevo evento sanitario, <b>para</b> planificar y dar seguimiento a las actividades de salud.</td>
     <td>
        - <b>Dado que</b> el usuario completa los campos obligatorios (tipo de evento, fecha, título y descripción), <b>Cuando</b> confirma el registro, <b>Entonces</b> el sistema crea el evento y lo muestra en el listado actualizado.<br><br>
        - <b>Dado que</b> el usuario omite uno o más campos obligatorios, <b>Cuando</b> intenta guardar el evento, <b>Entonces</b> el sistema bloquea la acción y muestra mensajes de validación.<br><br>
        - <b>Dado que</b> el usuario ingresa datos en formato inválido (ej. fecha incorrecta), <b>Cuando</b> intenta registrar el evento, <b>Entonces</b> el sistema muestra un mensaje de error indicando el formato esperado.
      </td>
      <td>EP03</td>
    </tr>
    <tr>
      <td><b>US12</b></td>
      <td>Búsqueda y Selección para Historial</td>
      <td><b>Como</b> veterinario o ganadero, <b>quiero</b> filtrar animales por especie, edad o sexo, <b>para</b> localizar el animal cuyo historial clínico deseo consultar.</td>
      <td>
        - <b>Dado que</b> el usuario accede a la sección de historial clínico, <b>Cuando</b> carga la vista, <b>Entonces</b> el sistema muestra un panel de búsqueda con filtros (especie, edad, sexo) y un listado de animales registrados.<br><br>
        - <b>Dado que</b> el usuario aplica uno o más filtros, <b>Cuando</b> actualiza la búsqueda, <b>Entonces</b> el sistema muestra únicamente los animales que cumplen con los criterios.<br><br>
        - <b>Dado que</b> no existen resultados, <b>Cuando</b> se aplican filtros o búsqueda, <b>Entonces</b> el sistema muestra un mensaje indicando que no hay coincidencias.
      </td>
      <td>EP04</td>
    </tr>
    <tr>
      <td><b>US13</b></td>
      <td>Consulta de Historial Clínico</td>
      <td><b>Como</b> veterinario o ganadero, <b>quiero</b> visualizar el historial clínico de un animal, <b>para</b> evaluar su evolución sanitaria.</td>
      <td>
        - <b>Dado que</b> el usuario selecciona un animal del listado, <b>Cuando</b> accede a su historial clínico, <b>Entonces</b> el sistema muestra una tabla cronológica con las visitas médicas registradas.<br><br>
        - <b>Dado que</b> el historial contiene registros, <b>Cuando</b> se visualiza la tabla, <b>Entonces</b> se muestran datos como fecha, diagnóstico, tratamiento y observaciones.<br><br>
        - <b>Dado que</b> no existen visitas registradas, <b>Cuando</b> el usuario accede al historial, <b>Entonces</b> el sistema muestra un mensaje indicando que no hay registros.
      </td>
      <td>EP04</td>
    </tr>
    <tr>
      <td><b>US14</b></td>
      <td>Registro de Visita Médica</td>
      <td><b>Como</b> veterinario o ganadero, <b>quiero</b> registrar una nueva visita médica, <b>para</b> documentar la atención sanitaria de un animal.</td>
      <td>
        - <b>Dado que</b> el usuario se encuentra en el historial de un animal, <b>Cuando</b> selecciona “Añadir nueva visita” y completa los campos obligatorios, <b>Entonces</b> el sistema guarda el registro y lo muestra en el historial.<br><br>
        - <b>Dado que</b> faltan campos obligatorios, <b>Cuando</b> intenta guardar, <b>Entonces</b> el sistema bloquea la acción y muestra mensajes de validación.<br><br>
        - <b>Dado que</b> el registro se guarda correctamente, <b>Cuando</b> finaliza la operación, <b>Entonces</b> el sistema muestra una confirmación.
      </td>
      <td>EP04</td>
    </tr>
    <tr>
      <td><b>US15</b></td>
      <td>Edición de Visita Médica</td>
      <td><b>Como</b> veterinario o ganadero, <b>quiero</b> editar una visita médica, <b>para</b> corregir o actualizar la información.</td>
      <td>
        - <b>Dado que</b> el usuario selecciona una visita existente, <b>Cuando</b> modifica los datos y guarda los cambios, <b>Entonces</b> el sistema actualiza la información en el historial.<br><br>
        - <b>Dado que</b> se ingresan datos inválidos, <b>Cuando</b> intenta guardar, <b>Entonces</b> el sistema muestra errores de validación.
      </td>
      <td>EP04</td>
    </tr>
    <tr>
      <td><b>US16</b></td>
      <td>Eliminación de Visita Médica</td>
      <td><b>Como</b> veterinario o ganadero, <b>quiero</b> eliminar una visita médica registrada, <b>para</b> mantener un historial clínico preciso.</td>
      <td>
        - <b>Dado que</b> el usuario selecciona una visita médica, <b>Cuando</b> confirma la eliminación, <b>Entonces</b> el sistema elimina el registro del historial.<br><br>
        - <b>Dado que</b> el usuario cancela la operación, <b>Cuando</b> decide no continuar, <b>Entonces</b> el sistema no realiza cambios.<br><br>
        - <b>Dado que</b> la eliminación se realiza correctamente, <b>Cuando</b> finaliza la operación, <b>Entonces</b> el sistema actualiza el historial de visitas.
      </td>
      <td>EP04</td>
    </tr>
    <tr>
      <td><b>US17</b></td>
      <td>Registro de Ingresos Diarios</td>
      <td><b>Como</b> ganadero, <b>quiero</b> añadir registros de ingresos económicos, <b>para</b> documentar las ganancias por ventas o servicios.</td>
      <td>
        - <b>Dado que</b> se introduce un monto positivo y una fecha, <b>Cuando</b> se guarda la transacción, <b>Entonces</b> el sistema la clasifica como ingreso e incrementa el balance del periodo.
      </td>
      <td>EP05</td>
    </tr>
    <tr>
      <td><b>US18</b></td>
      <td>Registro de Egresos Diarios</td>
      <td><b>Como</b> ganadero, <b>quiero</b> documentar los gastos operativos, <b>para</b> tener control sobre las salidas de dinero de la finca.</td>
      <td>
        - <b>Dado que</b> se introduce un monto de gasto y la fecha en la que se realizó, <b>Cuando</b> se guarda la transacción, <b>Entonces</b> el sistema la clasifica como egreso y actualiza las métricas financieras del periodo.
      </td>
      <td>EP05</td>
    </tr>
    <tr>
      <td><b>US19</b></td>
      <td>Análisis Gráfico de Ganancia</td>
      <td><b>Como</b> ganadero, <b>quiero</b> visualizar el comportamiento financiero en gráficas, <b>para</b> entender la rentabilidad a lo largo del tiempo.</td>
      <td>
        - <b>Dado que</b> el sistema posee registros financieros, <b>Cuando</b> se consulta el análisis mensual, <b>Entonces</b> renderiza un gráfico de barras comparando la utilidad mensual en lo que va del año.
      </td>
      <td>EP05</td>
    </tr>
    <tr>
      <td><b>US20</b></td>
      <td>Filtros y Total de Hato</td>
      <td><b>Como</b> ganadero, <b>quiero</b> visualizar el total de animales según filtros aplicados, <b>para</b> conocer el tamaño de mi inventario bajo criterios específicos.</td>
      <td>
        - <b>Dado que</b> el usuario accede al dashboard, <b>Cuando</b> carga la vista, <b>Entonces</b> el sistema muestra una tarjeta con el total general de animales.<br><br>
        - <b>Dado que</b> el usuario aplica filtros (rango de fechas, especie, ubicación o estado), <b>Cuando</b> actualiza la vista, <b>Entonces</b> el sistema recalcula y muestra el total de animales que cumplen dichos criterios.<br><br>
        - <b>Dado que</b> no existen resultados para los filtros aplicados, <b>Cuando</b> se actualiza la vista, <b>Entonces</b> el sistema muestra un total igual a cero y un mensaje informativo.<br><br>
        - <b>Dado que</b> existen gráficos en el dashboard, <b>Cuando</b> el usuario aplica filtros, <b>Entonces</b> estos no afectan el gráfico de distribución por sexo ni el gráfico porcentual por especie.
      </td>
      <td>EP06</td>
    </tr>
    <tr>
      <td><b>US21</b></td>
      <td>Distribución del Hato por Sexo y Especie</td>
      <td><b>Como</b> ganadero, <b>quiero</b> visualizar la distribución de mi ganado por especie y sexo, <b>para</b> entender su composición demográfica.</td>
      <td>
        - <b>Dado que</b> el usuario accede al dashboard, <b>Cuando</b> carga la sección de distribución, <b>Entonces</b> el sistema muestra un gráfico circular con la proporción por especie y un gráfico de barras con la distribución por sexo.<br><br>
        - <b>Dado que</b> el usuario interactúa con el selector de especie, <b>Cuando</b> selecciona una opción, <b>Entonces</b> el sistema actualiza el gráfico de barras mostrando la distribución por sexo para dicha especie.<br><br>
        - <b>Dado que</b> el gráfico circular representa la distribución por especie, <b>Cuando</b> se visualiza, <b>Entonces</b> este no permite interacción ni modificación por parte del usuario.<br><br>
        - <b>Dado que</b> no existen datos disponibles, <b>Cuando</b> se visualizan los gráficos, <b>Entonces</b> el sistema muestra un mensaje indicando la ausencia de información.
      </td>
      <td>EP06</td>
    </tr>
    <tr>
      <td><b>US22</b></td>
      <td>Panel de Alertas Clasificadas</td>
      <td><b>Como</b> ganadero, <b>quiero</b> visualizar un listado de alertas categorizadas por nivel de severidad (críticas, medias, informativas), <b>para</b> detectar anomalías como alta mortalidad o desbalances y tomar acciones preventivas.</td>
      <td>
        - <b>Dado que</b> ocurren anomalías registradas en la finca, <b>Cuando</b> el usuario ingresa a Reportes, <b>Entonces</b> el sistema expone tarjetas de alerta con iconos y colores según su gravedad (rojo, amarillo, azul), indicando la causa y la fecha.<br><br>
        - <b>Dado que</b> pueden existir múltiples avisos, <b>Cuando</b> se visualiza el panel de alertas, <b>Entonces</b> el sistema muestra un bloque resumen con el conteo total numérico segmentado en: Alertas críticas, medias e informativas.
      </td>
      <td>EP06</td>
    </tr>
    <tr>
      <td><b>US23</b></td>
      <td>Tendencias Históricas Poblacionales</td>
      <td><b>Como</b> ganadero, <b>quiero</b> analizar una gráfica de líneas sobre la tendencia total del ganado a lo largo del tiempo, <b>para</b> evaluar objetivamente el crecimiento o decrecimiento de mi producción.</td>
      <td>
        - <b>Dado que</b> existen registros históricos continuos, <b>Cuando</b> se consulta la gráfica inferior, <b>Entonces</b> el sistema dibuja una línea conectando los puntos de la evolución poblacional mes a mes.<br><br>
        - <b>Dado que</b> el usuario necesita cambiar la ventana de análisis, <b>Cuando</b> interactúa con el botón de rango temporal (ej. "Últimos 6 meses"), <b>Entonces</b> el eje X de la gráfica se ajusta y redibuja la tendencia para ese periodo específico.
      </td>
      <td>EP06</td>
    </tr>
    <tr>
      <td><b>US24</b></td>
      <td>Notificaciones Globales</td>
      <td><b>Como</b> usuario del sistema, <b>quiero</b> visualizar un panel de notificaciones global a través del icono de campana, <b>para</b> enterarme inmediatamente de las alertas registradas sin importar en qué sección de la plataforma me encuentre navegando.</td>
      <td>
        - <b>Dado que</b> el motor del sistema genera una nueva alerta (ej. desbalance de sexos o próxima vacunación), <b>Cuando</b> el usuario está activo en la sesión, <b>Entonces</b> el icono de la campana en la barra de navegación muestra un indicador visual de notificación no leída.<br><br>
        - <b>Dado que</b> el usuario interactúa con la campana de notificaciones, <b>Cuando</b> hace clic sobre el icono, <b>Entonces</b> el sistema despliega un menú flotante con el listado de las alertas más recientes ordenadas por fecha y hora.<br><br>
        - <b>Dado que</b> el usuario visualiza una alerta en el menú flotante, <b>Cuando</b> hace clic sobre la misma, <b>Entonces</b> el sistema marca la notificación como "leída".
      </td>
      <td>EP06</td>
    </tr>
    <tr>
      <td><b>US25</b></td>
      <td>Landing inicio: Visualización de Propuesta de Valor</td>
      <td><b>Como</b> visitante, <b>quiero</b> visualizar la propuesta de valor principal de AniTec en la página de inicio, <b>para</b> comprender rápidamente qué solución ofrece la plataforma.</td>
      <td>
        - <b>Dado que</b> el visitante accede al home de AniTec, <b>Cuando</b> la página carga correctamente, <b>Entonces</b> el sistema muestra el título "Gestiona tu Ganado con Tecnología Innovadora" y la descripción del valor agregado.<br><br>
        - <b>Dado que</b> el visitante observa la sección hero, <b>Cuando</b> hace scroll, <b>Entonces</b> el sistema despliega las métricas clave (+500 ganaderos, +120 veterinarios, +5,000 animals).
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US26</b></td>
      <td>Landing inicio: Exploración de Segmentos</td>
      <td><b>Como</b> visitante, <b>quiero</b> explorar los dos segmentos objetivo de AniTec en la página de inicio, <b>para</b> identificar si la plataforma es relevante para mi rol.</td>
      <td>
        - <b>Dado que</b> el visitante visualiza la sección "Diseñado para Ganaderos y Veterinarios", <b>Cuando</b> hace clic en "ganaderos", <b>Entonces</b> el sistema lo redirige a la página de ganaderos.<br><br>
        - <b>Dado que</b> el visitante hace clic en "veterinarios", <b>Cuando</b> selecciona el segmento, <b>Entonces</b> el sistema lo redirige a la página de veterinarios.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US27</b></td>
      <td>Landing inicio: Visualización de Métricas e Impacto</td>
      <td><b>Como</b> visitante, <b>quiero</b> observar las métricas de impacto de AniTec, <b>para</b> confiar en la efectividad de la plataforma.</td>
      <td>
        - <b>Dado que</b> el visitante accede a la sección de métricas, <b>Cuando</b> visualiza las estadísticas (85% menos información perdida, 2h ahorro diario), <b>Entonces</b> el sistema muestra los indicadores de manera clara y visual.<br><br>
        - <b>Dado que</b> el visitante verifica las cifras de ganaderos confían, <b>Cuando</b> observa "+500 ganaderos trust", <b>Entonces</b> el sistema presenta el número actualizado.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US28</b></td>
      <td>Landing inicio: Navegación entre Secciones</td>
      <td><b>Como</b> visitante, <b>quiero</b> navegar entre las diferentes secciones de la landing page, <b>para</b> explorar todo el contenido de manera fluida.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Pricing" en el menú, <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema realiza scroll hacia la sección de precios.<br><br>
        - <b>Dado que</b> el visitante hace scroll por la página, <b>Cuando</b>reach the features section, <b>Entonces</b> el sistema carga las animaciones de entrada de manera fluida.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US29</b></td>
      <td>Landing inicio: Acceso a Precios y Planes</td>
      <td><b>Como</b> visitante interesado, <b>quiero</b> revisar los planes y precios de AniTec, <b>para</b> evaluar cuál plan se ajusta a mis necesidades.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Pricing" o "Precios", <b>Cuando</b> navigation reaches the pricing section, <b>Entonces</b> el sistema muestra los tres planes (Basic $0, Professional $19, Enterprise $49).<br><br>
        - <b>Dado que</b> el visitante hace clic en "Elegir Plan" del plan Professional, <b>Cuando</b> selecciona el botón, <b>Entonces</b> el sistema abre el formulario de registro.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US30</b></td>
      <td>Landing nosotros: Información del Equipo</td>
      <td><b>Como</b> visitante, <b>quiero</b> conocer al equipo detrás de AniTec, <b>para</b> identificar a los creadores y su experiencia.</td>
      <td>
        - <b>Dado que</b> el visitante accede a la página "About Us", <b>Cuando</b> la página carga, <b>Entonces</b> el sistema muestra la información del equipo Titan y los perfiles de los integrantes.<br><br>
        - <b>Dado que</b> el visitante visualiza la misión y visión, <b>Cuando</b> hace scroll hacia la sección, <b>Entonces</b> el sistema despliega los valores corporativa de la startup.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US31</b></td>
      <td>Landing nosotros: Conocimiento del Proceso</td>
      <td><b>Como</b> visitante, <b>quiero</b> entender el proceso de desarrollo y tecnología utilizada, <b>para</b> evaluar la viabilidad técnica del proyecto.</td>
      <td>
        - <b>Dado que</b> el visitante explora la sección de proceso, <b>Cuando</b> hace scroll hacia "Nuestro Proceso", <b>Entonces</b> el sistema muestra el timeline con las fases del desarrollo.<br><br>
        - <b>Dado que</b> el visitante visualiza las tecnologías, <b>Cuando</b> observa el stack tecnológico (VueJS, .NET, SQL Server), <b>Entonces</b> el sistema presenta los logos y descripciones de cada tecnología.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US32</b></td>
      <td>Landing nosotros: Contacto y Redes Sociales</td>
      <td><b>Como</b> visitante, <b>quiero</b> encontrar información de contacto y redes sociales, <b>para</b> poder comunicar consultas o sugerencias.</td>
      <td>
        - <b>Dado que</b> el visitante Busca opciones de contacto, <b>Cuando</b> reach the footer o sección de contacto, <b>Entonces</b> el sistema muestra los enlaces a redes sociales (Facebook, Instagram, Twitter, LinkedIn, YouTube).<br><br>
        - <b>Dado que</b> el visitante hace clic en una red social, <b>Cuando</b> selecciona el icono, <b>Entonces</b> el sistema abre la página oficial de AniTec en una nueva pestaña.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US33</b></td>
      <td>Landing nosotros: Política de Privacidad</td>
      <td><b>Como</b> visitante, <b>quiero</b> revisar la política de privacidad y términos, <b>para</b> entender cómo se protegen mis datos.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Privacy Policy", <b>Cuando</b> selecciona el enlace en el footer, <b>Entonces</b> el sistema despliega el documento completo de privacidad.<br><br>
        - <b>Dado que</b> el visitante hace clic en "Terms of Service", <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema muestra los términos y condiciones del servicio.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US34</b></td>
      <td>Landing nosotros: Navegación General</td>
      <td><b>Como</b> visitante, <b>quiero</b> navegar fluidamente por todas las secciones de About Us, <b>para</b> explorar el contenido completo de la página.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Home" desde About Us, <b>Cuando</b> selecciona el enlace, <b>Entonces</b> el sistema redirige a la página principal.<br><br>
        - <b>Dado que</b> el visitante utiliza el menú de navegación, <b>Cuando</b> hace Scroll, <b>Entonces</b> el sistema mantiene el header fijo para facilitar la navegación.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US35</b></td>
      <td>Landing nosotros: Llamados a la Acción</td>
      <td><b>Como</b> visitante, <b>quiero</b> acceder a los CTAs de conversión en About Us, <b>para</b> iniciar mi registro o contactarme con el equipo.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Start Free Now", <b>Cuando</b> selecciona el botón CTA, <b>Entonces</b> el sistema redirige al flujo de autenticación.<br><br>
        - <b>Dado que</b> el visitante hace clic en "Contact", <b>Cuando</b> selecciona el botón de contacto, <b>Entonces</b> el sistema abre el formulario de contacto o muestra la información de email.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US36</b></td>
      <td>Landing ganaderos: Exploración de Contenido Específico</td>
      <td><b>Como</b> visitante del segmento de ganaderos, <b>quiero</b> explorar el contenido específico para ganaderos, <b>para</b> evaluar si AniTec se ajusta a mis necesidades.</td>
      <td>
        - <b>Dado que</b> el visitante accede a la página de ganaderos, <b>Cuando</b> la página carga, <b>Entonces</b> el sistema muestra el hero con "Digitize Your Livestock Today" y las características específicas para ganaderos.<br><br>
        - <b>Dado que</b> el visitante hace scroll, <b>Cuando</b> visualiza la sección de módulos, <b>Entonces</b> el sistema presenta los 4 módulos (Gestión de Animales, Control Sanitario, Reproducción, Gestión Económica).
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US37</b></td>
      <td>Landing ganaderos: Visualización de Testimonios</td>
      <td><b>Como</b> visitante del segmento de ganaderos, <b>quiero</b> leer testimonios de otros ganaderos, <b>para</b> evaluar la confianza en la plataforma.</td>
      <td>
        - <b>Dado que</b> el visitante alcanza la sección de testimonios, <b>Cuando</b> hace scroll hacia "What ganaderos Say", <b>Entonces</b> el sistema muestra las tarjetas de testimonios con fotos, nombres y países.<br><br>
        - <b>Dado que</b> el visitante observa las estrellas de calificación, <b>Cuando</b> visualiza cada testimonio, <b>Entonces</b> el sistema presenta 5 estrellas para indicar satisfacción.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US38</b></td>
      <td>Landing ganaderos: Comparación de Métodos</td>
      <td><b>Como</b> visitante del segmento de ganaderos, <b>quiero</b> visualizar la comparación entre el método tradicional y AniTec, <b>para</b> entender los beneficios de digitalizar.</td>
      <td>
        - <b>Dado que</b> el visitante llega a la sección "Traditional vs AniTec", <b>Cuando</b> visualiza las tarjetas comparativas, <b>Entonces</b> el sistema muestra las ventajas del método tradicional vs AniTec (8 beneficios contrastados).<br><br>
        - <b>Dado que</b> el visitante observa las estadísticas de impacto, <b>Cuando</b> hace scroll hacia las métricas finales, <b>Entonces</b> el sistema presenta: 85% reducción de tiempo, 100% trazabilidad, 30% aumento en productividad.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US39</b></td>
      <td>Landing ganaderos: Llamado a la Acción Final</td>
      <td><b>Como</b> visitante del segmento de ganaderos, <b>quiero</b> acceder al CTA final de la página, <b>para</b> iniciar mi registro o prueba gratuita.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Start Free Now", <b>Cuando</b> selecciona el botón CTA, <b>Entonces</b> el sistema redirige a la página de precios o formulario de registro.<br><br>
        - <b>Dado que</b> el visitante hace clic en "View How It Works", <b>Cuando</b> selecciona el botón secundario, <b>Entonces</b> el sistema abre el contenido explicativo o video demostrativo.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US40</b></td>
      <td>Landing ganaderos: Información de Precios</td>
      <td><b>Como</b> visitante del segmento de ganaderos, <b>quiero</b> acceder a la información de precios desde la página, <b>para</b> evaluar los planes disponibles.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Pricing" desde el menú, <b>Cuando</b> selecciona el enlace, <b>Entonces</b> el sistema navega a la sección de precios en la página principal.<br><br>
        - <b>Dado que</b> el visitante hace clic en el botón de precios desde el CTA, <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema muestra los planes con precios actualizados.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US41</b></td>
      <td>Landing ganaderos: Navegación entre páginas</td>
      <td><b>Como</b> visitante del segmento de ganaderos, <b>quiero</b> navegar a otras páginas desde la página de ganaderos, <b>para</b> explorar contenido adicional.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Home" desde el menú, <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema redirige a la página principal.<br><br>
        - <b>Dado que</b> el visitante hace clic en "veterinarios" desde el menú, <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema navega a la página de veterinarios para explorar el otro segmento.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US42</b></td>
      <td>Landing veterinarios: Contenido Específico del Segmento</td>
      <td><b>Como</b> visitante del segmento de veterinarios, <b>quiero</b> explorar el contenido diseñado para veterinarios, <b>para</b> evaluar si AniTec se adapta a mi práctica profesional.</td>
      <td>
        - <b>Dado que</b> el visitante accede a la página de veterinarios, <b>Cuando</b> la página carga, <b>Entonces</b> el sistema muestra el hero con "Optimize Your Veterinary Practice" y badge "Herramienta Profesional #1".<br><br>
        - <b>Dado que</b> el visitante hace scroll, <b>Cuando</b> se ubica en la sección, <b>Entonces</b> el sistema despliega las 6 funcionalidades clave (Búsqueda de Pacientes, Registro de Visitas, Recetas Digitales, Seguimiento, Compartir con Ganadero, Reportes Profesionales).
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US43</b></td>
      <td>Landing veterinarios: Casos de Uso</td>
      <td><b>Como</b> visitante del segmento de veterinarios, <b>quiero</b> leer los casos de uso específicos de la herramienta, <b>para</b> comprender cómo AniTec facilita mi trabajo diario.</td>
      <td>
        - <b>Dado que</b> el visitante se ubica en la sección de "Casos de Uso", <b>Cuando</b> hace scroll hacia la sección, <b>Entonces</b> el sistema muestra 4 casos (Visita de Campo, Emergencia Ganadera, Seguimiento de Tratamiento, Coordinación con Colegas).<br><br>
        - <b>Dado que</b> el visitante visualiza las imágenes de cada caso, <b>Cuando</b> las observa, <b>Entonces</b> el sistema presenta una imagen representativa para cada escenario con overlay descriptivo.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US44</b></td>
      <td>Landing veterinarios: Testimonios del Segmento</td>
      <td><b>Como</b> visitante del segmento de veterinarios, <b>quiero</b> leer testimonios de otros veterinarios, <b>para</b> evaluar la confiabilidad de la plataforma.</td>
      <td>
        - <b>Dado que</b> el visitante se ubica en la sección de testimonios, <b>Cuando</b> hace scroll hacia "What veterinarios Say", <b>Entonces</b> el sistema muestra las tarjetas de testimonios con fotos de veterinarios, nombres, países y calificaciones.<br><br>
        - <b>Dado que</b> el testimonio incluye la especialidad del veterinario, <b>Cuando</b> lo visualiza, <b>Entonces</b> el sistema presenta información como "Médico Veterinario, Perú" o "Veterinaria Ganadera, México".
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US45</b></td>
      <td>Landing veterinarios: Llamado a la Acción</td>
      <td><b>Como</b> visitante del segmento de veterinarios, <b>quiero</b> acceder a los CTAs para iniciar mi uso de AniTec, <b>para</b> comenzar a utilizar la plataforma en mi práctica profesional.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Start Free Now", <b>Cuando</b> selecciona el botón CTA principal, <b>Entonces</b> el sistema redirige al formulario de registro o flujo de autenticación.<br><br>
        - <b>Dado que</b> el visitante hace clic en "View How It Works", <b>Cuando</b> selecciona el botón secundario, <b>Entonces</b> el sistema abre el contenido demostrativo o video explicativo de la plataforma.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US46</b></td>
      <td>Landing veterinarios: Acceso a Precios</td>
      <td><b>Como</b> visitante del segmento de veterinarios, <b>quiero</b> revisar los planes y precios desde la página de veterinarios, <b>para</b> evaluar la inversión necesaria.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Pricing" desde el menú, <b>Cuando</b> selecciona el enlace, <b>Entonces</b> el sistema navega a la sección de precios en index.html.<br><br>
        - <b>Dado que</b> el visitante hace clic en el botón de precios desde el CTA final, <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema muestra los planes con precios para su comparación.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
      <td><b>US47</b></td>
      <td>Landing veterinarios: Navegación Entre páginas</td>
      <td><b>Como</b> visitante del segmento de veterinarios, <b>quiero</b> navegar a otras páginas desde la página de veterinarios, <b>para</b> explorar el contenido completo del sitio.</td>
      <td>
        - <b>Dado que</b> el visitante hace clic en "Home", <b>Cuando</b> selecciona la opción, <b>Entonces</b> el sistema redirige a la página principal.<br><br>
        - <b>Dado que</b> el visitante hace clic en "ganaderos" o "About Us", <b>Cuando</b> selecciona cualquier enlace del menú, <b>Entonces</b> el sistema navega a la página correspondiente sin recargar la aplicación completa.
      </td>
      <td>EP07</td>
    </tr>
    <tr>
  <td><b>TS01</b></td>
  <td>Implementación del Esquema de Base de Datos Relacional</td>
  <td><b>Como</b> desarrollador backend, <b>quiero</b> implementar el esquema de base de datos en SQL Server basado en el diseño del Capítulo 4.8, <b>para</b> garantizar la persistencia de datos de animales, usuarios y registros médicos.</td>
  <td>
    <b>E1: Persistencia de registros.</b> <b>Dado que</b> envío una entidad "Animal" válida (raza, edad, sexo), <b>Cuando</b> se ejecuta el guardado en la base de datos, <b>Entonces</b> el registro se almacena con un ID único y estado "Activo".<br><br>
    <b>E2: Integridad referencial.</b> <b>Dado que</b> intento eliminar un "Animal" que tiene "Visitas Médicas" asociadas, <b>Cuando</b> se ejecuta la transacción, <b>Entonces</b> el sistema impide el borrado físico para mantener la trazabilidad histórica.
  </td>
  <td>EP02</td>
</tr>

<tr>
  <td><b>TS02</b></td>
  <td>Configuración de la Solución .NET bajo patrón DDD</td>
  <td><b>Como</b> arquitecto de software, <b>quiero</b> estructurar la solución .NET siguiendo los Bounded Contexts identificados (Authentication, Livestock, Sanitary, Financial, Reporting), <b>para</b> asegurar un código mantenible y escalable.</td>
  <td>
    <b>E1: Separación de capas.</b> <b>Dado que</b> defino una entidad en la capa de "Domain", <b>Cuando</b> intento acceder directamente a clases de "Infrastructure", <b>Entonces</b> el compilador debe restringir la referencia para respetar el principio de inversión de dependencias.<br><br>
    <b>E2: Inyección de dependencias.</b> <b>Dado que</b> el sistema arranca, <b>Cuando</b> se solicita un servicio de aplicación, <b>Entonces</b> el contenedor de dependencias debe instanciar correctamente sus repositorios correspondientes.
  </td>
  <td>EP02</td>
</tr>

<tr>
  <td><b>TS03</b></td>
  <td>Implementación de Autenticación mediante JWT</td>
  <td><b>Como</b> desarrollador backend, <b>quiero</b> configurar un sistema de tokens JWT (JSON Web Tokens), <b>para</b> permitir que ganaderos y veterinarios accedan de forma segura a sus respectivos módulos.</td>
  <td>
    <b>E1: Generación de token.</b> <b>Dado que</b> el usuario provee credenciales válidas, <b>Cuando</b> hace POST a /api/auth/login, <b>Entonces</b> el sistema retorna un token JWT firmado con el rol del usuario.<br><br>
    <b>E2: Acceso restringido.</b> <b>Dado que</b> un usuario no está autenticado, <b>Cuando</b> intenta consultar la lista de animales, <b>Entonces</b> el sistema responde con un código de estado 401 Unauthorized.
  </td>
  <td>EP01</td>
</tr>

<tr>
  <td><b>TS04</b></td>
  <td>Desarrollo del Sistema de Diseño en VueJS</td>
  <td><b>Como</b> desarrollador frontend, <b>quiero</b> implementar una librería de componentes reutilizables (Botones, Inputs, Cards) basada en la "Web Style Guide", <b>para</b> estandarizar la interfaz de la aplicación.</td>
  <td>
    <b>E1: Consistencia de color.</b> <b>Dado que</b> utilizo el componente "AtButton" con propiedad "primary", <b>Cuando</b> se renderiza en el navegador, <b>Entonces</b> el color de fondo debe ser #925930 según la guía de estilos.<br><br>
    <b>E2: Adaptabilidad.</b> <b>Dado que</b> visualizo un componente "Card" en una pantalla móvil (360px), <b>Cuando</b> se carga la página, <b>Entonces</b> el componente debe ajustar su ancho al 100% del contenedor.
  </td>
  <td>EP07</td>
</tr>

<tr>
  <td><b>TS05</b></td>
  <td>Motor de Notificaciones y Alertas Sanitarias</td>
  <td><b>Como</b> desarrollador backend, <b>quiero</b> crear un servicio que evalúe las fechas de vacunación en el historial médico, <b>para</b> generar alertas automáticas en el dashboard del ganadero.</td>
  <td>
    <b>E1: Detección de proximidad.</b> <b>Dado que</b> un animal tiene una vacuna programada en 48 horas, <b>Cuando</b> el proceso de verificación se ejecuta, <b>Entonces</b> se crea un registro en la tabla de "Alertas" con severidad "Media".<br><br>
    <b>E2: Visualización global.</b> <b>Dado que</b> existen nuevas alertas sin leer, <b>Cuando</b> el usuario inicia sesión, <b>Entonces</b> el icono de campana en el frontend debe mostrar un indicador visual numérico.
  </td>
  <td>EP06</td>
</tr>

<tr>
  <td><b>TS06</b></td>
  <td>Manejo de Estado Global y Consumo de API (Pinia/Axios)</td>
  <td><b>Como</b> desarrollador frontend, <b>quiero</b> configurar Pinia para el manejo de estado y Axios para las peticiones HTTP, <b>para</b> gestionar la información del hato de forma eficiente en el cliente.</td>
  <td>
    <b>E1: Caché de datos.</b> <b>Dado que</b> el usuario navega entre la lista y el detalle de un animal, <b>Cuando</b> los datos ya están en el Store de Pinia, <b>Entonces</b> el sistema no debe realizar peticiones HTTP duplicadas al servidor.<br><br>
    <b>E2: Manejo de errores.</b> <b>Dado que</b> el servidor está caído, <b>Cuando</b> el cliente realiza una petición, <b>Entonces</b> el interceptor de Axios debe capturar el error y mostrar un mensaje global de "Servicio no disponible".
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td><b>TS07</b></td>
  <td>Implementación de Dashboard con Gráficos Dinámicos</td>
  <td><b>Como</b> desarrollador frontend, <b>quiero</b> integrar una librería de visualización de datos (como Chart.js o ApexCharts) en el dashboard, <b>para</b> permitir que el usuario visualice indicadores clave de rendimiento (KPIs) de forma interactiva.</td>
  <td>
    <b>E1: Rendering interactivo.</b> <b>Dado que</b> se cargan los datos demográficos del hato, <b>Cuando</b> el usuario visualiza el dashboard, <b>Entonces</b> el sistema renderiza un gráfico circular con la distribución por especie y un gráfico de barras por sexo según los requerimientos de la US21.<br><br>
    <b>E2: Filtro temporal dinámico.</b> <b>Dado que</b> el usuario cambia el rango de fechas en el selector del reporte poblacional, <b>Cuando</b> se actualiza el estado de la vista, <b>Entonces</b> el gráfico de líneas de tendencias se redibuja automáticamente reflejando la evolución del ganado en ese periodo (Soporte a US23).
  </td>
  <td>EP06</td>
</tr>
<tr>
  <td><b>TS08</b></td>
  <td>Integración con Servicio de Almacenamiento de Objetos (Cloud Storage)</td>
  <td><b>Como</b> desarrollador backend, <b>quiero</b> integrar un servicio de almacenamiento (como Azure Blob Storage o AWS S3), <b>para</b> permitir que los ganaderos suban fotos de sus animales y los veterinarios adjunten informes médicos en PDF.</td>
  <td>
    <b>E1: Carga y persistencia.</b> <b>Dado que</b> el usuario sube una imagen de un animal (raza_ejemplo.jpg), <b>Cuando</b> se procesa la solicitud, <b>Entonces</b> el sistema almacena el archivo en la nube y guarda la URL pública en la tabla "Archivo" de la base de datos.<br><br>
    <b>E2: Validación de formato.</b> <b>Dado que</b> el archivo subido no es una imagen o PDF (ej. archivo .exe), <b>Cuando</b> se intenta subir, <b>Entonces</b> el sistema rechaza la petición con un error 415 Unsupported Media Type.
  </td>
  <td>EP02, EP04</td>
</tr>

<tr>
  <td><b>TS09</b></td>
  <td>Implementación de Sincronización Offline mediante IndexedDB</td>
  <td><b>Como</b> desarrollador frontend, <b>quiero</b> implementar una estrategia de persistencia local en el navegador, <b>para</b> que el ganadero pueda registrar datos en el campo incluso si pierde la conexión a internet temporalmente.</td>
  <td>
    <b>E1: Guardado local en desconexión.</b> <b>Dado que</b> el usuario no tiene señal de internet, <b>Cuando</b> registra un nuevo animal, <b>Entonces</b> el sistema almacena los datos en IndexedDB y muestra un estado de "Pendiente de sincronización".<br><br>
    <b>E2: Sincronización automática.</b> <b>Dado que</b> el dispositivo recupera la conexión, <b>Cuando</b> el sistema detecta red, <b>Entonces</b> envía automáticamente los registros locales al servidor y actualiza el estado en la base de datos central.
  </td>
  <td>EP02</td>
</tr>

<tr>
  <td><b>TS10</b></td>
  <td>Configuración de Documentación Automática con Swagger/OpenAPI</td>
  <td><b>Como</b> desarrollador backend, <b>quiero</b> configurar el middleware de Swagger en la Web API de .NET, <b>para</b> que el equipo frontend tenga una referencia clara y probada de todos los endpoints disponibles.</td>
  <td>
    <b>E1: Generación de esquema.</b> <b>Dado que</b> la API está en ejecución, <b>Cuando</b> se accede a la ruta /swagger, <b>Entonces</b> el sistema muestra una interfaz interactiva con todos los métodos HTTP, DTOs y parámetros de seguridad JWT definidos.<br><br>
    <b>E2: Pruebas funcionales.</b> <b>Dado que</b> el desarrollador usa la interfaz de Swagger, <b>Cuando</b> envía una petición de prueba con un token válido, <b>Entonces</b> la API responde con los datos reales de la base de datos.
  </td>
  <td>EP01, EP02</td>
</tr>

<tr>
  <td><b>TS11</b></td>
  <td>Configuración de Pipeline de CI/CD (GitHub Actions)</td>
  <td><b>Como</b> líder técnico, <b>quiero</b> configurar flujos de trabajo automatizados, <b>para</b> que cada cambio aprobado en la rama "main" se despliegue automáticamente en los entornos de producción sin intervención manual.</td>
  <td>
    <b>E1: Integración Continua.</b> <b>Dado que</b> se realiza un Pull Request a la rama "main", <b>Cuando</b> el pipeline se activa, <b>Entonces</b> el sistema debe ejecutar las pruebas unitarias y verificar que el código compila correctamente.<br><br>
    <b>E2: Despliegue Continuo.</b> <b>Dado que</b> las pruebas pasan satisfactoriamente, <b>Cuando</b> se hace el merge, <b>Entonces</b> GitHub Actions debe desplegar automáticamente la Landing Page en GitHub Pages y los servicios en la nube (Azure).
  </td>
  <td>EP07</td>
</tr>

<tr>
  <td><b>TS12</b></td>
  <td>Implementación de Logs de Auditoría para Registros Médicos</td>
  <td><b>Como</b> desarrollador de seguridad, <b>quiero</b> implementar un sistema de trazabilidad de cambios (Logging), <b>para</b> saber quién, cuándo y qué se modificó en el historial clínico de un animal.</td>
  <td>
    <b>E1: Registro de modificación.</b> <b>Dado que</b> un veterinario edita un tratamiento médico, <b>Cuando</b> se guarda el cambio, <b>Entonces</b> el sistema guarda automáticamente en una tabla de auditoría el valor anterior, el valor nuevo y el ID del usuario responsable.<br><br>
    <b>E2: Integridad del log.</b> <b>Dado que</b> se genera un log de auditoría, <b>Cuando</b> se registra en el sistema, <b>Entonces</b> este registro debe ser de "solo lectura" para evitar alteraciones en el historial de seguridad.
  </td>
  <td>EP04</td>
</tr>
  </tbody>
</table>
