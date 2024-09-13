.class public Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
.super Lcom/opencsv/exceptions/CsvException;
.source "CsvDataTypeMismatchException.java"


# instance fields
.field private final destinationClass:Ljava/lang/Class;

.field private final transient sourceObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getDestinationClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSourceObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    return-object v0
.end method
