.class Lcom/online/languages/study/studymaster/fragments/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/fragments/HomeFragment$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/HomeFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/HomeFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/HomeFragment;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/HomeFragment;->access$000(Lcom/online/languages/study/studymaster/fragments/HomeFragment;Landroid/view/View;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
