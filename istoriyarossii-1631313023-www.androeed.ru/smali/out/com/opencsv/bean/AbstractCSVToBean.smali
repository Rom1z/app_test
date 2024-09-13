.class public abstract Lcom/opencsv/bean/AbstractCSVToBean;
.super Ljava/lang/Object;
.source "AbstractCSVToBean.java"


# instance fields
.field private editorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyEditor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCSVToBean;->editorMap:Ljava/util/Map;

    return-void
.end method

.method private addEditorToMap(Ljava/lang/Class;Ljava/beans/PropertyEditor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyEditor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/opencsv/bean/AbstractCSVToBean;->editorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method private trimmableProperty(Ljava/beans/PropertyDescriptor;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "String"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method protected checkForTrim(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_c

    invoke-direct {p0, p2}, Lcom/opencsv/bean/AbstractCSVToBean;->trimmableProperty(Ljava/beans/PropertyDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method protected convertValue(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/opencsv/bean/AbstractCSVToBean;->getPropertyEditor(Ljava/beans/PropertyDescriptor;)Ljava/beans/PropertyEditor;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, Ljava/beans/PropertyEditor;->setAsText(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/beans/PropertyEditor;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_d
    return-object p1
.end method

.method protected abstract getPropertyEditor(Ljava/beans/PropertyDescriptor;)Ljava/beans/PropertyEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method protected getPropertyEditorValue(Ljava/lang/Class;)Ljava/beans/PropertyEditor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/beans/PropertyEditor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/AbstractCSVToBean;->editorMap:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCSVToBean;->editorMap:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/opencsv/bean/AbstractCSVToBean;->editorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyEditor;

    if-nez v0, :cond_1c

    invoke-static {p1}, Ljava/beans/PropertyEditorManager;->findEditor(Ljava/lang/Class;)Ljava/beans/PropertyEditor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/opencsv/bean/AbstractCSVToBean;->addEditorToMap(Ljava/lang/Class;Ljava/beans/PropertyEditor;)V

    :cond_1c
    return-object v0
.end method
