# Задание 3.1 - Архитектура веб-приложения

## Описание
Граф зависимостей для веб-приложения, показывающий компоненты фронтенда, бэкенда и внешних сервисов.

## Диаграмма архитектуры

```mermaid
flowchart TD
    subgraph Frontend
        direction LR
        React
        Redux
        Router[React Router]
    end

    subgraph Backend
        Node[Node.js]
        Express
    end

    subgraph External
        direction LR
        Stripe
        SendGrid
    end
    
    MongoDB
    
    Frontend --> Backend
    Backend --> External
    Backend --> MongoDB