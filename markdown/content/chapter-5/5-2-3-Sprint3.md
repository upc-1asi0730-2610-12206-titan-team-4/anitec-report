<br>
<br>

<div align="center">
    <img src="../../assets/chapter-5/capitulo-5.png" alt="Capitulo 5" />
</div>

<br>
<br>

# 5.2. Landing Page, Services & Applications Implementation.

## 5.2.3. Sprint 3.

En el Sprint 3, el equipo de AniTec se enfocó en la construcción del backend real de la aplicación web, reemplazando la dependencia inicial de servicios mock por una API REST desarrollada con ASP.NET Core, Entity Framework Core y MySQL. El objetivo principal fue implementar la capa de servicios necesaria para almacenar, consultar y procesar los datos de la plataforma de forma persistente, manteniendo una estructura similar a la trabajada en clase con el proyecto `learning-center-platform-master`.

Durante este Sprint se desarrolló el proyecto `anitec-platform-main`, organizado mediante bounded contexts y siguiendo una arquitectura por capas. El backend implementa autenticación, gestión de usuarios, perfiles, fincas, animales, eventos sanitarios, actividades, registros financieros, reportes, clientes veterinarios, dispositivos, métricas de dispositivos y suscripciones. También se configuraron migraciones automáticas con Entity Framework Core para MySQL, documentación con Swagger y datos iniciales para facilitar las pruebas de integración con el frontend.

### 5.2.3.1. Sprint Planning 3.

El Sprint Planning del Sprint 3 tuvo como objetivo definir el alcance para la implementación del backend de AniTec. A partir de lo avanzado en el Sprint 2, donde el frontend consumía datos desde `my-json-server`, el equipo identificó la necesidad de desarrollar una API propia que permita manejar reglas de negocio, persistencia real y una integración más cercana al funcionamiento final del producto.

Se decidió construir el backend utilizando ASP.NET Core y Entity Framework Core, ya que estas tecnologías fueron trabajadas durante las clases del curso. Además, se eligió MySQL como sistema gestor de base de datos porque fue la tecnología indicada para el desarrollo de backend en esta etapa del curso.

Durante la planificación se definieron los bounded contexts principales, las responsabilidades de cada integrante y las funcionalidades mínimas necesarias para que el backend pueda reemplazar progresivamente al servicio mock utilizado en el Sprint 2.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Sprint #</b></td>
            <td>Sprint 3</td>
        </tr>
        <tr>
            <td colspan="2"><b>Sprint Planning Background</b></td>
        </tr>
        <tr>
            <td>Date</td>
            <td>2026-06-05</td>
        </tr>
        <tr>
            <td>Time</td>
            <td>10:00 AM</td>
        </tr>
        <tr>
            <td>Location</td>
            <td>Reunión virtual via Discord - Canal #sprint-planning</td>
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
            <td>El Sprint 2 permitió construir la aplicación web frontend de AniTec con Vue 3, PrimeVue, Pinia, Vue Router, módulos por bounded context y consumo de datos mediante una API REST mock con my-json-server.</td>
        </tr>
        <tr>
            <td>Sprint n - 1 Retrospective Summary</td>
            <td>El equipo identificó que el uso de datos mock permitió avanzar rápidamente en el frontend, pero limitaba la validación de reglas de negocio, persistencia real, autenticación segura y operaciones entre módulos. Por ello, se priorizó el desarrollo del backend en el Sprint 3.</td>
        </tr>
        <tr>
            <td colspan="2"><b>Sprint Goal / User Stories</b></td>
        </tr>
        <tr>
            <td>Sprint 3 Goal</td>
            <td>Nuestro enfoque está en implementar el backend real de AniTec con ASP.NET Core, Entity Framework Core y MySQL, manteniendo una arquitectura por bounded contexts similar a la desarrollada en clase. Creemos que esto permitirá reemplazar progresivamente la API mock y dar soporte real a la autenticación, gestión ganadera, sanidad, finanzas, analíticas, dispositivos y suscripciones. Esto se confirmará cuando la API pueda compilar, ejecutar migraciones, exponer endpoints REST documentados y responder correctamente a las consultas principales del frontend.</td>
        </tr>
        <tr>
            <td>Sprint 3 Velocity</td>
            <td>El equipo estimó un velocity de 45 Story Points, enfocado en la construcción del backend, configuración de persistencia, implementación de bounded contexts, endpoints REST y documentación de servicios.</td>
        </tr>
        <tr>
            <td>Sprint of Story Points</td>
            <td>Total: 45 SP - Distribuidos en 5 SP para configuración base, 8 SP para persistencia con MySQL, 8 SP para IAM con JWT, 8 SP para bounded contexts de gestión ganadera, 6 SP para analíticas y clientes veterinarios, 6 SP para dispositivos, métricas y suscripciones, y 4 SP para documentación y pruebas con Swagger.</td>
        </tr>
    </tbody>
</table>

El Sprint Planning Meeting del Sprint 3 duró aproximadamente 2.5 horas. El equipo revisó la estructura del backend usado como referencia en clase, definió los bounded contexts necesarios para AniTec y acordó mantener patrones conocidos como Repository, Unit of Work, Command Services, Query Services, REST Resources y Entity Framework Core para la persistencia.

**Technical Stories incluidas en el Sprint 3:**

| ID     | Technical Story                                                     | Prioridad   | Story Points |
| ------ | ------------------------------------------------------------------- | ----------- | ------------ |
| TS-005 | Configuración inicial del backend con ASP.NET Core                  | Must Have   | 5            |
| TS-006 | Persistencia con Entity Framework Core y MySQL                      | Must Have   | 8            |
| TS-007 | Autenticación backend con JWT y BCrypt                              | Must Have   | 8            |
| TS-008 | Implementación de bounded contexts de gestión ganadera              | Must Have   | 8            |
| TS-009 | Servicios backend para analíticas y clientes veterinarios           | Should Have | 6            |
| TS-010 | Servicios backend para dispositivos, métricas y suscripciones       | Should Have | 6            |
| TS-011 | Documentación y pruebas de API con Swagger                          | Should Have | 4            |

La selección de estas Technical Stories responde a la necesidad de construir la base de datos y la lógica principal del sistema. El equipo priorizó primero la configuración del backend, IAM y persistencia, ya que estos elementos sirven como base para el consumo posterior desde el frontend.

**Distribución de Trabajo por Componente:**

- **Backend ASP.NET Core:** 45 Story Points - Enfocados en la creación del proyecto `anitec-platform-main`, organización por bounded contexts, configuración de MySQL, migraciones, endpoints REST, autenticación JWT, seed de datos y documentación Swagger.

### 5.2.3.2. Aspects Leaders and Collaborators.

En esta sección el equipo elabora el artefacto Leadership-and-Collaboration Matrix (LACX) para el Sprint 3, indicando por cada aspecto dentro del alcance del Sprint quién es el líder y quiénes son colaboradores.

Para este tercer Sprint, los aspectos están centrados en el desarrollo del backend de AniTec, abarcando desde la configuración inicial del proyecto ASP.NET Core hasta la implementación de bounded contexts, persistencia con MySQL, migraciones y documentación de servicios.

**Aspectos del Sprint 3:**

1. **Backend - Configuración y Arquitectura Base:** Creación de la solución ASP.NET Core, configuración de Swagger, CORS, inyección de dependencias, Entity Framework Core y estructura de carpetas.
2. **Backend - IAM y Profiles:** Implementación de usuarios, autenticación, sign-in, sign-up, generación de JWT, hashing de contraseñas con BCrypt y perfiles de usuario.
3. **Backend - Livestock, Sanitary y Activities:** Implementación de fincas, animales, eventos sanitarios y actividades de granja mediante entidades, comandos, consultas, servicios y controladores REST.
4. **Backend - Financial y Analytics:** Implementación de registros financieros, report metrics y endpoints de dashboard para ganaderos y veterinarios.
5. **Backend - Clients, Devices y Metrics:** Implementación de clientes veterinarios, dispositivos ganaderos y métricas generadas por dispositivos.
6. **Backend - Subscriptions y Payments:** Implementación de planes, suscripciones, pagos mock y preparación de campos para una futura integración con Stripe.
7. **Base de Datos, Migraciones y Seed:** Configuración de MySQL, migraciones de Entity Framework Core y datos iniciales para pruebas.
8. **Documentación:** Documentación técnica del Sprint, endpoints disponibles y evidencias de ejecución.

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Team Member (Last Name, First Name)</b></td>
            <td><b>GitHub Username</b></td>
            <td><b>Config/Arq Backend / L or C</b></td>
            <td><b>IAM & Profiles / L or C</b></td>
            <td><b>Livestock/Sanitary/Activities / L or C</b></td>
            <td><b>Financial/Analytics / L or C</b></td>
            <td><b>Clients/Devices/Metrics / L or C</b></td>
            <td><b>Subscriptions / L or C</b></td>
            <td><b>Documentación / L or C</b></td>
        </tr>
        <tr>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>jorgeayaladev</td>
            <td>L</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
            <td>-</td>
            <td>C</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Huaman Gallardo, Bruno Aldair</td>
            <td>BrunoHG10</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
            <td>C</td>
            <td>L</td>
            <td>-</td>
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
            <td>L</td>
            <td>L</td>
        </tr>
        <tr>
            <td>Raymundo Villarroel, Nadhim Abigail</td>
            <td>AbigailRV</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
            <td>-</td>
            <td>C</td>
        </tr>
        <tr>
            <td>Sanchez Silva, Luciana Celeste</td>
            <td>Luccsss</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>C</td>
            <td>L</td>
            <td>C</td>
            <td>C</td>
        </tr>
    </tbody>
</table>

**Distribución detallada de responsabilidades:**

- **Ayala Fernandez, Jorge Brayan (Configuración & IAM Lead):** Responsable de la configuración inicial del backend, autenticación, generación de tokens JWT, manejo de credenciales y endpoints de usuarios.

- **Huaman Gallardo, Bruno Aldair (Livestock & Devices Lead):** Responsable de los módulos relacionados con la gestión ganadera, incluyendo fincas, animales, dispositivos y métricas asociadas.

- **Melgarejo Quiroz, Josep Eliu (Financial, Analytics & Documentation Lead):** Responsable de registros financieros, reportes, dashboards, suscripciones, pagos mock y documentación del Sprint.

- **Raymundo Villarroel, Nadhim Abigail (Sanitary & Activities Lead):** Responsable de eventos sanitarios, actividades de granja y seguimiento de información clínica del ganado.

- **Sanchez Silva, Luciana Celeste (Clients Lead):** Responsable de la relación entre veterinarios y ganaderos, incluyendo clientes asignados, ganaderos disponibles y operaciones de asociación.

### 5.2.3.3. Sprint Backlog 3.

El Sprint Backlog 3 tiene como objetivo principal implementar el backend de AniTec con una estructura modular y mantenible. Este backend permite centralizar la lógica de negocio, persistir datos en MySQL y exponer endpoints REST que serán consumidos por la aplicación web frontend.

El Sprint Backlog fue elaborado considerando las dependencias entre módulos. Primero se priorizó la configuración base del proyecto y la persistencia; luego se implementaron los bounded contexts principales; finalmente se añadieron endpoints de analítica, dispositivos, suscripciones y datos iniciales para pruebas.

**Trello Board:**
El equipo utiliza un Trello Board para gestionar visualmente el Sprint Backlog. El Board contiene las listas estándar de Scrum: "Sprint Goal", "To Do", "In Progress", "To Review" y "Done".

Enlace al tablero del Sprint Backlog 3: [Agregar enlace al Sprint Backlog 3 en Trello]()

<div align="center">
    <img src="../../assets/chapter-5/sprint3-backlog.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

**Estructura del Trello Board:**

- **Sprint Goal:** Lista que contiene el objetivo principal del Sprint.
- **To Do:** Lista con las tareas pendientes por iniciar.
- **In Progress:** Lista con las tareas que se encuentran en desarrollo.
- **To Review:** Lista con tareas completadas pendientes de revisión.
- **Done:** Lista con tareas aprobadas e integradas al backend.

A continuación, la tabla de control de estado para el Sprint 3:

<table align="center" border="1" cellpadding="8" cellspacing="0" style="border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;">
    <tbody>
        <tr>
            <td><b>Sprint #</b></td>
            <td colspan="7">Sprint 3</td>
        </tr>
        <tr>
            <td colspan="2">User Story</td>
            <td colspan="6">Work-Item / Task</td>
        </tr>
        <tr>
            <td>Id</td>
            <td>Title</td>
            <td>Id</td>
            <td>Title</td>
            <td>Description</td>
            <td>Estimation (Hours)</td>
            <td>Assigned to</td>
            <td>Status</td>
        </tr>
        <tr>
            <td>TS-005</td>
            <td>Configuración inicial del backend con ASP.NET Core</td>
            <td>T001</td>
            <td>Configurar solución backend</td>
            <td>Crear la solución anitec-platform, configurar proyecto ASP.NET Core, Swagger, CORS, appsettings, estructura base y paquetes NuGet necesarios.</td>
            <td>5</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-006</td>
            <td>Persistencia con Entity Framework Core y MySQL</td>
            <td>T002</td>
            <td>Configurar persistencia con Entity Framework Core</td>
            <td>Crear AppDbContext, configurar conexión a MySQL, repositorio base, Unit of Work, convenciones de nombres, migraciones y seed de datos iniciales.</td>
            <td>8</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-007</td>
            <td>Autenticación backend con JWT y BCrypt</td>
            <td>T003</td>
            <td>Implementar usuarios, sign-in y sign-up</td>
            <td>Crear entidades, comandos, consultas, servicios, recursos REST y controladores para autenticación, registro de usuarios, hashing de contraseñas y generación de JWT.</td>
            <td>8</td>
            <td>Ayala Fernandez, Jorge Brayan</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-008</td>
            <td>Implementación de bounded contexts de gestión ganadera</td>
            <td>T004</td>
            <td>Implementar Livestock</td>
            <td>Crear bounded context para fincas y animales, incluyendo entidades Herd y Animal, repositorios, servicios de comando/consulta y controladores REST.</td>
            <td>4</td>
            <td>Huaman Gallardo, Bruno Aldair</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-008</td>
            <td>Implementación de bounded contexts de gestión ganadera</td>
            <td>T005</td>
            <td>Implementar Sanitary y Activities</td>
            <td>Crear endpoints para eventos sanitarios y actividades de granja, siguiendo la estructura de commands, queries, resources y assemblers.</td>
            <td>4</td>
            <td>Raymundo Villarroel, Nadhim Abigail</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-009</td>
            <td>Servicios backend para analíticas y clientes veterinarios</td>
            <td>T006</td>
            <td>Implementar Analytics y Clients</td>
            <td>Crear endpoints para dashboards, resúmenes sanitarios/financieros, clientes asignados al veterinario y ganaderos disponibles.</td>
            <td>6</td>
            <td>Sanchez Silva, Luciana Celeste</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-010</td>
            <td>Servicios backend para dispositivos, métricas y suscripciones</td>
            <td>T007</td>
            <td>Implementar Devices, Metrics y Subscriptions</td>
            <td>Crear endpoints para dispositivos, métricas generadas por sensores, planes de suscripción, suscripciones, pagos mock y mock checkout.</td>
            <td>6</td>
            <td>Huaman Gallardo, Bruno Aldair</td>
            <td>Done</td>
        </tr>
        <tr>
            <td>TS-011</td>
            <td>Documentación y pruebas de API con Swagger</td>
            <td>T008</td>
            <td>Documentar y probar endpoints REST</td>
            <td>Verificar Swagger, compilar el proyecto, ejecutar la API, probar endpoints principales y documentar evidencias del Sprint.</td>
            <td>4</td>
            <td>Melgarejo Quiroz, Josep Eliu</td>
            <td>Done</td>
        </tr>
    </tbody>
</table>

El Sprint Backlog refleja 8 tareas principales, con aproximadamente 45 horas de trabajo estimadas. Cada tarea fue planificada considerando la complejidad técnica, las dependencias entre bounded contexts y la necesidad de mantener una estructura similar al backend trabajado en clase.

### 5.2.3.4. Development Evidence for Sprint Review.

En esta sección se presentan los avances de implementación realizados durante el Sprint 3 con relación al backend de AniTec. La evidencia muestra que el equipo logró construir una API funcional, conectada a MySQL y preparada para integrarse con el frontend.

Durante el Sprint 3, el equipo completó la implementación del proyecto `anitec-platform-main`. El backend fue construido utilizando ASP.NET Core, Entity Framework Core, MySQL, JWT y BCrypt. La estructura interna sigue una organización por bounded contexts con capas de dominio, aplicación, infraestructura e interfaces REST.

**Resumen de Avances Implementados:**

- **Creación del proyecto backend:** Solución `anitec-platform.sln` con proyecto principal `Anitec.Platform`.
- **Configuración de ASP.NET Core:** Uso de controladores REST, Swagger/OpenAPI, CORS, configuración por ambiente y middleware de errores.
- **Persistencia con MySQL:** Configuración de `AppDbContext`, repositorios, Unit of Work y migraciones de Entity Framework Core.
- **Autenticación JWT:** Implementación de sign-in, sign-up, hashing de contraseñas con BCrypt y emisión de token.
- **Arquitectura por bounded contexts:** Implementación de Shared, IAM, Profiles, Livestock, Sanitary, Activities, Financial, Analytics, Clients, Devices, Metrics y Subscriptions.
- **Servicios de aplicación:** Uso de Command Services y Query Services para separar operaciones de escritura y lectura.
- **REST Resources:** Uso de recursos y assemblers para transformar entidades de dominio en respuestas de API.
- **Seed de datos:** Carga inicial de usuarios, fincas, animales, eventos, dispositivos, planes y suscripciones para pruebas.
- **Migraciones automáticas:** Configuración para aplicar migraciones pendientes al ejecutar la API.

**Estructura principal del backend:**

```text
anitec-platform-main/
├── Anitec.Platform/
│   ├── Activities/
│   ├── Analytics/
│   ├── Clients/
│   ├── Devices/
│   ├── Financial/
│   ├── Iam/
│   ├── Livestock/
│   ├── Metrics/
│   ├── Profiles/
│   ├── Sanitary/
│   ├── Shared/
│   └── Subscriptions/
├── anitec-platform.sln
└── README.md
```

**Commits Realizados:**

| Repository           | Branch | Commit id | Commit Message                            | Commit Message Body                                           | Committed on (Date) |
| -------------------- | ------ | --------- | ----------------------------------------- | ------------------------------------------------------------- | ------------------- |
| anitec-platform-main | main   | Agregar   | chore: initialize AniTec platform backend | Creación inicial del proyecto ASP.NET Core para AniTec.       | Agregar fecha       |
| anitec-platform-main | main   | Agregar   | feat: add IAM bounded context             | Implementación de autenticación, usuarios, JWT y BCrypt.      | Agregar fecha       |
| anitec-platform-main | main   | Agregar   | feat: add livestock and sanitary contexts | Implementación de fincas, animales y eventos sanitarios.      | Agregar fecha       |
| anitec-platform-main | main   | Agregar   | feat: add financial and analytics modules | Implementación de registros financieros y dashboards.         | Agregar fecha       |
| anitec-platform-main | main   | Agregar   | feat: add devices metrics subscriptions   | Implementación de dispositivos, métricas y suscripciones.     | Agregar fecha       |
| anitec-platform-main | main   | Agregar   | chore: add mysql migrations and seed data | Configuración de migraciones EF Core y datos iniciales.       | Agregar fecha       |

**Repositorio del Backend:**

[Agregar enlace al repositorio anitec-platform-main]()

**Estadísticas del repositorio:**

- Total de bounded contexts implementados: 12
- Base de datos: MySQL
- ORM: Entity Framework Core
- Seguridad: JWT y BCrypt
- Documentación de servicios: Swagger/OpenAPI
- Migraciones generadas: 3
- Endpoints principales: autenticación, usuarios, perfiles, fincas, animales, sanidad, finanzas, actividades, analíticas, clientes, dispositivos, métricas y suscripciones.

### 5.2.3.5. Execution Evidence for Sprint Review.

Esta sección resume lo alcanzado en el Sprint 3 y presenta las principales evidencias de ejecución del backend. El objetivo fue comprobar que la API pueda compilar, ejecutar, aplicar migraciones, conectarse a MySQL y responder a peticiones HTTP desde Swagger o herramientas de prueba.

**Resumen de lo Alcanzado:**

El Sprint 3 permitió desarrollar el backend real de AniTec. El equipo logró configurar la solución ASP.NET Core, conectar la API con MySQL, implementar migraciones, crear datos iniciales y exponer endpoints REST para los módulos principales del sistema.

**Evidencias de ejecución:**

1. **Compilación del backend:** Se ejecutó el comando `dotnet build` para validar que el proyecto compile correctamente.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-dotnet-build.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

2. **Ejecución de la API:** Se ejecutó el comando `dotnet run --project Anitec.Platform` para levantar el backend en ambiente de desarrollo.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-dotnet-run.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

3. **Swagger/OpenAPI:** Se verificó que la documentación de endpoints esté disponible en el navegador.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-swagger.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

4. **Base de datos MySQL:** Se verificó la creación de tablas y datos iniciales en la base de datos `anitec-platform`.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-mysql-database.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

5. **Prueba de autenticación:** Se probó el endpoint de inicio de sesión para obtener un token JWT.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-authentication-test.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

6. **Prueba de endpoints principales:** Se verificó la respuesta de endpoints como usuarios, animales, dispositivos, clientes veterinarios y planes de suscripción.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-endpoints-test.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

**Funcionalidades implementadas en backend:**

1. **IAM:** Inicio de sesión, registro de usuarios, generación de token JWT y consulta de usuarios.
2. **Profiles:** Gestión de perfiles asociados a usuarios.
3. **Livestock:** Gestión de fincas y animales.
4. **Sanitary:** Gestión de eventos sanitarios y registros de salud.
5. **Activities:** Gestión de actividades y eventos de granja.
6. **Financial:** Gestión de ingresos, egresos y registros económicos.
7. **Analytics:** Dashboards y resúmenes para ganaderos y veterinarios.
8. **Clients:** Gestión de relación entre veterinarios y ganaderos.
9. **Devices:** Gestión de dispositivos como balanzas, collares inteligentes, cámaras térmicas, aretes de identificación, estaciones meteorológicas y sensores ambientales.
10. **Metrics:** Gestión de métricas generadas por dispositivos.
11. **Subscriptions:** Gestión de planes, suscripciones, pagos y mock checkout.
12. **Shared:** Repositorios base, Unit of Work, persistencia, recursos comunes y manejo de errores.

### 5.2.3.6. Services Documentation Evidence for Sprint Review.

Para el Sprint 3, el equipo implementó una API REST real para AniTec utilizando ASP.NET Core. Esta API reemplaza progresivamente al servicio mock utilizado durante el Sprint 2 y permite que el frontend consuma información persistida en MySQL.

**Configuración del Servicio Backend:**

- **Plataforma:** ASP.NET Core
- **ORM:** Entity Framework Core
- **Base de datos:** MySQL
- **Autenticación:** JWT Bearer Token
- **Hashing de contraseñas:** BCrypt
- **Documentación:** Swagger/OpenAPI
- **Repositorio:** [Agregar enlace al repositorio backend]()
- **URL local de la API:** `http://localhost:5191/api/v1`

**Migraciones implementadas:**

| Migración | Descripción |
| --------- | ----------- |
| `20260605202323_InitialCreate` | Creación inicial de tablas principales del sistema. |
| `20260607213722_AddRolesClientsAndMockPayments` | Agrega roles, clientes veterinarios y pagos mock. |
| `20260607235600_AddDateOnlyConverters` | Ajustes para conversión de fechas con DateOnly. |

**Endpoints principales implementados:**

| Endpoint | Método principal | Descripción |
| -------- | ---------------- | ----------- |
| `/api/v1/authentication/sign-in` | POST | Inicio de sesión de usuarios registrados. |
| `/api/v1/authentication/sign-up` | POST | Registro de nuevos usuarios. |
| `/api/v1/users` | GET | Consulta de usuarios del sistema. |
| `/api/v1/profiles` | GET/POST | Gestión de perfiles. |
| `/api/v1/herds` | GET/POST/PUT/DELETE | Gestión de fincas o unidades productivas. |
| `/api/v1/animals` | GET/POST/PUT/DELETE | Gestión de animales registrados. |
| `/api/v1/health-events` | GET/POST/PUT/DELETE | Gestión de eventos sanitarios. |
| `/api/v1/farm-events` | GET/POST/PUT/DELETE | Gestión de actividades de granja. |
| `/api/v1/financial-records` | GET/POST/PUT/DELETE | Gestión de ingresos y egresos. |
| `/api/v1/report-metrics` | GET/POST/PUT/DELETE | Gestión de métricas de reportes. |
| `/api/v1/analytics/ranchers/{id}/dashboard` | GET | Dashboard de ganadero. |
| `/api/v1/analytics/veterinarians/{id}/dashboard` | GET | Dashboard de veterinario. |
| `/api/v1/veterinarian/{veterinarianId}/clients` | GET | Clientes asignados a un veterinario. |
| `/api/v1/veterinarian/{veterinarianId}/available-ranchers` | GET | Ganaderos disponibles para asociar. |
| `/api/v1/devices` | GET/POST/PUT/DELETE | Gestión de dispositivos. |
| `/api/v1/device-metrics` | GET/POST/PUT/DELETE | Gestión de métricas de dispositivos. |
| `/api/v1/subscription-plans` | GET/POST/PUT/DELETE | Gestión de planes de suscripción. |
| `/api/v1/subscriptions` | GET/POST/PUT/DELETE | Gestión de suscripciones. |
| `/api/v1/subscriptions/mock-checkout` | POST | Simulación de pago para pruebas. |

**Estructura de capas aplicada:**

1. **Domain:** Entidades, comandos, consultas y contratos de repositorios.
2. **Application:** Command Services y Query Services para manejar casos de uso.
3. **Infrastructure:** Repositorios, Entity Framework Core, Unit of Work y servicios técnicos.
4. **Interfaces REST:** Controladores, recursos y assemblers para exponer la API.
5. **Shared:** Elementos comunes reutilizables en todos los bounded contexts.

**Variables y configuración:**

La cadena de conexión se configura en `appsettings.Development.json` y apunta a la base de datos MySQL local. También se dejó preparada la posibilidad de usar una variable de entorno para cambiar la conexión según el ambiente.

```json
"DefaultConnection": "server=localhost;user=root;password=password;database=anitec-platform"
```

### 5.2.3.7. Software Deployment Evidence for Sprint Review.

Durante el Sprint 3, el backend fue preparado para ejecutarse en ambiente local de desarrollo, conectado a una base de datos MySQL local. El despliegue final en un servidor público queda pendiente para una siguiente etapa, debido a que el objetivo principal de este Sprint fue construir la API funcional, documentada y lista para integrarse con el frontend.

**Configuración de ejecución local - Backend:**

- **Proyecto:** `anitec-platform-main`
- **Framework:** ASP.NET Core
- **Base de datos:** MySQL local
- **Comando de compilación:** `dotnet build`
- **Comando de ejecución:** `dotnet run --project Anitec.Platform`
- **Documentación local:** Swagger/OpenAPI

**Pasos de ejecución:**

1. Instalar .NET SDK.
2. Instalar MySQL Server.
3. Configurar la cadena de conexión en `appsettings.Development.json`.
4. Ejecutar las migraciones de Entity Framework Core.
5. Levantar el backend con `dotnet run --project Anitec.Platform`.
6. Abrir Swagger para probar los endpoints.
7. Ejecutar pruebas manuales de autenticación y consulta de datos.

<div align="center">
    <img src="../../assets/chapter-5/sprint3-local-deployment.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

**Verificación Post-Ejecución:**

Después de ejecutar el backend, se verificaron los siguientes puntos:

- El proyecto compila correctamente.
- La API se levanta en ambiente de desarrollo.
- Swagger muestra los controladores y endpoints disponibles.
- Las migraciones se aplican correctamente sobre MySQL.
- La base de datos contiene datos iniciales para pruebas.
- El endpoint de sign-in responde con datos del usuario autenticado y token JWT.
- Los endpoints de usuarios, animales, fincas, dispositivos, clientes y suscripciones responden correctamente.
- La estructura del backend mantiene una organización por bounded contexts.

### 5.2.3.8. Team Collaboration Insights during Sprint.

En esta sección el equipo explica cómo se desarrollaron las actividades de implementación del backend y se presentan los analíticos de colaboración y commits realizados durante el Sprint 3.

**Distribución de Trabajo:**

Todos los miembros del equipo participaron en la construcción del backend según las responsabilidades definidas en la matriz LACX. El equipo trabajó manteniendo reuniones de coordinación para revisar la estructura del proyecto, resolver dudas sobre Entity Framework Core, coordinar nombres de endpoints y asegurar que la API mantenga compatibilidad con los módulos ya desarrollados en el frontend.

El trabajo colaborativo se apoyó en GitHub para el control de versiones y en Discord para la comunicación diaria. Las revisiones se enfocaron principalmente en mantener la misma estructura de carpetas en cada bounded context, reutilizar los patrones aprendidos en clase y evitar soluciones demasiado avanzadas que se alejen del nivel técnico trabajado durante el curso.

**Métricas de Colaboración:**

<div align="center">
  <p>
    <b>Commits gráficas - Sprint 3</b>
  </p>
  <img src="../../assets/chapter-5/commit-chart-sprint-3.png" alt="Commits Sprint 3" width="600">
</div>

**Reflexiones del Equipo:**

- Ayala Fernandez, Jorge Brayan: "El Sprint 3 permitió aplicar lo aprendido en clase sobre backend con ASP.NET Core. La implementación de IAM fue importante porque permitió pasar de usuarios demo a una autenticación con token, más cercana a una aplicación real."

- Huaman Gallardo, Bruno Aldair: "La implementación de los módulos de ganadería y dispositivos ayudó a convertir los datos del frontend en entidades reales dentro de una base de datos. Fue importante mantener la separación por bounded contexts para que el código sea más ordenado."

- Melgarejo Quiroz, Josep Eliu: "Trabajar con Entity Framework Core y MySQL permitió entender mejor cómo las entidades del dominio se convierten en tablas reales. Las migraciones ayudaron a mantener la base de datos alineada con los cambios del backend."

- Raymundo Villarroel, Nadhim Abigail: "La implementación de eventos sanitarios y actividades permitió llevar al backend una parte esencial del seguimiento del ganado. El reto principal fue mantener consistencia entre los datos clínicos y los animales registrados."

- Sanchez Silva, Luciana Celeste: "El módulo de clientes veterinarios permitió representar la relación entre ganaderos y veterinarios dentro del backend. Esto es importante porque el veterinario necesita consultar únicamente la información de sus clientes asignados."

**Lecciones Aprendidas:**

El equipo identifica las siguientes lecciones de este Sprint 3:

1. **La estructura por bounded contexts facilita el crecimiento del backend:** Separar los módulos permitió trabajar de forma ordenada y mantener responsabilidades claras.

2. **Entity Framework Core simplifica la persistencia:** Las migraciones permitieron crear y actualizar la base de datos sin escribir manualmente todo el SQL.

3. **La autenticación debe definirse temprano:** IAM es una base importante porque muchos módulos dependen de saber qué usuario está usando la aplicación.

4. **Los datos mock ayudaron a diseñar el backend:** El `db.json` del Sprint 2 sirvió como referencia para definir entidades, recursos y endpoints.

5. **Swagger facilita las pruebas manuales:** La documentación automática permitió probar endpoints sin depender todavía del frontend.

6. **MySQL requiere una configuración cuidadosa:** La cadena de conexión, credenciales y migraciones deben estar correctamente configuradas para evitar errores al ejecutar la API.

7. **Mantener patrones conocidos reduce la complejidad:** Usar Repository, Unit of Work, Command Services y Query Services permitió seguir una estructura parecida al backend trabajado en clase.
