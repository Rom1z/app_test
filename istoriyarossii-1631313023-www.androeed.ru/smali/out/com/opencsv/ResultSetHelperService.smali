.class public Lcom/opencsv/ResultSetHelperService;
.super Ljava/lang/Object;
.source "ResultSetHelperService.java"

# interfaces
.implements Lcom/opencsv/ResultSetHelper;


# static fields
.field protected static final CLOBBUFFERSIZE:I = 0x800

.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "dd-MMM-yyyy"

.field static final DEFAULT_TIMESTAMP_FORMAT:Ljava/lang/String; = "dd-MMM-yyyy HH:mm:ss"

.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""


# instance fields
.field private dateFormat:Ljava/lang/String;

.field private dateTimeFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dd-MMM-yyyy"

    iput-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    const-string v0, "dd-MMM-yyyy HH:mm:ss"

    iput-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method private getColumnValue(Ljava/sql/ResultSet;IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x10

    const-string v1, ""

    if-eq p2, v0, :cond_b2

    const/16 v0, -0xf

    if-eq p2, v0, :cond_b2

    const/16 v0, -0x9

    if-eq p2, v0, :cond_b2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_ad

    const/16 v0, 0xc

    if-eq p2, v0, :cond_ad

    const/16 v0, 0x10

    if-eq p2, v0, :cond_a0

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_97

    const/16 v0, 0x7d5

    if-eq p2, v0, :cond_92

    const/16 v0, 0x7db

    if-eq p2, v0, :cond_8d

    const/4 v0, -0x7

    if-eq p2, v0, :cond_97

    const/4 v0, -0x6

    if-eq p2, v0, :cond_80

    const/4 v0, -0x5

    if-eq p2, v0, :cond_73

    packed-switch p2, :pswitch_data_c2

    packed-switch p2, :pswitch_data_d6

    move-object p2, v1

    goto/16 :goto_b6

    :pswitch_37
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p2

    invoke-virtual {p0, p2, p6}, Lcom/opencsv/ResultSetHelperService;->handleTimestamp(Ljava/sql/Timestamp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_b6

    :pswitch_41
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_b6

    :pswitch_4b
    invoke-direct {p0, p1, p3, p5}, Lcom/opencsv/ResultSetHelperService;->handleDate(Ljava/sql/ResultSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :pswitch_50
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :pswitch_5d
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :pswitch_6a
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_73
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_80
    :pswitch_80
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_8d
    invoke-direct {p0, p1, p3}, Lcom/opencsv/ResultSetHelperService;->handleNClob(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_92
    invoke-direct {p0, p1, p3}, Lcom/opencsv/ResultSetHelperService;->handleClob(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_97
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_a0
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_ad
    :pswitch_ad
    invoke-direct {p0, p1, p3, p4}, Lcom/opencsv/ResultSetHelperService;->handleVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_b6

    :cond_b2
    invoke-direct {p0, p1, p3, p4}, Lcom/opencsv/ResultSetHelperService;->handleNVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;

    move-result-object p2

    :goto_b6
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-nez p1, :cond_c0

    if-nez p2, :cond_bf

    goto :goto_c0

    :cond_bf
    move-object v1, p2

    :cond_c0
    :goto_c0
    return-object v1

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_6a
        :pswitch_6a
        :pswitch_80
        :pswitch_80
        :pswitch_5d
        :pswitch_6a
        :pswitch_50
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x5b
        :pswitch_4b
        :pswitch_41
        :pswitch_37
    .end packed-switch
.end method

.method private handleClob(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    if-eqz p1, :cond_17

    new-instance p2, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {p2}, Lorg/apache/commons/text/StrBuilder;-><init>()V

    invoke-interface {p1}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/text/StrBuilder;->readFrom(Ljava/lang/Readable;)I

    invoke-virtual {p2}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_17
    const-string p1, ""

    :goto_19
    return-object p1
.end method

.method private handleDate(Ljava/sql/ResultSet;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    if-eqz p1, :cond_10

    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_10
    const-string p1, ""

    :goto_12
    return-object p1
.end method

.method private handleNClob(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    if-eqz p1, :cond_17

    new-instance p2, Lorg/apache/commons/text/StrBuilder;

    invoke-direct {p2}, Lorg/apache/commons/text/StrBuilder;-><init>()V

    invoke-interface {p1}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/text/StrBuilder;->readFrom(Ljava/lang/Readable;)I

    invoke-virtual {p2}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_17
    const-string p1, ""

    :goto_19
    return-object p1
.end method

.method private handleNVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private handleVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method


# virtual methods
.method public getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_b

    :cond_1b
    return-object v0
.end method

.method public getColumnValues(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    :goto_b
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    if-gt v2, v3, :cond_26

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v5

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/opencsv/ResultSetHelperService;->getColumnValue(Ljava/sql/ResultSet;IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    return-object v1
.end method

.method protected handleTimestamp(Ljava/sql/Timestamp;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method
