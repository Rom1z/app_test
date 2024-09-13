.class public Lorg/apache/commons/collections/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;

.field private static final INDENT_STRING:Ljava/lang/String; = "    "


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/MapUtils;->EMPTY_MAP:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/MapUtils;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugPrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    return-void
.end method

.method public static fixedSizeMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/map/FixedSizeMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static fixedSizeSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_2d

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2d

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_f
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1b

    new-instance p1, Ljava/lang/Boolean;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1b
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_2d

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_2a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2c

    :cond_2a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2c
    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_7

    return p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;)B
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;B)B
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    if-nez p0, :cond_7

    return p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;)D
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;D)D
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_7

    return-wide p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Float;

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;)F
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;F)F
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_7

    return p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;I)I
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_7

    return p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;)J
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;J)J
    .registers 4

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_7

    return-wide p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 2

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;
    .registers 2

    if-eqz p0, :cond_1e

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1e

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_f
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1e

    :try_start_13
    check-cast p0, Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0
    :try_end_1d
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    return-object p2
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Short;

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p1
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;)S
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;S)S
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    if-nez p0, :cond_7

    return p2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p0

    :goto_8
    return-object p2
.end method

.method public static invertMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_29
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazyMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazyMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method protected static logInfo(Ljava/lang/Exception;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INFO: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static multiValueMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->decorate(Ljava/util/Map;)Lorg/apache/commons/collections/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Map;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->decorate(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static orderedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->decorate(Ljava/util/Map;)Lorg/apache/commons/collections/OrderedMap;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static printIndent(Ljava/io/PrintStream;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public static putAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .registers 8

    invoke-interface {p0}, Ljava/util/Map;->size()I

    if-eqz p1, :cond_86

    array-length v0, p1

    if-nez v0, :cond_a

    goto/16 :goto_86

    :cond_a
    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v2, v1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_26

    :goto_11
    array-length v1, p1

    if-ge v0, v1, :cond_86

    aget-object v1, p1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_26
    instance-of v2, v1, Lorg/apache/commons/collections/KeyValue;

    if-eqz v2, :cond_3f

    :goto_2a
    array-length v1, p1

    if-ge v0, v1, :cond_86

    aget-object v1, p1, v0

    check-cast v1, Lorg/apache/commons/collections/KeyValue;

    invoke-interface {v1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3f
    instance-of v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    :goto_45
    array-length v3, p1

    if-ge v1, v3, :cond_86

    aget-object v3, p1, v1

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    if-eqz v3, :cond_5e

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5e

    aget-object v4, v3, v0

    aget-object v3, v3, v2

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Invalid array element: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    :goto_75
    array-length v1, p1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_86

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    add-int/lit8 v3, v1, 0x1

    aget-object v1, p1, v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_75

    :cond_86
    :goto_86
    return-object p0
.end method

.method public static safeAddToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p2, :cond_8

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_8
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    return-void
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/ResourceBundle;)Ljava/util/Map;
    .registers 5

    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1d
    return-object v1
.end method

.method public static toProperties(Ljava/util/Map;)Ljava/util/Properties;
    .registers 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p0, :cond_27

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedSortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static typedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TypedMap;->decorate(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static typedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TypedSortedMap;->decorate(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/map/UnmodifiableMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static verbosePrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    return-void
.end method

.method private static verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V
    .registers 11

    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    const-string v0, "null"

    const-string v1, " = "

    if-nez p2, :cond_19

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_19
    if-eqz p1, :cond_21

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    const-string p1, "{"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_5f

    invoke-virtual {p3, v2}, Lorg/apache/commons/collections/ArrayStack;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    if-nez v3, :cond_59

    move-object v3, v0

    :cond_59
    check-cast v2, Ljava/util/Map;

    invoke-static {p0, v3, v2, p3, p4}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    goto :goto_38

    :cond_5f
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v4

    invoke-static {p0, v4}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lorg/apache/commons/collections/ArrayStack;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_77

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_a7

    :cond_77
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v3, :cond_85

    const-string v3, "(this Map)"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_a7

    :cond_85
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "(ancestor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "] Map)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_a7
    if-eqz p4, :cond_bd

    if-eqz v2, :cond_bd

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_bd
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_38

    :cond_c2
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    if-eqz p4, :cond_e8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "} "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ea

    :cond_e8
    const-string p1, "}"

    :goto_ea
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
