.class public final synthetic Lcom/online/languages/study/studymaster/-$$Lambda$E0_8JLGoZu6986NVo4-II76Dsw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/online/languages/study/studymaster/ScrollingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/online/languages/study/studymaster/ScrollingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/-$$Lambda$E0_8JLGoZu6986NVo4-II76Dsw4;->f$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/-$$Lambda$E0_8JLGoZu6986NVo4-II76Dsw4;->f$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->finish()V

    return-void
.end method
