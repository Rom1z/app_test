.class public Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotesArchiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

.field private clickActive:Z

.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;"
        }
    .end annotation
.end field

.field private popupwindow_obj:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/NotesArchiveActivity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;",
            "Lcom/online/languages/study/studymaster/NotesArchiveActivity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->dataList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->activity:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->clickActive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;)Lcom/online/languages/study/studymaster/NotesArchiveActivity;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->activity:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->popupwindow_obj:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$102(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->popupwindow_obj:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)Landroid/widget/PopupWindow;
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->popupDisplay(Lcom/online/languages/study/studymaster/data/DataObject;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->clickActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->clickActionPopup(Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V

    return-void
.end method

.method private clickActionPopup(Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->clickActive:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V

    const-wide/16 p1, 0x50

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private manageMoreView(Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 5

    const v0, 0x7f0901e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    const-string p2, "hide"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    :cond_25
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method private popupDisplay(Lcom/online/languages/study/studymaster/data/DataObject;)Landroid/widget/PopupWindow;
    .registers 7

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00d5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090058

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$4;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public countPos()I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    const-string v0, "last"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x2

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    const-string v1, "last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->manageMoreView(Landroid/view/View;Lcom/online/languages/study/studymaster/data/DataObject;)V

    :cond_25
    iget-object v0, p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->wrap:Landroid/view/View;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->settings:Landroid/view/View;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_22

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0109

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_22
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;-><init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Landroid/view/View;)V

    return-object p1
.end method
