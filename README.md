Se desarrolló un sistema de gestión para clubes de atletismo donde un Club puede tener múltiples Corredores, pero cada corredor pertenece a una única institución.

Acciones Referenciales:

ON DELETE SET NULL: Si un club es eliminado, los corredores permanecen en la base de datos como "agentes libres", evitando la pérdida de información histórica.

ON UPDATE CASCADE: Garantiza que cualquier cambio en la identificación del club se replique instantáneamente en los registros de los atletas.

Diagrama Entidad-Relación (MER)

🛠️ Tecnologías Utilizadas
Motor de BD: MySQL 8.0

Modelado: MySQL Workbench

Entorno: Windows 11 / VS Code

Control de Versiones: Git & GitHub

Actualmente soy estudiante de Desarrollo Full-Stack con enfoque en análisis de datos y lógica de programación. Este repositorio refleja mi proceso de aprendizaje en la construcción de arquitecturas de datos sólidas y escalables.
