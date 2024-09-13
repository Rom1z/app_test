.class public Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuListAdapter.java"


# instance fields
.field private activeItem:I

.field private activeItemResourceId:I

.field private ctx:Landroid/content/Context;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field hideItem:I

.field private icons:[I

.field private lInflater:Landroid/view/LayoutInflater;

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->icons:[I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->titles:[Ljava/lang/String;

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->activeItem:I

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->ctx:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->lInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->ctx:Landroid/content/Context;

    const-string v3, "theme"

    const-string v4, "default"

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget p2, v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    new-array p3, p3, [I

    const v0, 0x7f0402d7

    const/4 v1, 0x0

    aput v0, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->activeItemResourceId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_5c
    .array-data 4
        0x7f0800c8
        0x7f0800c7
        0x7f0800d4
        0x7f0800d5
        0x7f0800cd
        0x7f0800d1
        0x7f0800c9
        0x7f0800cf
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->titles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->titles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->lInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c009f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->activeItem:I

    if-ne p1, v0, :cond_17

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->activeItemResourceId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_17
    const v0, 0x7f09019b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->icons:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090197

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->titles:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    const v3, 0x7f0c00d3

    if-ne p1, v2, :cond_50

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    if-nez v2, :cond_50

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->lInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v3, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_50
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5f

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v2, v2, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    if-nez v2, :cond_5f

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/MenuListAdapter;->lInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v3, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_5f
    const/4 p3, 0x4

    if-eq p1, p3, :cond_66

    const/16 p3, 0x8

    if-ne p1, p3, :cond_69

    :cond_66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_69
    return-object p2
.end method
