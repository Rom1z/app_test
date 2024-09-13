.class Lorg/apache/commons/collections/BeanMap$9;
.super Ljava/util/AbstractSet;
.source "BeanMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/BeanMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BeanMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$9;->this$0:Lorg/apache/commons/collections/BeanMap;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$9;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/BeanMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$9;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-static {v0}, Lorg/apache/commons/collections/BeanMap;->access$000(Lorg/apache/commons/collections/BeanMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
