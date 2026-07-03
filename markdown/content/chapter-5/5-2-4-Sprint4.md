<br>
<br>

<div align="center">
    <img src="../../assets/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.4. Sprint 4.

En el Sprint 4, el equipo de AniTec se enfoca en fortalecer la seguridad, autenticacion y monetizacion de la aplicacion web. A partir del backend real implementado en el Sprint 3, este Sprint busca evolucionar el IAM basico hacia un flujo mas completo, proteger los endpoints principales de la API y reemplazar el flujo de pagos de prueba por una integracion con Stripe para el modulo de suscripciones.

El alcance del Sprint incluye trabajo coordinado en backend y frontend. En backend, se planifica mejorar el bounded context de IAM, aplicar proteccion con JWT en los controladores, validar roles de usuario y preparar los servicios de suscripcion para trabajar con Stripe. En frontend, se planifica adaptar el inicio de sesion, la gestion de sesion, las rutas protegidas, el consumo autenticado de endpoints y la experiencia de pago desde la vista de planes. De esta manera, AniTec avanza hacia una version mas cercana al producto final, donde ganaderos y veterinarios pueden acceder segun su rol, trabajar con informacion protegida y gestionar suscripciones mediante una pasarela de pago.

### 5.2.4.1. Sprint Planning 4.

El Sprint Planning del Sprint 4 tuvo como objetivo definir el trabajo necesario para cerrar brechas de seguridad y monetizacion identificadas luego de la integracion frontend-backend del Sprint 3. El equipo determino que el sistema ya contaba con servicios REST, persistencia en MySQL y consumo desde el frontend, pero aun necesitaba un IAM mas completo, proteccion consistente de endpoints y una integracion realista con una pasarela de pago.

Durante la planificacion se priorizaron tres frentes principales: integracion de Stripe para suscripciones, fortalecimiento del IAM en backend y frontend, y proteccion de endpoints mediante autenticacion y autorizacion. Estos frentes fueron seleccionados porque impactan directamente en la confianza de los usuarios, el control de acceso por rol y el modelo de negocio basado en planes de suscripcion.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Sprint #</b></td>
            <td>Sprint 4</td>
        </tr>
        <tr>
            <td colspan="2"><b>Sprint Planning Background</b></td>
        </tr>
        <tr>
            <td>Date</td>
            <td>2026-07-03</td>
        </tr>
        <tr>
            <td>Time</td>
            <td>10:00 AM</td>
        </tr>
        <tr>
            <td>Location</td>
            <td>Reunion virtual via Discord - Canal #sprint-planning</td>
        </tr>
        <tr>
            <td>Prepared by</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
        </tr>
        <tr>
            <td>Attendees (to planning meeting)</td>
            <td>Jorge Ayala, Bruno Huaman, Josep Melgarejo, Nadhim Raymundo, Luciana Sanchez</td>
        </tr>
        <tr>
            <td>Sprint n - 1 Review Summary</td>
            <td>El Sprint 3 permitio implementar el backend real de AniTec con ASP.NET Core, Entity Framework Core y MySQL, conectar progresivamente el frontend con la API real, incorporar los modulos de dispositivos IoT y suscripciones, y actualizar la landing page con los videos About the Team y About the Product.</td>
        </tr>
        <tr>
            <td>Sprint n - 1 Retrospective Summary</td>
            <td>El equipo identifico que la API ya permitia persistir y consultar informacion real, pero el IAM seguia siendo basico, varios endpoints necesitaban proteccion uniforme y el flujo de pagos aun funcionaba como simulacion. Por ello, se priorizo mejorar seguridad, control de acceso y suscripciones en el Sprint 4.</td>
        </tr>
        <tr>
            <td colspan="2"><b>Sprint Goal / User Stories</b></td>
        </tr>
        <tr>
            <td>Sprint 4 Goal</td>
            <td>Nuestro enfoque esta en ofrecer una experiencia segura de acceso y suscripcion para ganaderos y veterinarios dentro de AniTec. Creemos que esto entrega mayor confianza y control sobre la informacion del sistema, permitiendo que cada usuario acceda a funciones segun su rol y pueda gestionar su plan mediante una pasarela de pago integrada. Esto se confirmara cuando los usuarios puedan iniciar sesion con un IAM mas completo, navegar por rutas protegidas, consumir endpoints autenticados, realizar el flujo de pago con Stripe desde el frontend y mantener protegidas las operaciones principales del backend mediante JWT y roles.</td>
        </tr>
        <tr>
            <td>Sprint 4 Velocity</td>
            <td>El equipo estima un velocity de 48 Story Points, considerando la integracion de Stripe, mejora del IAM en backend, adaptacion del IAM en frontend, proteccion de endpoints, ajustes de consumo autenticado y validacion funcional del flujo por roles.</td>
        </tr>
        <tr>
            <td>Sum of Story Points</td>
            <td>Total: 48 SP - Distribuidos en 12 SP para integracion de Stripe, 12 SP para mejora del IAM backend, 8 SP para IAM frontend y rutas protegidas, 8 SP para proteccion de endpoints con JWT y roles, 5 SP para ajustes de consumo autenticado desde el frontend, y 3 SP para documentacion, pruebas y validacion del flujo completo.</td>
        </tr>
    </tbody>
</table>

El Sprint Planning Meeting del Sprint 4 duro aproximadamente 2 horas. El equipo reviso los modulos de IAM y Subscriptions implementados previamente, identifico los endpoints que requieren proteccion y acordo mantener las tecnologias y patrones ya utilizados en el proyecto: ASP.NET Core, Entity Framework Core, MySQL, JWT, Vue, Pinia, Vue Router, Axios, stores por bounded context y servicios API simples. La integracion con Stripe se planifica como una extension del bounded context de Subscriptions, sin modificar la arquitectura general definida en los Sprints anteriores.

**Technical Stories incluidas en el Sprint 4:**

| ID     | Technical Story                                                       | Prioridad   | Story Points |
| ------ | --------------------------------------------------------------------- | ----------- | ------------ |
| TS-016 | Integracion backend con Stripe para suscripciones                     | Must Have   | 8            |
| TS-017 | Integracion frontend del flujo de pago con Stripe                     | Must Have   | 4            |
| TS-018 | Mejora del IAM backend para autenticacion y autorizacion por rol       | Must Have   | 12           |
| TS-019 | Proteccion de endpoints principales mediante JWT y roles              | Must Have   | 8            |
| TS-020 | Adaptacion del IAM frontend para sesion, token y rutas protegidas     | Must Have   | 8            |
| TS-021 | Consumo autenticado de endpoints desde stores y servicios frontend    | Should Have | 5            |
| TS-022 | Documentacion y validacion del flujo de seguridad y suscripcion       | Should Have | 3            |

La seleccion de estas Technical Stories responde a la necesidad de consolidar AniTec como una aplicacion web con acceso controlado y un modelo de suscripcion funcional. El equipo priorizo primero IAM y proteccion de endpoints, porque ambos permiten resguardar los datos de ganaderos y veterinarios. Luego se planifico la integracion con Stripe para mejorar el modulo de planes y acercarlo al modelo de negocio planteado en el proyecto.

**Distribucion de Trabajo por Componente:**

- **Backend ASP.NET Core:** 28 Story Points - Enfocados en mejorar IAM, proteger controladores con JWT y roles, configurar servicios de Stripe, ajustar suscripciones y validar endpoints protegidos.
- **Frontend Web Application:** 17 Story Points - Enfocados en adaptar login, sesion, rutas protegidas, consumo autenticado con token y flujo de pago desde la vista de planes.
- **Documentacion y Validacion:** 3 Story Points - Enfocados en documentar el alcance del Sprint, evidenciar endpoints protegidos, flujo de Stripe y pruebas funcionales por rol.

### 5.2.4.2. Aspects Leaders and Collaborators.

En esta seccion el equipo elabora el artefacto Leadership-and-Collaboration Matrix (LACX) para el Sprint 4, indicando por cada aspecto dentro del alcance del Sprint quien es el lider y quienes colaboran. La matriz permite organizar responsabilidades segun los frentes principales de trabajo: Stripe, IAM backend, IAM frontend, endpoints protegidos, consumo autenticado y documentacion.

Para este Sprint, los aspectos se enfocan en seguridad y suscripciones, ya que el sistema necesita controlar el acceso a la informacion y permitir que el modelo de planes funcione con una pasarela de pago. La distribucion se realiza manteniendo relacion con los bounded contexts y modulos trabajados en los Sprints anteriores.

**Aspectos del Sprint 4:**

1. **Backend - Stripe y Subscriptions:** Configuracion de Stripe, creacion de sesiones de pago, actualizacion del flujo de suscripciones y registro del resultado de pagos.
2. **Backend - IAM Completo:** Mejora de autenticacion, manejo de usuarios, roles, generacion de tokens y validacion de credenciales.
3. **Backend - Endpoints Protegidos:** Aplicacion de JWT y roles en controladores para limitar el acceso a operaciones segun usuario autenticado.
4. **Frontend - IAM y Rutas Protegidas:** Adaptacion del inicio de sesion, almacenamiento de token, cierre de sesion, guards de rutas y redireccion por rol.
5. **Frontend - Stripe y Planes:** Integracion del flujo de pago desde la vista de suscripciones, comunicacion con endpoints de Stripe y manejo de estados de pago.
6. **Frontend - Consumo Autenticado:** Ajuste de servicios API, stores y peticiones Axios para enviar token y manejar errores de autenticacion.
7. **Documentacion y Validacion:** Registro de decisiones, evidencias del Sprint, pruebas del flujo por rol, endpoints protegidos y flujo de pago.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Team Member (Last Name, First Name)</b></td>
            <td><b>GitHub Username</b></td>
            <td><b>Stripe & Subscriptions Backend / L or C</b></td>
            <td><b>IAM Backend / L or C</b></td>
            <td><b>Protected Endpoints / L or C</b></td>
            <td><b>IAM Frontend / L or C</b></td>
            <td><b>Stripe Frontend / L or C</b></td>
            <td><b>Authenticated API Consumption / L or C</b></td>
            <td><b>Documentation & Validation / L or C</b></td>
        </tr>
        <tr>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>jorgeayaladev</td>
            <td>C</td>
            <td>L</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Huaman Gallardo, Bruno Aldair</td>
            <td>BrunoHG10</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
            <td>L</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Melga1502</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
        </tr>
        <tr>
            <td>Raymundo Villarroel, Nadhim Abigail</td>
            <td>AbigailRV</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Sanchez Silva, Luciana Celeste</td>
            <td>Luccsss</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
        </tr>
    </tbody>
</table>

**Distribucion detallada de responsabilidades:**

- **Ayala Fernandez, Jorge Brayan (IAM Backend & Protected Endpoints Lead):** Responsable de fortalecer el IAM en backend, validar roles de usuario, aplicar proteccion con JWT en endpoints principales y revisar que las operaciones criticas no queden expuestas sin autenticacion.

- **Huaman Gallardo, Bruno Aldair (Stripe Frontend & Authenticated API Consumption Lead):** Responsable de adaptar la vista de planes para iniciar el flujo de pago, ajustar peticiones autenticadas desde el frontend y verificar que los stores consuman endpoints protegidos enviando el token correspondiente.

- **Melgarejo Quiroz, Josep Eliu (Stripe Backend, IAM Frontend & Documentation Lead):** Responsable de integrar el servicio backend de Stripe dentro del bounded context de Subscriptions, adaptar la experiencia de sesion en el frontend y documentar el avance del Sprint.

- **Raymundo Villarroel, Nadhim Abigail (Validation Collaborator):** Colabora en la validacion de flujos por rol, revision de errores de autenticacion, pruebas funcionales de acceso como ganadero y veterinario, y verificacion de que las vistas principales respondan correctamente con endpoints protegidos.

- **Sanchez Silva, Luciana Celeste (Protected Endpoints Collaborator):** Responsable de apoyar la proteccion de endpoints relacionados con clientes veterinarios, flujo por rol y validacion de acceso a informacion correspondiente a ganaderos y veterinarios.
