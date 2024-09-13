.class public Lcom/online/languages/study/studymaster/data/CatData;
.super Ljava/lang/Object;
.source "CatData.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public ex_txt_trsb:I

.field public info_item:I

.field public item_info:I

.field public progress:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->ex_txt_trsb:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->ex_txt_trsb:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/CatData;->tag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/CatData;->countProgress()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput p2, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput p3, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->ex_txt_trsb:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/CatData;->tag:Ljava/lang/String;

    iput p2, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput p3, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput p4, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->ex_txt_trsb:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/CatData;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/CatData;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->ex_txt_trsb:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/CatData;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/online/languages/study/studymaster/data/CatData;->updateData(Ljava/lang/String;I)V

    return-void
.end method

.method private countProgress()I
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/data/CatData;->info_item:I

    iget v1, p0, Lcom/online/languages/study/studymaster/data/CatData;->item_info:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    if-le v0, v1, :cond_d

    const/16 v0, 0x64

    :cond_d
    return v0
.end method

.method private updateData(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
