# Диаграмма Ганта
```mermaid
gantt
    dateFormat  YYYY-MM-DD
    title Разработка мобильного приложения
    
    section Основные этапы
    Подготовка      :a1, 2025-11-20, 5d
    Дизайн          :a2, after a1, 7d
    Фронтенд-разработка :a3, after a2, 10d
    Бэкенд-разработка   :a4, after a1, 12d
    Тестирование    :after a3, after a4, 5d
```