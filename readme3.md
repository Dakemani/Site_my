# Диаграмма классов "Библиотечная система"

## Описание
Диаграмма классов для системы управления библиотекой с тремя основными классами: Library, User и Book.

## Диаграмма классов

```mermaid
classDiagram
    class Library {
        -Book[] books
        -User[] users
    }

    class User {
        -String name
        -String userid
        -Book[] borrowedBooks
    }

    class Book {
        -String title
        -String author
        -String ISBN
        -Boolean isAvailable
    }

    Library "1" *-- "0..*" Book
    Library "1" *-- "0..*" User
    User "1" --> "0..*" Book