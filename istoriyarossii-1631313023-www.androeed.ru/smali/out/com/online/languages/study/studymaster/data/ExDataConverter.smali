.class public Lcom/online/languages/study/studymaster/data/ExDataConverter;
.super Ljava/lang/Object;
.source "ExDataConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;
    }
.end annotation


# instance fields
.field public addData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field public directData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public inverseData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExDataItem;",
            ">;"
        }
    .end annotation
.end field

.field limit:I

.field private words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->directData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->inverseData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->addData:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    iput p3, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->limit:I

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/ExDataConverter;->checkProgress()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/ExDataConverter;->convert()V

    return-void
.end method

.method private checkProgress()V
    .registers 7

    iget v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->limit:I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_70

    new-instance v0, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/ExDataConverter;Lcom/online/languages/study/studymaster/data/ExDataConverter$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v4, v3, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_47

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->limit:I

    if-ge v2, v3, :cond_66

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    :cond_66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    :cond_70
    return-void
.end method

.method private convert()V
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v4, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->directData:Ljava/util/ArrayList;

    new-instance v6, Lcom/online/languages/study/studymaster/data/ExDataItem;

    invoke-direct {v6, v2, v3, v4, v1}, Lcom/online/languages/study/studymaster/data/ExDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_25
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->inverseData:Ljava/util/ArrayList;

    new-instance v5, Lcom/online/languages/study/studymaster/data/ExDataItem;

    invoke-direct {v5, v2, v3, v1}, Lcom/online/languages/study/studymaster/data/ExDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_48
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter;->addData:Ljava/util/ArrayList;

    new-instance v5, Lcom/online/languages/study/studymaster/data/ExDataItem;

    invoke-direct {v5, v2, v3, v1}, Lcom/online/languages/study/studymaster/data/ExDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_6b
    return-void
.end method
