.class Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
.super Ljava/io/LineNumberReader;
.source "ExtendedProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ExtendedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertiesReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public readProperty()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_3a

    invoke-static {v1}, Lorg/apache/commons/collections/ExtendedProperties;->access$000(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    :cond_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method
