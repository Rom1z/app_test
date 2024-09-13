.class public final synthetic Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/online/languages/study/studymaster/FullDetailActivity;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;->f$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;->f$0:Lcom/online/languages/study/studymaster/FullDetailActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->lambda$checkTTSIntent$1$FullDetailActivity(Landroid/content/Intent;)V

    return-void
.end method
