.class Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;
.super Ljava/lang/Object;
.source "CatListActivity.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/CatListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecyclerTouchListener"
.end annotation


# instance fields
.field private clicklistener:Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;

.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/CatListActivity;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/CatListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;)V
    .registers 7

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;->this$0:Lcom/online/languages/study/studymaster/CatListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;->clicklistener:Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener$1;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener$1;-><init>(Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;Lcom/online/languages/study/studymaster/CatListActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;->clicklistener:Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/online/languages/study/studymaster/CatListActivity$RecyclerTouchListener;->clicklistener:Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/online/languages/study/studymaster/CatListActivity$ClickListener;->onClick(Landroid/view/View;I)V

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    return-void
.end method
