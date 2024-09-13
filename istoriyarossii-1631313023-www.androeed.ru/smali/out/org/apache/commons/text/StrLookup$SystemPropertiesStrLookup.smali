.class Lorg/apache/commons/text/StrLookup$SystemPropertiesStrLookup;
.super Lorg/apache/commons/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/text/StrLookup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/text/StrLookup$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_c

    :try_start_7
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    :cond_c
    return-object v1
.end method
