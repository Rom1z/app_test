.class public final Lorg/apache/commons/beanutils/converters/ConverterFacade;
.super Ljava/lang/Object;
.source "ConverterFacade.java"

# interfaces
.implements Lorg/apache/commons/beanutils/Converter;


# instance fields
.field private final converter:Lorg/apache/commons/beanutils/Converter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/Converter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ConverterFacade;->converter:Lorg/apache/commons/beanutils/Converter;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Converter is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/ConverterFacade;->converter:Lorg/apache/commons/beanutils/Converter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConverterFacade["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/ConverterFacade;->converter:Lorg/apache/commons/beanutils/Converter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
