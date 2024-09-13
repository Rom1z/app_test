.class public Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "FullDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/FullDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TtsUtteranceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/FullDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDone$0$FullDetailActivity$TtsUtteranceListener()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0800da

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public synthetic lambda$onStart$1$FullDetailActivity$TtsUtteranceListener()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0800d9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    new-instance v0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$TtsUtteranceListener$C1Nr3oL0XjqECd4ek2A5gcb1ogU;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$TtsUtteranceListener$C1Nr3oL0XjqECd4ek2A5gcb1ogU;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;)V

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    new-instance v0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$TtsUtteranceListener$3gcoaWec-FNk4e5qGIFSYWJYXJA;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$TtsUtteranceListener$3gcoaWec-FNk4e5qGIFSYWJYXJA;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;)V

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
