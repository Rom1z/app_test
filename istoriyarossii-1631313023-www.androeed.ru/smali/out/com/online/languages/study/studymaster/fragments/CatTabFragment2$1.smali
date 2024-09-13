.class Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$1;
.super Ljava/lang/Object;
.source "CatTabFragment2.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$1;->this$0:Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2$1;->this$0:Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;->access$000(Lcom/online/languages/study/studymaster/fragments/CatTabFragment2;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
