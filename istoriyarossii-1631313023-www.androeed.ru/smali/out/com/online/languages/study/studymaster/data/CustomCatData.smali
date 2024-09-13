.class public Lcom/online/languages/study/studymaster/data/CustomCatData;
.super Ljava/lang/Object;
.source "CustomCatData.java"


# instance fields
.field public customItemsCount:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->customItemsCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->words:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->customItemsCount:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->title:Ljava/lang/String;

    iput p2, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->customItemsCount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->words:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public updateData()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CustomCatData;->customItemsCount:I

    return-void
.end method
