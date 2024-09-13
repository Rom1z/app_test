.class public final Lorg/apache/commons/collections/functors/NullPredicate;
.super Ljava/lang/Object;
.source "NullPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Predicate;

.field private static final serialVersionUID:J = 0x688d610bc4aab5e4L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/functors/NullPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/NullPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Predicate;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
