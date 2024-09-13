.class public Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;
.super Ljava/lang/Object;
.source "TestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/data/TestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultCategory"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public dataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public errors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/online/languages/study/studymaster/data/TestResult;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/data/TestResult;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->this$0:Lcom/online/languages/study/studymaster/data/TestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    return-void
.end method
