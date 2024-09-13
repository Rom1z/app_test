.class Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;
.super Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;
.source "FullDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/FullDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeakMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/FullDetailActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public callHint()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->access$100(Lcom/online/languages/study/studymaster/FullDetailActivity;)V

    return-void
.end method

.method public callMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;->this$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-static {v0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->access$000(Lcom/online/languages/study/studymaster/FullDetailActivity;I)V

    return-void
.end method
