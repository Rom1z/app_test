.class Lorg/apache/commons/collections/CursorableLinkedList$Listable;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listable"
.end annotation


# instance fields
.field private _next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field private _prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field private _val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iput-object p3, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-object v0
.end method

.method prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-object v0
.end method

.method setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-void
.end method

.method setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-void
.end method

.method setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-object v0
.end method

.method value()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-object v0
.end method
