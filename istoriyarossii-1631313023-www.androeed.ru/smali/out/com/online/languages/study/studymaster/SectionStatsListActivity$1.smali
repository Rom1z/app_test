.class Lcom/online/languages/study/studymaster/SectionStatsListActivity$1;
.super Ljava/lang/Object;
.source "SectionStatsListActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/SectionStatsListActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SectionStatsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/SectionStatsListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SectionStatsListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionStatsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionStatsListActivity;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->onListItemClick(I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
