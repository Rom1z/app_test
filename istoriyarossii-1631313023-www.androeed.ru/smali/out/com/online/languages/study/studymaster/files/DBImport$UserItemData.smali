.class public Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;
.super Ljava/lang/Object;
.source "DBImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/files/DBImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserItemData"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public itemErrors:Ljava/lang/String;

.field public itemInfo:Ljava/lang/String;

.field public itemProgress:Ljava/lang/String;

.field public itemScore:Ljava/lang/String;

.field public itemStarred:Ljava/lang/String;

.field public itemStatus:Ljava/lang/String;

.field public itemTime:Ljava/lang/String;

.field public itemTimeError:Ljava/lang/String;

.field public itemTimeStarred:Ljava/lang/String;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/files/DBImport;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/files/DBImport;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->this$0:Lcom/online/languages/study/studymaster/files/DBImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
