.class public Lcom/online/languages/study/studymaster/data/DetailItem;
.super Ljava/lang/Object;
.source "DetailItem.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public img_info:Ljava/lang/String;

.field public map:Ljava/lang/String;

.field public speak_text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/data/DataItem;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    iput-object p5, p0, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    return-void
.end method
