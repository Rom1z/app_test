.class Lcom/online/languages/study/studymaster/ProgressStatsActivity$1;
.super Ljava/lang/Object;
.source "ProgressStatsActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/ProgressStatsActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ProgressStatsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ProgressStatsActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ProgressStatsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity$1;->this$0:Lcom/online/languages/study/studymaster/ProgressStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity$1;->this$0:Lcom/online/languages/study/studymaster/ProgressStatsActivity;

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->access$000(Lcom/online/languages/study/studymaster/ProgressStatsActivity;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
