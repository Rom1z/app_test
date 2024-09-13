.class Lcom/opencsv/bean/IterableCSVToBean$1;
.super Ljava/lang/Object;
.source "IterableCSVToBean.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opencsv/bean/IterableCSVToBean;->iterator(Lcom/opencsv/bean/IterableCSVToBean;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private nextBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/opencsv/bean/IterableCSVToBean;

.field final synthetic val$bean:Lcom/opencsv/bean/IterableCSVToBean;


# direct methods
.method constructor <init>(Lcom/opencsv/bean/IterableCSVToBean;Lcom/opencsv/bean/IterableCSVToBean;)V
    .registers 3

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->this$0:Lcom/opencsv/bean/IterableCSVToBean;

    iput-object p2, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->val$bean:Lcom/opencsv/bean/IterableCSVToBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->nextBean:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->val$bean:Lcom/opencsv/bean/IterableCSVToBean;

    invoke-virtual {v0}, Lcom/opencsv/bean/IterableCSVToBean;->nextLine()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->nextBean:Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_e} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_e} :catch_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_15
    .catch Ljava/beans/IntrospectionException; {:try_start_6 .. :try_end_e} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_e} :catch_11
    .catch Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_1d

    :catch_f
    move-exception v0

    goto :goto_1a

    :catch_11
    move-exception v0

    goto :goto_1a

    :catch_13
    move-exception v0

    goto :goto_1a

    :catch_15
    move-exception v0

    goto :goto_1a

    :catch_17
    move-exception v0

    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->nextBean:Ljava/lang/Object;

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/opencsv/bean/IterableCSVToBean$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->nextBean:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->nextBean:Ljava/lang/Object;

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/bean/IterableCSVToBean$1;->this$0:Lcom/opencsv/bean/IterableCSVToBean;

    invoke-static {v1}, Lcom/opencsv/bean/IterableCSVToBean;->access$000(Lcom/opencsv/bean/IterableCSVToBean;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "read.only.iterator"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
