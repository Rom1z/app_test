.class public Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;
.super Ljava/lang/Object;
.source "DBImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/files/DBImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CatDataLine"
.end annotation


# instance fields
.field public catId:Ljava/lang/String;

.field public progress:Ljava/lang/String;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/files/DBImport;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/files/DBImport;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;->this$0:Lcom/online/languages/study/studymaster/files/DBImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
