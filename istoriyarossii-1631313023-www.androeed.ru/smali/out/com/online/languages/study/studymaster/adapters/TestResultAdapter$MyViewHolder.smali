.class Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TestResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field contentBox:Landroid/widget/LinearLayout;

.field errorsCount:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field taskCount:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09025d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f090253

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    const p1, 0x7f0902b4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->taskCount:Landroid/widget/TextView;

    const p1, 0x7f0900f1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->errorsCount:Landroid/widget/TextView;

    const p1, 0x7f09010f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method
