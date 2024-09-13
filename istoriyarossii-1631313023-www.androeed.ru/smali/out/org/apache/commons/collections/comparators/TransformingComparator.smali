.class public Lorg/apache/commons/collections/comparators/TransformingComparator;
.super Ljava/lang/Object;
.source "TransformingComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field protected decorated:Ljava/util/Comparator;

.field protected transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/comparators/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/commons/collections/comparators/ComparableComparator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections/Transformer;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Transformer;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
