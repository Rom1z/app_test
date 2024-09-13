.class public Lorg/apache/commons/beanutils/DynaProperty;
.super Ljava/lang/Object;
.source "DynaProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BOOLEAN_TYPE:I = 0x1

.field private static final BYTE_TYPE:I = 0x2

.field private static final CHAR_TYPE:I = 0x3

.field private static final DOUBLE_TYPE:I = 0x4

.field private static final FLOAT_TYPE:I = 0x5

.field private static final INT_TYPE:I = 0x6

.field private static final LONG_TYPE:I = 0x7

.field private static final SHORT_TYPE:I = 0x8


# instance fields
.field protected transient contentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    :cond_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    iput-object p3, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    return-void
.end method

.method private readAnyClass(Ljava/io/ObjectInputStream;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    packed-switch p1, :pswitch_data_34

    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Invalid primitive type. Check version of beanutils used to serialize is compatible."

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_15
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_18
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_1b
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_1e
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_21
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_24
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_27
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_2a
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_2d
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->readAnyClass(Ljava/io/ObjectInputStream;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_12
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->readAnyClass(Ljava/io/ObjectInputStream;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    :cond_18
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeAnyClass(Ljava/lang/Class;Ljava/io/ObjectOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/io/ObjectOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_54

    :cond_c
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_54

    :cond_16
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x3

    goto :goto_54

    :cond_20
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x4

    goto :goto_54

    :cond_2a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x5

    goto :goto_54

    :cond_34
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x6

    goto :goto_54

    :cond_3e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x7

    goto :goto_54

    :cond_48
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x8

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    if-nez v0, :cond_5d

    invoke-virtual {p2, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {p2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_63

    :cond_5d
    invoke-virtual {p2, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_63
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->writeAnyClass(Ljava/lang/Class;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;->writeAnyClass(Ljava/lang/Class;Ljava/io/ObjectOutputStream;)V

    :cond_16
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_43

    instance-of v3, p1, Lorg/apache/commons/beanutils/DynaProperty;

    if-eqz v3, :cond_43

    check-cast p1, Lorg/apache/commons/beanutils/DynaProperty;

    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    if-nez v2, :cond_18

    iget-object v2, p1, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    if-nez v2, :cond_41

    goto :goto_20

    :cond_18
    iget-object v3, p1, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :goto_20
    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v2, :cond_29

    iget-object v2, p1, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v2, :cond_41

    goto :goto_31

    :cond_29
    iget-object v3, p1, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :goto_31
    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    iget-object p1, p1, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    if-nez v2, :cond_3a

    if-nez p1, :cond_41

    goto :goto_42

    :cond_3a
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    move v2, v0

    :cond_43
    return v2
.end method

.method public getContentType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v3, :cond_16

    const/4 v3, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    if-nez v2, :cond_22

    goto :goto_26

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_26
    add-int/2addr v0, v1

    return v0
.end method

.method public isIndexed()Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    :cond_e
    const-class v0, Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method public isMapped()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynaProperty[name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/beanutils/DynaProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/DynaProperty;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v1

    if-eqz v1, :cond_31

    :cond_22
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/DynaProperty;->contentType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
