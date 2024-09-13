.class public Lcom/opencsv/ResultSetColumnNameHelperService;
.super Lcom/opencsv/ResultSetHelperService;
.source "ResultSetColumnNameHelperService.java"

# interfaces
.implements Lcom/opencsv/ResultSetHelper;


# instance fields
.field private columnHeaders:[Ljava/lang/String;

.field private final columnNamePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private columnNames:[Ljava/lang/String;

.field private errorLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/ResultSetHelperService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method private getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, p1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_22
    iget-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private hasInvalidValue([Ljava/lang/String;)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method private populateColumnData(Ljava/sql/ResultSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/opencsv/ResultSetHelperService;->getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    if-nez v0, :cond_1a

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_53

    aget-object v4, v0, v3

    invoke-static {p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_36

    iget-object v6, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    const-string v1, "opencsv"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "column.nonexistant"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    return-void
.end method


# virtual methods
.method public getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    :cond_b
    iget-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    :cond_b
    const/4 v0, 0x0

    const-string v1, "dd-MMM-yyyy"

    const-string v2, "dd-MMM-yyyy HH:mm:ss"

    invoke-super {p0, p1, v0, v1, v2}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    :cond_b
    const-string v0, "dd-MMM-yyyy"

    const-string v1, "dd-MMM-yyyy HH:mm:ss"

    invoke-super {p0, p1, p2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setColumnNames([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    array-length v0, p2

    array-length v1, p1

    const-string v2, "opencsv"

    if-ne v0, v1, :cond_49

    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->hasInvalidValue([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0, p2}, Lcom/opencsv/ResultSetColumnNameHelperService;->hasInvalidValue([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    return-void

    :cond_25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "header.name.bogus"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "column.name.bogus"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "column.count.mismatch"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    return-void
.end method
