.class public Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;
.super Ljava/lang/Object;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/fragments/GalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CatSet"
.end annotation


# instance fields
.field public catList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/fragments/GalleryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->this$0:Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->catList:Ljava/util/ArrayList;

    const-string p1, "none"

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;->title:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/fragments/GalleryFragment;Lcom/online/languages/study/studymaster/fragments/GalleryFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment$CatSet;-><init>(Lcom/online/languages/study/studymaster/fragments/GalleryFragment;)V

    return-void
.end method
