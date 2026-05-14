# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

El diseño del sistema basado en Domain-Driven Design (DDD) establece una arquitectura robusta y escalable mediante la segmentación en Bounded Contexts como Identidad, Gestión Animal, Historial Clínico y Finanzas. Esta estructura permite una clara separación de responsabilidades, mejorando la trazabilidad de la información y la mantenibilidad del sistema. Asimismo, la definición de épicas y user stories asegura que el desarrollo se mantenga alineado a las necesidades reales de ganaderos y veterinarios.

Las validaciones del Problem Statement confirman la existencia del problema identificado: los ganaderos gestionan su información mediante métodos manuales como cuadernos o Excel, lo que genera desorden, pérdida de datos y baja trazabilidad. Esto también afecta a los veterinarios, quienes no cuentan con historiales clínicos completos para realizar tratamientos efectivos, evidenciando una necesidad real de digitalización en el sector.

Las Business Assumptions fueron validadas parcialmente a través de entrevistas. Se confirmó la necesidad de un sistema confiable de registro, la pertinencia del perfil de usuarios objetivo y la importancia de alertas automáticas. Sin embargo, se identificó una posible barrera de adopción en ganaderos de mayor edad, lo que refuerza la necesidad de una interfaz simple e intuitiva. En general, las Feature Assumptions también fueron validadas, destacando el valor de alertas sanitarias y calendarios de vacunación.

Las Hypothesis Statements presentan validación inicial positiva, ya que los usuarios muestran alta disposición a adoptar la plataforma y reconocen el valor de funcionalidades como alertas automáticas, reportes visuales y reducción de errores en el registro. Sin embargo, su validación completa requiere la implementación y uso real del sistema en producción.

Los criterios de éxito aún no pueden medirse de forma cuantitativa, pero la validación cualitativa confirma que están correctamente definidos. El desarrollo del Sprint 1 permitió establecer la presencia digital del proyecto mediante una Landing Page funcional y desplegada, cumpliendo el objetivo del entregable y sentando las bases para la captación de usuarios.

Finalmente, la arquitectura basada en DDD con múltiples Bounded Contexts, junto con una SPA en VueJS y un backend en .NET, proporciona una base técnica sólida, escalable y mantenible. Los diagramas C4 facilitan la comprensión del sistema y respaldan su evolución futura dentro del proyecto AniTec.

---

### Recomendaciones

Se recomienda continuar con el desarrollo priorizando los módulos de Gestión Animal y Gestión Sanitaria (EP02 y EP04), ya que estos concentran las funcionalidades de mayor valor para ambos segmentos de usuarios, según lo validado en las entrevistas. El registro de animales y el historial clínico fueron las funcionalidades más mencionadas por ganaderos y veterinarios respectivamente.

Se recomienda realizar validación continua con 3 ganaderos y 2 veterinarios previamente entrevistados, evaluando prototipos en cada sprint. Esto permitirá ajustar el producto según necesidades reales y validar hipótesis del proyecto. Dado el perfil de usuarios (ganaderos con baja familiaridad tecnológica), se recomienda: Interfaz simple e intuitiva (tipografía legible, colores cálidos e iconografía clara), Onboarding con tutoriales interactivos y la “Academia Ganadera”, modelo freemium (plan Basic gratuito) para facilitar adopción inicial.

Se recomienda evaluar la evolución del sistema hacia una aplicación móvil, integrando servicios de mensajería como WhatsApp Business API o notificaciones push, considerando que los usuarios utilizan estos canales como principal medio de comunicación. Esto permitiría enviar alertas sanitarias, recordatorios y eventos críticos en tiempo real, mejorando la trazabilidad y respuesta oportuna en la gestión ganadera.

Se sugiere considerar la incorporación de dispositivos IoT (Internet of Things) en el futuro, como sensores de monitoreo de salud animal, ubicación o temperatura. Estos dispositivos permitirían la captura automática de datos en tiempo real, alimentando la plataforma móvil y web para una toma de decisiones más precisa y basada en datos.

A medida que el sistema crezca, se recomienda evolucionar la arquitectura mediante la implementación de un API Gateway para gestionar la comunicación entre la SPA y los distintos Bounded Contexts, el uso de Azure SQL Database como servicio administrado para garantizar escalabilidad y alta disponibilidad, y la incorporación de herramientas de monitoreo y logging centralizado (como Application Insights) para la detección temprana de incidencias en producción. Asimismo, se debe mantener la actualización continua de los diagramas C4, asegurando que la documentación arquitectónica refleje de manera precisa la evolución del sistema.

---
## Video About The Team

