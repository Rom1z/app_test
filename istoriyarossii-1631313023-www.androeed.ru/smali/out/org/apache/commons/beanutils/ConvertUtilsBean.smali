.class public Lorg/apache/commons/beanutils/ConvertUtilsBean;
.super Ljava/lang/Object;
.source "ConvertUtilsBean.java"


# static fields
.field private static final SPACE:Ljava/lang/Character;

.field private static final ZERO:Ljava/lang/Integer;

.field private static defaultShort:Ljava/lang/Short;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final converters:Lorg/apache/commons/beanutils/WeakFastHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/WeakFastHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBoolean:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultByte:Ljava/lang/Byte;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultCharacter:Ljava/lang/Character;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultDouble:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultFloat:Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultInteger:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultLong:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Character;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->SPACE:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    const-class v1, Lorg/apache/commons/beanutils/ConvertUtils;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    new-instance v1, Ljava/lang/Character;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/lang/Character;-><init>(C)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    new-instance v1, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    new-instance v1, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->deregister()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    return-void
.end method

.method protected static getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getInstance()Lorg/apache/commons/beanutils/BeanUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    return-object v0
.end method

.method private register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/converters/ConverterFacade;

    invoke-direct {v0, p2}, Lorg/apache/commons/beanutils/converters/ConverterFacade;-><init>(Lorg/apache/commons/beanutils/Converter;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method private registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            "ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p3, :cond_11

    new-instance p3, Lorg/apache/commons/beanutils/converters/ArrayConverter;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    goto :goto_16

    :cond_11
    new-instance p3, Lorg/apache/commons/beanutils/converters/ArrayConverter;

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;I)V

    :goto_16
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    return-void
.end method

.method private registerArrays(ZI)V
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/LongConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/math/BigDecimal;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/math/BigInteger;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Boolean;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Byte;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Character;

    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Double;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Float;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Long;

    new-instance v1, Lorg/apache/commons/beanutils/converters/LongConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Short;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/String;

    new-instance v1, Lorg/apache/commons/beanutils/converters/StringConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/StringConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ClassConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ClassConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/util/Date;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DateConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/util/Calendar;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DateConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/io/File;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FileConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FileConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/sql/Date;

    new-instance v1, Lorg/apache/commons/beanutils/converters/SqlDateConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/SqlDateConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/sql/Time;

    new-instance v1, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/sql/Timestamp;

    new-instance v1, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    const-class v0, Ljava/net/URL;

    new-instance v1, Lorg/apache/commons/beanutils/converters/URLConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/URLConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    return-void
.end method

.method private registerOther(Z)V
    .registers 5

    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/beanutils/converters/ClassConverter;

    if-eqz p1, :cond_b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/ClassConverter;-><init>()V

    goto :goto_e

    :cond_b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/ClassConverter;-><init>(Ljava/lang/Object;)V

    :goto_e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/util/Date;

    new-instance v2, Lorg/apache/commons/beanutils/converters/DateConverter;

    if-eqz p1, :cond_1b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>()V

    goto :goto_1e

    :cond_1b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>(Ljava/lang/Object;)V

    :goto_1e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/util/Calendar;

    new-instance v2, Lorg/apache/commons/beanutils/converters/CalendarConverter;

    if-eqz p1, :cond_2b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/CalendarConverter;-><init>()V

    goto :goto_2e

    :cond_2b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/CalendarConverter;-><init>(Ljava/lang/Object;)V

    :goto_2e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/io/File;

    new-instance v2, Lorg/apache/commons/beanutils/converters/FileConverter;

    if-eqz p1, :cond_3b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/FileConverter;-><init>()V

    goto :goto_3e

    :cond_3b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/FileConverter;-><init>(Ljava/lang/Object;)V

    :goto_3e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/sql/Date;

    new-instance v2, Lorg/apache/commons/beanutils/converters/SqlDateConverter;

    if-eqz p1, :cond_4b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/SqlDateConverter;-><init>()V

    goto :goto_4e

    :cond_4b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/SqlDateConverter;-><init>(Ljava/lang/Object;)V

    :goto_4e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/sql/Time;

    new-instance v2, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;

    if-eqz p1, :cond_5b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;-><init>()V

    goto :goto_5e

    :cond_5b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;-><init>(Ljava/lang/Object;)V

    :goto_5e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/sql/Timestamp;

    new-instance v2, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;

    if-eqz p1, :cond_6b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;-><init>()V

    goto :goto_6e

    :cond_6b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;-><init>(Ljava/lang/Object;)V

    :goto_6e
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/net/URL;

    if-eqz p1, :cond_7b

    new-instance p1, Lorg/apache/commons/beanutils/converters/URLConverter;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/converters/URLConverter;-><init>()V

    goto :goto_80

    :cond_7b
    new-instance p1, Lorg/apache/commons/beanutils/converters/URLConverter;

    invoke-direct {p1, v1}, Lorg/apache/commons/beanutils/converters/URLConverter;-><init>(Ljava/lang/Object;)V

    :goto_80
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    return-void
.end method

.method private registerPrimitives(Z)V
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    if-eqz p1, :cond_a

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    goto :goto_f

    :cond_a
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    :goto_f
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    if-eqz p1, :cond_1c

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    goto :goto_21

    :cond_1c
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    :goto_21
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    if-eqz p1, :cond_2e

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    goto :goto_33

    :cond_2e
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->SPACE:Ljava/lang/Character;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    :goto_33
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    if-eqz p1, :cond_40

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    goto :goto_45

    :cond_40
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    :goto_45
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    if-eqz p1, :cond_52

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    goto :goto_57

    :cond_52
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    :goto_57
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    if-eqz p1, :cond_64

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    goto :goto_69

    :cond_64
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    :goto_69
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/LongConverter;

    if-eqz p1, :cond_76

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    goto :goto_7b

    :cond_76
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    :goto_7b
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eqz p1, :cond_88

    new-instance p1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    goto :goto_8f

    :cond_88
    new-instance p1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    sget-object v1, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {p1, v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    :goto_8f
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    return-void
.end method

.method private registerStandard(ZZ)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, v0

    goto :goto_7

    :cond_5
    sget-object v1, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    :goto_7
    if-eqz p2, :cond_b

    move-object v2, v0

    goto :goto_12

    :cond_b
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_12
    if-eqz p2, :cond_16

    move-object v3, v0

    goto :goto_1d

    :cond_16
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_1d
    if-eqz p2, :cond_21

    move-object v4, v0

    goto :goto_23

    :cond_21
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_23
    if-eqz p2, :cond_27

    move-object v5, v0

    goto :goto_29

    :cond_27
    sget-object v5, Lorg/apache/commons/beanutils/ConvertUtilsBean;->SPACE:Ljava/lang/Character;

    :goto_29
    if-eqz p2, :cond_2c

    goto :goto_2e

    :cond_2c
    const-string v0, ""

    :goto_2e
    const-class p2, Ljava/math/BigDecimal;

    if-eqz p1, :cond_38

    new-instance v2, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>()V

    goto :goto_3e

    :cond_38
    new-instance v6, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    invoke-direct {v6, v2}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>(Ljava/lang/Object;)V

    move-object v2, v6

    :goto_3e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/math/BigInteger;

    new-instance v2, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;

    if-eqz p1, :cond_4b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>()V

    goto :goto_4e

    :cond_4b
    invoke-direct {v2, v3}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>(Ljava/lang/Object;)V

    :goto_4e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Boolean;

    new-instance v2, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    if-eqz p1, :cond_5b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    goto :goto_5e

    :cond_5b
    invoke-direct {v2, v4}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    :goto_5e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Byte;

    new-instance v2, Lorg/apache/commons/beanutils/converters/ByteConverter;

    if-eqz p1, :cond_6b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    goto :goto_6e

    :cond_6b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    :goto_6e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Character;

    new-instance v2, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    if-eqz p1, :cond_7b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    goto :goto_7e

    :cond_7b
    invoke-direct {v2, v5}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    :goto_7e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Double;

    new-instance v2, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    if-eqz p1, :cond_8b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    goto :goto_8e

    :cond_8b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    :goto_8e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Float;

    new-instance v2, Lorg/apache/commons/beanutils/converters/FloatConverter;

    if-eqz p1, :cond_9b

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    goto :goto_9e

    :cond_9b
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    :goto_9e
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Integer;

    new-instance v2, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    if-eqz p1, :cond_ab

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    goto :goto_ae

    :cond_ab
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    :goto_ae
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Long;

    new-instance v2, Lorg/apache/commons/beanutils/converters/LongConverter;

    if-eqz p1, :cond_bb

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    goto :goto_be

    :cond_bb
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    :goto_be
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/Short;

    if-eqz p1, :cond_cb

    new-instance v1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    goto :goto_d1

    :cond_cb
    new-instance v2, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_d1
    invoke-direct {p0, p2, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class p2, Ljava/lang/String;

    if-eqz p1, :cond_de

    new-instance p1, Lorg/apache/commons/beanutils/converters/StringConverter;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/converters/StringConverter;-><init>()V

    goto :goto_e3

    :cond_de
    new-instance p1, Lorg/apache/commons/beanutils/converters/StringConverter;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/StringConverter;-><init>(Ljava/lang/Object;)V

    :goto_e3
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_8
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "\'"

    if-nez p1, :cond_32

    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Convert null value to type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_63

    :cond_32
    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Convert type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' to type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_63
    :goto_63
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    const-string v1, "  Using converter "

    if-eqz v0, :cond_8b

    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_87
    invoke-interface {v0, p2, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_8b
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cd

    if-eqz p1, :cond_cd

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_cd

    const-class p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p2

    if-eqz p2, :cond_c3

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_bd
    const-class v0, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_c3
    if-eqz p1, :cond_cd

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_cd

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_cd
    return-object p1
.end method

.method public convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2f
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    if-nez v0, :cond_3b

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    :cond_3b
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Using converter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_59
    invoke-interface {v0, p2, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert String["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] to class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3a
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    if-nez v0, :cond_46

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    :cond_46
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Using converter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_64
    array-length v1, p1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_6a
    array-length v3, p1

    if-ge v2, v3, :cond_79

    aget-object v3, p1, v2

    invoke-interface {v0, p2, v3}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_79
    return-object v1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_16

    return-object v0

    :cond_16
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1e

    return-object v0

    :cond_1e
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2d
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public deregister()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerPrimitives(Z)V

    invoke-direct {p0, v0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerStandard(ZZ)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerOther(Z)V

    invoke-direct {p0, v0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrays(ZI)V

    const-class v0, Ljava/math/BigDecimal;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    const-class v0, Ljava/math/BigInteger;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    return-void
.end method

.method public deregister(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDefaultBoolean()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDefaultByte()B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getDefaultCharacter()C
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public getDefaultDouble()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultFloat()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getDefaultInteger()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultLong()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultShort()S
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/beanutils/Converter;

    return-object p1
.end method

.method public lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    if-eqz p2, :cond_55

    if-nez p1, :cond_9

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_31

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p2

    if-nez p2, :cond_28

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_22

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    :cond_22
    const-class p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p2

    :cond_28
    if-nez p2, :cond_30

    const-class p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p2

    :cond_30
    return-object p2

    :cond_31
    const-class v1, [Ljava/lang/String;

    if-ne p2, v1, :cond_50

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-nez p2, :cond_43

    const-class p2, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_47

    :cond_43
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    :cond_47
    if-nez v0, :cond_4f

    const-class p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    :cond_4f
    return-object v0

    :cond_50
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object p1

    return-object p1

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target type is missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/Converter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(ZZI)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerPrimitives(Z)V

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerStandard(ZZ)V

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerOther(Z)V

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrays(ZI)V

    return-void
.end method

.method public setDefaultBoolean(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    iput-object p1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    new-instance p1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultByte(B)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    new-instance p1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultCharacter(C)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    new-instance p1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultDouble(D)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    new-instance p1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    iget-object p2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    iget-object p2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    const-class p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultFloat(F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    new-instance p1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultInteger(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    new-instance p1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultLong(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    new-instance p1, Lorg/apache/commons/beanutils/converters/LongConverter;

    iget-object p2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/LongConverter;

    iget-object p2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    const-class p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultShort(S)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    new-instance p1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    sget-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    new-instance p1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    sget-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    return-void
.end method
