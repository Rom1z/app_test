.class Lcom/online/languages/study/studymaster/fragments/StatsFragment$1;
.super Ljava/lang/Object;
.source "StatsFragment.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/fragments/StatsFragment$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/StatsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->access$000(Lcom/online/languages/study/studymaster/fragments/StatsFragment;Landroid/view/View;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
