# [AnchorModeling] for Input–output model [Межотраслевые Балансы]
![alt text](http://www.anchormodeling.com/wp-content/uploads/2010/08/AMatDSV.jpg)

[ClickHouse vs Vertica vs GreenPlum] Сравнение производительности аналитических СУБД  
https://clickhouse.yandex/benchmark.html


Excel как инструмент Проектирования хранилищ данных DWH Data Warehous  
https://www.youtube.com/watch?v=5ThDc3PTpo4&index=32&list=PLrTrFnOkIFb0G8u6VwtUSbIgZDERNyAvm

[Николай Голов] Нюансы реализации колоночного хранения данных [Avito]  
https://www.youtube.com/watch?v=Mu4K4T-SRfc&feature=youtu.be

[Николай Голов] Как мы считали трафик на Вертике [Авито]  
https://www.youtube.com/watch?v=F3pCSytpZ6Q&list=PLrTrFnOkIFb0G8u6VwtUSbIgZDERNyAvm&index=35

[Николай Голов] зачем нужна нормализация в Big Data [Авито]  
https://www.youtube.com/watch?v=2er-jebT9T0&list=PLrTrFnOkIFb0G8u6VwtUSbIgZDERNyAvm&index=33

[Николай Голов] Lambda architecture для realtime аналитики [Авито]  
https://www.youtube.com/watch?v=D98nNXQMBso&list=PLrTrFnOkIFb0G8u6VwtUSbIgZDERNyAvm&index=34

VoltDB In-Memory Database Achieves Best-In-Class Results, Running in the Cloud, On the YCSB Benchmark
https://www.voltdb.com/blog/2014/05/07/voltdb-memory-database-achieves-best-class-results-running-cloud-ycsb-benchmark/

Enerprise Architect for capability-based planning has emerged as a [key technique for architects] to [anchor] their business and technology investment recommendation
![alt text](http://enterprisearchitects.com/wp-content/uploads/2013/10/Sample-Business-Anchor-Model-inc-SCOR-a.jpg)

BigData & Эконометрика! «Финансовая математика. Чем занимаются гении на бирже?».......

Оценка рисков ЦБ Европы, ЦБ Японии, ЦБ РФ и МОБ 40 государств. Межотраслевое моделирование :)

https://www.youtube.com/watch?v=5_cjhSXSGBY
  
Якорное моделирование Межотраслевых Балансов -  технология моделирования гибкой базы данных, подходящая для информации, которая со временем изменяется как по структуре, так и по содержанию. Он обеспечивает графическое обозначение, используемое для концептуального моделирования, аналогичное моделированию отношений сущностей, с расширениями для работы с временными данными. В методике моделирования используются четыре модели моделирования: якорь, атрибут, связь и узел, каждый из которых отражает различные аспекты моделируемого домена. Полученные модели могут быть переведены в физические проекты баз данных с использованием формализованных правил. Когда такой перевод сделан, таблицы в реляционной базе данных будут в основном в шестой нормальной форме.

# Input–output model - Межотраслевой баланс
![alt text](http://dankozub.com/simulation/iob.png) 

Input–output model имеет следующую структуру:
![alt text](http://dankozub.com/simulation/structure.png)  
Амортизация (D) каждой «ветви столбца» преобразуется инвестиционной матрицей (B) в инвестиционный спрос (I) для ресурсов «строк-ветвей». Общая амортизация равна общему объему инвестиций.

Налоги (T) используются для баланса импорта и экспорта. Остаток налогов через трансферты домохозяйствам вместе с заработной платой (W) формирует личное потребление (C). Следующее правило должно быть выполнено:

Налоги (T) + Заработная плата (W) = Частное потребление (C) + Экспорт (Ex) + Импорт (Im)

Taxes (T) + Wages (W) = Private consumption (C) + Export (Ex) + Import (Im)

Теория «Межотраслевого баланса» была разработана в США В. В. Леонтьевым как действенный инструмент при анализе и прогнозировании структурных взаимосвязей в экономике. Теоретические основы межотраслевого баланса начал разрабатывать В. В. Леонтьев, учась в Берлинском университете. Сокращенный перевод его оригинальной статьи под названием «Баланс народного хозяйства СССР» опубликовал журнал «Плановое хозяйство» в № 12 за 1925 год. В этой работе Леонтьев показал, что коэффициенты, выражающие связи между отраслями экономики, достаточно стабильны и их можно прогнозировать.
https://en.wikipedia.org/wiki/Input%E2%80%93output_model

В 1930-е годы Леонтьев применил метод анализа межотраслевых связей с привлечением аппарата линейной алгебры для исследования экономики США. Метод стал известен под названием «затраты — выпуск». Во время Второй мировой войны разработанная Леонтьевым матрица «затраты — выпуск» для экономики Германии служила для выбора целей ВВС США. Аналогичный баланс для СССР, разработанный Леонтьевым, использовался властями США для принятия решения об объёмах и структуре ленд-лиза.

Межотраслевой баланс (МОБ, модель «затраты — выпуск», метод «затраты — выпуск») — экономико-математическая балансовая модель, характеризующая межотраслевые производственные взаимосвязи в экономике страны. Характеризует связи между выпуском продукции в одной отрасли и затратами, расходованием продукции всех участвующих отраслей, необходимым для обеспечения этого выпуска. Межотраслевой баланс составляется в денежной и натуральной формах.

Межотраслевой баланс представлен в виде системы линейных уравнений. Межотраслевой баланс (МОБ) представляет собой таблицу, в которой отражен процесс формирования и использования совокупного общественного продукта в отраслевом разрезе. Таблица показывает структуру затрат на производство каждого продукта и структуру его распределения в экономике. По столбцам отражается стоимостной состав валового выпуска отраслей экономики по элементам промежуточного потребления и добавленной стоимости. По строкам отражаются направления использования ресурсов каждой отрасли.
  
* [Межотраслевые Балансы] Таблицы «Input–output model» для США  
https://www.bea.gov/industry/input-output-accounts-data

* [Межотраслевые Балансы] Таблицы «Input–output model» для Германии
https://www.destatis.de/DE/Publikationen/Thematisch/VolkswirtschaftlicheGesamtrechnungen/InputOutputRechnung/VGRInputOutputRechnung.html

* [Межотраслевые Балансы] Таблицы «Input–output model» для Франции  
https://www.insee.fr/en/statistiques/2561550

* [Межотраслевые Балансы] Таблицы «Input–output model» для стран Европейского Союза
http://ec.europa.eu/eurostat/web/esa-supply-use-input-tables/data/workbooks

* [Межотраслевые Балансы]Таблицы «Input–output model» для Австралии
https://stats.oecd.org/Index.aspx?DataSetCode=IOTS

* [Межотраслевые Балансы]Таблицы «Input–output model» для Российской Федерации
http://www.gks.ru/wps/wcm/connect/rosstat_main/rosstat/ru/statistics/accounts/#

* [Межотраслевые Балансы] Таблицы « nput–output model» для ряда стран мира  
https://stats.oecd.org/Index.aspx?DataSetCode=IOTS

# [Excel] Индекс силы Элдера в Excel на фьючерсы на Золото, Палладий, Платину, Алюминий, Медь
Индекс силы Элдера, измеряет силу быков при каждом подъеме и силу медведей при каждом спаде. Он связывает воедино направление цены, ее перепады и объем сделок.

https://drive.google.com/file/d/1ahMsr46v2es620A6p8PoC5X5UDDTgE7S/view

# Цены на Платину, Палладий, Золото в Excel от Swissquote.

Фундаментальный анализ : :
Межотраслевой Баланс государств в Excel где ведется добыча Палладия.
Межотраслевой Баланс государств в Excel где ведется добыча Золота.
Межотраслевой Баланс государств в Excel где ведется добыча Платины.
Межотраслевой Баланс государств в Excel где ведется добыча Меди.

Поставки палладия в мире в 2007 году составили 267 тонн
Россия — 141 тонна,
ЮАР — 86 тонн,
США и Канада — 31 тонна,
прочие страны — 9 тонн
Потребление палладия в 2007 году составило в автомобильной промышленности 107 тонн, в производстве электроники — 40 тонн, в химической промышленности — 12 тонн[9].

Отчет о рынке лития 2016 год от компании Swiss Resource Capital AG. Йохен Штайгер, генеральный директор и основатель Swiss Resource Capital AG.

https://www.youtube.com/watch?v=ttD0NulyPLI

Отчет о рынке лития 2018 : : Компания Swiss Resource Capital AG выпустила новый отчет о литии 2018. Спрос на литий сейчас очень высокий благодаря производству батарей для электромобилей и для хранения энергии. Стоимость кобальта достигла рекордного максимума на уровне 62 тысяч долларов и она может повыситься еще больше. Йохен Штайгер, CEO и основатель Swiss Resource Capital AG.

https://www.youtube.com/watch?v=CNnmd3hKGhM

Будут ли показатели палладия и дальше превосходить показатели других металлов?
Дэвид Вилсон, Citigroup.

https://www.youtube.com/watch?v=hwM7nZYP3Jk

На рынке металлов платиновой группы компания Sibanye из Южной Африки поглотила Stillwater и стала третьим крупнейшим в мире производителем платины и палладия. Несмотря на развитие сферы электромобилей, металлы платиновой группы все еще востребованы. Йохен Штайгер, CEO и основатель, Swiss Resource Capital AG.

https://www.youtube.com/watch?v=50AGt4L6TqE

Supply and demand differentials for Platinum and Palladium causing a stir.David Wilson, Citigroup.

https://www.youtube.com/watch?v=ubKux0wpFGc

![alt text](https://i.ytimg.com/vi/b_tyn-u7b2g/maxresdefault.jpg) 
Duakscopy TV talks to Commodities Analyst at Commerzbank, Daniel Briesemann, about the recent rise in base metal prices. Copper, Iron ore and Platinum are all discussed, along with Zinc and Lead.

https://www.youtube.com/watch?v=b_tyn-u7b2g

![alt text](https://i.ytimg.com/vi/dvZI7jTmEsc/maxresdefault.jpg) 
Doireann  Mc Dermott speaks to Rohit Savant, senior commodity analyst at CPM group in New York to discuss the performance of gold, silver, platinum and palladium.

https://www.youtube.com/watch?v=dvZI7jTmEsc

![alt text](https://i.ytimg.com/vi/jhaBETNH-0Y/maxresdefault.jpg) 
Carsten Fritsch, Senior Commodity Analyst with Commerzbank, talks to Dukascopy TV following The World Gold Council's 2nd Quarter Gold Report. Carsten discusses the divergence between a hike in demand for physical gold and a drop in gold investment.

https://www.youtube.com/watch?v=jhaBETNH-0Y

![alt text](https://i.ytimg.com/vi/tFrOUuvT6AU/maxresdefault.jpg) 
https://www.youtube.com/watch?v=tFrOUuvT6AU

![alt text](https://i.ytimg.com/vi/_59b0ugMMVg/maxresdefault.jpg) 
https://www.youtube.com/watch?v=_59b0ugMMVg

![alt text](https://i.ytimg.com/vi/KrTOXtJG5dE/hqdefault.jpg) 

ОЛЕ ХАНСОН SAXO BANK. «Ситуация на рынке платины в данный момент понятна — прекращение работы такого крупного производителя, как южноафриканский Лонмин из-за забастовки оказывает влияние на весь рынок платины, цены выросли почти до полутора тысяч, причем в цене явно заложена премия за риск — в данном случае риск перебоев с поставками из-за продолжения забастовки, так же как в цене на нефть заложена своя премия за риск. Если цена поднимется выше 1500, то это может стать триггером для дальнейшего ралли, т. к. тогда на этот рынок могут выйти дэй-трейдеры и хедж-фонды

https://www.youtube.com/watch?v=KrTOXtJG5dE

![alt text](https://i.ytimg.com/vi/2JDUlTA5XyI/maxresdefault.jpg) 
Покупка фьючерсов на палладий

# Архитектура [Voltdb] хранение данных в памяти с концепцией распределенной организации
https://github.com/gridgentoo/voltdb

# Мост между VoltDB to Hive
https://github.com/gridgentoo/VoltDB_to_Hive_export

# Архитектура [CaffeOnSpark]  фреймворка для глубокого обучения!
Yahoo! также интегрировала Caffe со средой Apache Spark, создав распределённый фрэймворк CaffeOnSpark.

В апреле 2017 Facebook объявил о создании Caffe2, который включает в себя новые возможности, в частности рекуррентные нейронные сети.

Caffe — среда для глубинного обучения, разработанная Янцином Цзя (Yangqing Jia) в процессе подготовки своей диссертации в университете Беркли. Янцин Цзя в университете Беркли создал среду Caffe для поддержки глубинного обучения.Ключевым вопросом диссертации было обеспечение эффективной параллельной обработки многомерных матричных операций, для чего было принято решение создать фреймворк на основе математической библиотеки MATLAB и мультипроцессорной архитектуры CUDA.  Caffe поддерживает много типов машинного обучения, нацеленных в первую очередь на решение задач классификации и сегментации изображений. Caffe обеспечивает свёрточные нейронные сети, RCNN, долгую краткосрочную память и полносвязные нейронные сети.[8] При этом для ускорения обучения применяется система графических процессоров (GPU), поддерживаемая архитектурой CUDA, иcпользуются при этом процессоры CuDNN от фирмы Nvidia.  Caffe манипулирует блобами — многомерными массивами данных, которые используются в параллельных вычислениях, которые помещаются в CPU или GPU. Обучение в cвёрточной нейронной сети реализуется как параллельные многопроцессорные вычисления блобов от слоя к слою (прямым и обратным ходом). Solver (решатель) координирует весь процесс обучения — прямой ход от исходных к выходным данным, получение функции ошибок, обратный ход (Метод обратного распространения ошибки) назад от выходного слоя с использованием градиентов ошибок. 

https://drive.google.com/drive/folders/1-3HJ2vGw7JNlaupsuJKj6x-BFl-tEPRJ

![Image alt](https://78.media.tumblr.com/ca004ff94918dca10d533cd118c8a914/tumblr_inline_o2vo8lJDh81t17fny_540.jpg)
![Image alt](https://pbs.twimg.com/media/DZqtEIVX0AAd2bQ.jpg)

# Архитектура [deeplearning4j]  фреймворка для глубокого обучения
https://github.com/gridgentoo/deeplearning4j

https://drive.google.com/drive/folders/1urykDEER9tFap2weFVq2qPh5mz-r7svu

# Архитектура [deeplearning4j] фреймворка для глубокого обучения. 
Обучение в Deeplearning4j осуществляется через кластеры. Нейронные сети обучаются параллельно по итерациям, процесс поддерживается архитектурами Hadoop-YARN и Spark. Deeplearning4j осуществляет также интеграцию с ядром архитектуры CUDA для осуществления чистых операций с GPU и распределения операций на графических процессорах.
![Image alt](https://i2.wp.com/mesutpiskin.com/blog/wp-content/uploads/2017/09/dl4j-eco-tr.jpg.jpg)

# Архитектура [JanusGraph] graph database
https://github.com/gridgentoo/janusgraph

# Архитектура [PentahoPlatform]
![Image alt](https://i.ytimg.com/vi/7GIOgO9DzxY/hqdefault.jpg)

https://github.com/gridgentoo/PentahoPlatform

