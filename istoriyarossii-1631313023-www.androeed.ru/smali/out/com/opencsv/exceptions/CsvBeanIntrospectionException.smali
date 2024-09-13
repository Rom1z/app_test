.class public Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
.super Lcom/opencsv/exceptions/CsvRuntimeException;
.source "CsvBeanIntrospectionException.java"


# instance fields
.field private final transient bean:Ljava/lang/Object;

.field private final transient field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    iput-object p2, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    iput-object p2, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method private getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    invoke-super {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getBean()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v0, "opencsv"

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    const-string v0, "error.introspecting.field"

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getBean()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_40
    return-object v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
