.class Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;
.super Ljava/lang/Object;
.source "TestResultAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

.field final synthetic val$holder:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->val$holder:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->val$holder:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->val$holder:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->val$holder:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->access$000(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;->val$holder:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_32
    return-void
.end method
