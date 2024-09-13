.class public Lorg/apache/commons/collections/functors/ForClosure;
.super Ljava/lang/Object;
.source "ForClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field static synthetic class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x10842851d0d342aaL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;

.field private final iCount:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/collections/Closure;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    iput-object p2, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .registers 3

    if-lez p0, :cond_f

    if-nez p1, :cond_5

    goto :goto_f

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    return-object p1

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/functors/ForClosure;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/ForClosure;-><init>(ILorg/apache/commons/collections/Closure;)V

    return-object v0

    :cond_f
    :goto_f
    sget-object p0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.ForClosure"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/ForClosure;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "org.apache.commons.collections.functors.ForClosure"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/ForClosure;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/ForClosure;->class$org$apache$commons$collections$functors$ForClosure:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections/Closure;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    return v0
.end method
