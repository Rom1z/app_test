.class public final Lorg/apache/commons/collections/functors/StringValueTransformer;
.super Ljava/lang/Object;
.source "StringValueTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Transformer;

.field private static final serialVersionUID:J = 0x683cd3613f24060eL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/functors/StringValueTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/StringValueTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Transformer;
    .registers 1

    sget-object v0, Lorg/apache/commons/collections/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
