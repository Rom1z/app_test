.class Lorg/apache/commons/collections/ReferenceMap$KeyIterator;
.super Lorg/apache/commons/collections/ReferenceMap$EntryIterator;
.source "ReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/ReferenceMap;Lorg/apache/commons/collections/ReferenceMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;->nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
