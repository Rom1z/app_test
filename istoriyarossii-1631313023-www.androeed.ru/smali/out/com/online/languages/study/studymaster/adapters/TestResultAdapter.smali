.class public Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TestResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private expand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    :goto_10
    iput-boolean p2, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->expand:Z

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->expand:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;I)V
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->categoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->taskCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110144

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->errorsCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->context:Landroid/content/Context;

    const v3, 0x7f110142

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->content:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$1;-><init>(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0060

    const-string v1, "closed"

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-boolean p2, p0, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->expand:Z

    if-eqz p2, :cond_c3

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    const-string v1, "open"

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f080089

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;->contentBox:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0061

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    :cond_c3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00ea

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;Landroid/view/View;)V

    return-object p2
.end method
