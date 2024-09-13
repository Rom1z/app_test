.class public Lcom/online/languages/study/studymaster/data/ExDataItem;
.super Ljava/lang/Object;
.source "ExDataItem.java"


# instance fields
.field public answer:Ljava/lang/String;

.field public quest:Ljava/lang/String;

.field public questInfo:Ljava/lang/String;

.field public savedInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->quest:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->answer:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->savedInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->quest:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->questInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->answer:Ljava/lang/String;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/data/ExDataItem;->savedInfo:Ljava/lang/String;

    return-void
.end method
