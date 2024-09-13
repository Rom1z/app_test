.class public Lcom/online/languages/study/studymaster/data/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field public author:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public weblink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ImageData;->weblink:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    iput-object p5, p0, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataItem()Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    return-object v0
.end method
