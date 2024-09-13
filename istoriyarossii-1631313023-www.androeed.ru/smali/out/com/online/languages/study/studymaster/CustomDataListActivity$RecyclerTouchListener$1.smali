.class Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomDataListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;

.field final synthetic val$clicklistener:Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;

.field final synthetic val$recycleView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$this$0:Lcom/online/languages/study/studymaster/CustomDataListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;Lcom/online/languages/study/studymaster/CustomDataListActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;)V
    .registers 5

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->this$1:Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->val$this$0:Lcom/online/languages/study/studymaster/CustomDataListActivity;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->val$recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->val$clicklistener:Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->val$recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->val$clicklistener:Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$RecyclerTouchListener$1;->val$recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_1d
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
