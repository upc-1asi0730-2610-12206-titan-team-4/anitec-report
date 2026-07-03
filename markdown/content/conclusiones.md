# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

El proyecto AniTec permitio validar la necesidad de una solucion digital orientada a ganaderos y veterinarios, debido a que ambos segmentos requieren mayor orden, trazabilidad y disponibilidad de informacion sobre animales, fincas, actividades, sanidad y gastos. Las entrevistas y validaciones realizadas confirmaron que el problema identificado es real y que una plataforma web puede aportar valor si mantiene una experiencia simple, clara y cercana al contexto ganadero.

El diseño del sistema basado en Domain-Driven Design permitio organizar AniTec mediante bounded contexts como IAM, Profiles, Livestock, Sanitary, Financial, Activities, Analytics, Clients, Devices, Metrics y Subscriptions. Esta separacion favorece la mantenibilidad del sistema, facilita la asignacion de responsabilidades dentro del equipo y permite que cada modulo evolucione sin afectar innecesariamente al resto de la aplicacion.

Durante el Sprint 1 se logro establecer la presencia digital del producto mediante una landing page funcional desplegada en GitHub Pages. Este avance permitio comunicar la propuesta de valor de AniTec, presentar los beneficios principales para ganaderos y veterinarios, y generar una primera base de validacion frente a usuarios potenciales.

Durante el Sprint 2 se implemento la aplicacion web frontend con Vue, organizada por bounded contexts y conectada inicialmente a datos de prueba mediante my-json-server. Este sprint permitio construir las principales vistas funcionales de la plataforma, validar flujos de navegacion y preparar la estructura necesaria para reemplazar progresivamente los datos mock por servicios reales.

Durante el Sprint 3 se desarrollo el backend real de AniTec con ASP.NET Core, Entity Framework Core y MySQL. La API implementa autenticacion con JWT, gestion de usuarios, perfiles, hatos, animales, eventos sanitarios, actividades, registros financieros, clientes veterinarios, analiticas, dispositivos IoT, metricas, planes, suscripciones y pagos mock. Con ello, el proyecto dejo de depender solamente de datos simulados y paso a contar con una base de servicios persistentes.

La documentacion de servicios mediante Swagger/OpenAPI permitio verificar los endpoints implementados y facilitar las pruebas manuales del backend. Asimismo, las migraciones de Entity Framework Core permitieron mantener alineada la estructura de la base de datos con las entidades del dominio, reduciendo errores en la configuracion y mejorando la trazabilidad tecnica del sistema.

El despliegue del backend en Render representa un avance importante para el proyecto, ya que la API queda disponible desde internet y puede ser consumida por el frontend desplegado. Esto permite validar AniTec en un entorno mas cercano a produccion, comprobar la disponibilidad publica del servicio y preparar futuras pruebas de integracion entre frontend, backend y base de datos.

En relacion con el Student Outcome, el equipo evidencio trabajo colaborativo y liderazgo conjunto durante los tres avances. Cada integrante asumio responsabilidades claras por modulo o artefacto, participo en la planificacion de tareas, colaboro en la integracion del sistema y aporto a la documentacion del producto. Esto permitio cumplir los objetivos de cada sprint de forma progresiva y mantener coherencia entre la propuesta, el diseño, el frontend, el backend y el despliegue.

**Contraste con Lean UX y validaciones:**

| Elemento Lean UX | Planteamiento inicial | Resultado de validación | Conclusión |
| ---------------- | --------------------- | ----------------------- | ---------- |
| Problem Statement | Los pequeños y medianos ganaderos, junto con veterinarios, dependen de registros manuales, cuadernos, hojas de cálculo o herramientas poco integradas para gestionar información sanitaria, productiva y económica. | En las entrevistas de validación, los participantes confirmaron que actualmente registran información mediante medios manuales o poco centralizados. | El problema identificado se mantiene vigente y AniTec responde a una necesidad real de organización y trazabilidad. |
| Business Assumptions | Se asumió que los usuarios necesitan una plataforma web accesible para registrar información clave, generar alertas y consultar reportes útiles. | Los usuarios valoraron la centralización de animales, sanidad, actividades, finanzas, IoT y clientes veterinarios. | La propuesta de valor fue validada en términos generales, aunque se requiere reforzar reportes, alertas y campos específicos. |
| User Assumptions | Se asumió que ganaderos y veterinarios valorarían una interfaz simple, cercana y pensada para usuarios con poca experiencia tecnológica. | Los entrevistados comprendieron la navegación por roles y consideraron útiles los dashboards y módulos principales. | La interfaz resulta comprensible para una primera versión, pero debe seguir simplificándose en formularios y mensajes de error. |
| Feature Assumptions | Se propuso registro digital de animales, eventos sanitarios, finanzas, reportes, clientes veterinarios e historial clínico. | Los usuarios identificaron valor en registrar animales, eventos sanitarios, actividades, finanzas y seguimiento veterinario. | Las funcionalidades principales son pertinentes, aunque deben ampliarse campos clínicos, datos del animal y métricas para decisiones. |
| Hypothesis Statements | Se planteó que AniTec mejoraría la adopción digital, gestión sanitaria, toma de decisiones, organización de datos y colaboración veterinario-ganadero. | Las validaciones muestran aceptación inicial y percepción positiva de utilidad, especialmente por centralizar información en un solo lugar. | Las hipótesis fueron parcialmente validadas: existe interés y utilidad percibida, pero la adopción dependerá de mejorar confianza, reportes, recordatorios y facilidad de uso. |
| Criterios de éxito | Se esperaba reducir registros manuales, mejorar precisión de registros, facilitar historial sanitario y apoyar decisiones basadas en datos. | Las entrevistas no prueban aún reducción real de errores, pero sí confirman intención de uso y reconocimiento del valor de centralizar información. | Los criterios de éxito quedan como metas para una siguiente etapa con uso real de la aplicación desplegada y medición continua. |

### Recomendaciones

**Corto plazo:** Se recomienda continuar con la integracion completa entre el frontend desplegado en GitHub Pages y el backend desplegado en Render, asegurando que las variables de entorno del frontend apunten a la API real y que los flujos principales funcionen sin depender de my-json-server.

**Corto plazo:** Se recomienda fortalecer la autenticacion y autorizacion del sistema, definiendo permisos por rol para ganaderos, veterinarios y administradores. Esto permitiria proteger los endpoints sensibles y asegurar que cada usuario solo acceda a la informacion correspondiente a su perfil.

**Mediano plazo:** Se recomienda continuar la validacion con ganaderos y veterinarios usando la aplicacion desplegada, no solo prototipos. Esto permitira identificar problemas reales de uso, comprension del lenguaje, dificultad en formularios, utilidad de dashboards y necesidades adicionales en los modulos de sanidad, actividades, finanzas e IoT.

**Mediano plazo:** Se recomienda mejorar la experiencia de usuario del frontend en una siguiente iteracion, priorizando claridad en dashboards, simplificacion de formularios, estados visuales para dispositivos IoT y mejor organizacion del flujo veterinario por clientes asignados.

**Mediano plazo:** Se recomienda completar y fortalecer las pruebas del backend, incluyendo pruebas de endpoints, validacion de reglas de negocio, manejo de errores y pruebas de integracion con la base de datos. Esto ayudara a asegurar mayor estabilidad antes de seguir ampliando funcionalidades.

**Futuro roadmap:** Se recomienda mantener actualizada la documentacion tecnica, incluyendo endpoints, migraciones, evidencias de despliegue, diagramas C4 y decisiones de arquitectura. A medida que AniTec crezca, esta documentacion sera clave para sostener la colaboracion del equipo y facilitar futuras mejoras del producto.

---

## Video About The Team

El video About The Team presenta la participación de los integrantes del equipo Titan Team 4 durante el desarrollo de AniTec, destacando las actividades realizadas, los logros alcanzados en el curso y el desarrollo de competencias asociadas al trabajo colaborativo, liderazgo conjunto, planificación de tareas y cumplimiento de objetivos.

**Datos del video:**

| Elemento | Información |
| -------- | ----------- |
| Título | Video About The Team - AniTec |
| Duración | 8:02 minutos |
| Público objetivo | Docente del curso, visitantes del landing page e interesados en conocer el proceso de trabajo del equipo |
| URL publicado en Microsoft Stream | https://upcedupe-my.sharepoint.com/:v:/g/personal/u202315165_upc_edu_pe/IQAyofYgaVNZSKGbK9yprnnhAfTvMhJAbfJQ2HpwhuOl0FA?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=8Ff9cQ |
| URL publicado en YouTube | https://www.youtube.com/watch?v=Ai-0rShYlvI |
| Uso en landing page | El video de YouTube se utiliza como evidencia pública del proceso de trabajo del equipo. |

**URL del video publicado en Microsoft Stream:**

https://upcedupe-my.sharepoint.com/:v:/g/personal/u202315165_upc_edu_pe/IQAyofYgaVNZSKGbK9yprnnhAfTvMhJAbfJQ2HpwhuOl0FA?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=8Ff9cQ

**URL del video publicado en YouTube:**

https://www.youtube.com/watch?v=Ai-0rShYlvI

<div align="center">
    <img src="../assets/chapter-5/screenshot-video-about-the-team.png" width="700">
    <p><i><b>Fuente</b>: Elaboración propia.</i></p>
</div>

**Pauta de secuencias del video:**

| Sección | Timing de inicio | Contenido |
| ------- | ---------------- | --------- |
| Introducción del equipo y presentación de AniTec | 00:00:00 | Presentación general de Titan Team 4, propósito del producto y contexto del trabajo final. |
| Organización del trabajo y roles del equipo | 00:01:00 | Explicación de la distribución de responsabilidades, planificación de sprints y colaboración en repositorios. |
| Desarrollo de landing page y aplicación web | 00:02:30 | Resumen del trabajo realizado en diseño, frontend, navegación por roles y validaciones visuales. |
| Desarrollo del backend y servicios | 00:04:30 | Explicación de la implementación del backend, base de datos, endpoints, Swagger y despliegue. |
| Testimonios de integrantes y Student Outcome | 00:06:30 | Participación de los integrantes comentando aprendizajes, trabajo colaborativo, liderazgo y competencias desarrolladas. |
| Cierre del proceso de trabajo | 00:07:20 | Resumen de logros, dificultades superadas y valor del proyecto AniTec. |

El contenido del video complementa la sección Student Outcome porque muestra la participación de los integrantes, la coordinación del equipo y las competencias desarrolladas durante la construcción de la landing page, la aplicación web, el backend y la documentación del proyecto.
