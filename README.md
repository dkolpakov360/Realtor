
## Условия:
scheme.sql  - с таблицами которые она создаст для решения задачи
*.php - один или несколько файлов php (без фреймворков) которые будут решать поставленную задачу . 

### Структура БД mysql:

#### таблица 1: содержит данные клиента (clients) 
        название клиента  
        адрес  
        телефон  

#### таблица 2 - содержит: (realtion_client_flat)
привязка объекта (к примеру квартира) к клиенту  
уникальный идентификатор квартиры  
дата добавления записи  
дата обновления записи  
дата удаления записи  

#### таблица 3 - содержит параметры квартиры (flats)
такие как номер квартиры  
адрес  
площадь  
кол-во комнат  
этаж  
и прочее  

#### таблица 4 - содержит фото этой квартиры (flat_pics)

### Задание:
Создать в БД таблицы 
Наполнить тестовыми данными должно быть минимум 3 клиента и у каждого по 2-3 квартиры с разными параметрами
Написать класс на php для взаимодействия с БД 
- Выбрать для 1го клиента только 1 комнатные квартиры
- для 2го клиента 3х комнатные,
- а для 3го все записи
Из полученных данных сформировать xml файл произвольного формата (за основу можно взять яндекс формат или придумать свой) 
