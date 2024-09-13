.class public Lcom/opencsv/bean/concurrent/OrderedObject;
.super Ljava/lang/Object;
.source "OrderedObject.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final ordinal:J


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->ordinal:J

    iput-object p3, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    iget-wide v0, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->ordinal:J

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getOrdinal()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public getElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrdinal()J
    .registers 3

    iget-wide v0, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->ordinal:J

    return-wide v0
.end method
