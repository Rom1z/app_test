.class public Lorg/apache/commons/collections/iterators/EmptyListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.source "EmptyListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# static fields
.field public static final INSTANCE:Ljava/util/ListIterator;

.field public static final RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/EmptyListIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->INSTANCE:Ljava/util/ListIterator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method
