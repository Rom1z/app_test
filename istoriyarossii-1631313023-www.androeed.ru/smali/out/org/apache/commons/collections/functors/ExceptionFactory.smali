.class public final Lorg/apache/commons/collections/functors/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Factory;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/functors/ExceptionFactory;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/ExceptionFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/ExceptionFactory;->INSTANCE:Lorg/apache/commons/collections/Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Factory;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionFactory;->INSTANCE:Lorg/apache/commons/collections/Factory;

    return-object v0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "ExceptionFactory invoked"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
