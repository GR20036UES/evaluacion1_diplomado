# UJI_DB - Sistema de Gestión de Fallos

## Descripción
Base de datos para gestión de pizarras, técnicos y reportes de fallos. Proyecto de evaluación con Docker y PostgreSQL.

## Implementación
- Base de datos PostgreSQL con esquemas normalizados
- Triggers y funciones almacenadas para automatización
- Índices para optimización de consultas
- Datos de prueba incluidos
- Scripts de mantenimiento y documentación
---
## Inicio Rápido

### Requisitos
- Docker y Docker Compose

### Ejecutar
```bash
docker-compose up -d
```
---
### Acceder
- **PostgreSQL**: localhost:5434
  - Usuario: postgres
  - Contraseña: admin123
  - Base: UJI_DB
- **pgAdmin**: http://localhost:5050
  - Email: admin@admin.com
  - Contraseña: admin123

---
## Estructura
- `docker-compose.yml`: Configuración de servicios
- `sql-init/`: Scripts SQL de inicialización 
---
## Comandos Básicos
```bash
# Detener servicios
docker-compose down

# Ver logs
docker-compose logs postgres

# Acceder a la DB
docker exec -it postgres17 psql -U postgres -d UJI_DB
```
---
## Tablas Principales
- `tbl_pizarras`: Gestión de pizarras
- `tbl_tecnicos`: Información de técnicos
- `tbl_reportes_fallos`: Reportes de fallos

---
## 👥 Autores
- Billy Alexander Garcia Rivera  
- Luis Andres Parada Barrero  

---
**Proyecto**: Evaluación 1 - Diplomado en Bases de Datos  
**Fecha**: 24 de Marzo de 2026
