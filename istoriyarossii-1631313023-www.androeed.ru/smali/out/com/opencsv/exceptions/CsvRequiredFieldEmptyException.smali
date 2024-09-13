.class public Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
.super Lcom/opencsv/exceptions/CsvException;
.source "CsvRequiredFieldEmptyException.java"


# instance fields
.field private final beanClass:Ljava/lang/Class;

.field private final transient destinationField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationField:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getBeanClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->beanClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDestinationField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->destinationField:Ljava/lang/reflect/Field;

    return-object v0
.end method
