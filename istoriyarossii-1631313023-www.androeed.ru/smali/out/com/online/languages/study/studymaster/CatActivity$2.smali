.class Lcom/online/languages/study/studymaster/CatActivity$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "CatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CatActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CatActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity$2;->this$0:Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity$2;->this$0:Lcom/online/languages/study/studymaster/CatActivity;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/CatActivity;->access$000(Lcom/online/languages/study/studymaster/CatActivity;)V

    return-void
.end method

.method public onAdLoaded()V
    .registers 1

    return-void
.end method
