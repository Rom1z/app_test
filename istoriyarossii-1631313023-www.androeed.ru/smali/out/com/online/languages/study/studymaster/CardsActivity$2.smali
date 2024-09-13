.class Lcom/online/languages/study/studymaster/CardsActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CardsActivity;->startFlashcard(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CardsActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CardsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CardsActivity$2$1;-><init>(Lcom/online/languages/study/studymaster/CardsActivity$2;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
