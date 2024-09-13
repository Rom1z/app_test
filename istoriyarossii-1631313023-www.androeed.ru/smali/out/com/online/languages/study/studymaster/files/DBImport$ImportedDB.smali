.class Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;
.super Ljava/lang/Object;
.source "DBImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/files/DBImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportedDB"
.end annotation


# instance fields
.field dbVersion:Ljava/lang/String;

.field tables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/online/languages/study/studymaster/files/DBImport;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/files/DBImport;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->this$0:Lcom/online/languages/study/studymaster/files/DBImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    return-void
.end method
