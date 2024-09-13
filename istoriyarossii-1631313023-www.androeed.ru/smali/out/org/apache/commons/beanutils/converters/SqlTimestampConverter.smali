.class public final Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;
.super Lorg/apache/commons/beanutils/converters/DateTimeConverter;
.source "SqlTimestampConverter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getDefaultType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method protected getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 4

    const/4 v0, 0x3

    if-nez p1, :cond_8

    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_c

    :cond_8
    invoke-static {v0, v0, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_c
    if-eqz p2, :cond_11

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_11
    return-object p1
.end method
