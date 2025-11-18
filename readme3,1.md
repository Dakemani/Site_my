# Задание 3.1 - Архитектура веб-приложения

## Описание
Граф зависимостей для веб-приложения, показывающий связи между фронтендом, бэкендом и внешними сервисами.

## Диаграмма архитектуры

```mermaid
flowchart TD
    subgraph A [Frontend]
        A1[React]
        A2[Redux]
        A3[React Router]
        
        A1 --> A2
        A1 --> A3
        A2 --> A3
    end

    subgraph B [Backend]
        B1[Node.js]
        B2[Express]
        B3[MongoDB]
        
        B1 --> B2
        B2 --> B3
    end

    subgraph C [External Services]
        C1[Stripe<br/>Payments]
        C2[SendGrid<br/>Email]
    end

    A --> B
    B --> C
    C1 --> B
    C2 --> B