.class public Lcom/online/languages/study/studymaster/ScrollingActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "ScrollingActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

.field floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field fullDetail:Landroid/view/MenuItem;

.field fullDetailSet:Ljava/lang/String;

.field itemPostion:I

.field screemTop:Landroid/view/View;

.field sourceType:I

.field starStatusChanged:Ljava/lang/Boolean;

.field starrable:Ljava/lang/Boolean;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->itemPostion:I

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starrable:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starStatusChanged:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/ScrollingActivity;Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ScrollingActivity;->changeStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private changeDialogSize(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/online/languages/study/studymaster/ScrollingActivity;->convertDimen(I)I

    move-result p4

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/online/languages/study/studymaster/ScrollingActivity;->convertDimen(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private changeStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v2, "#gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const-string v2, ""

    :goto_13
    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->limitMessage()V

    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ScrollingActivity;->checkStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private checkStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    iget p2, p2, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f040360

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    const/16 v1, 0x15

    if-eqz p1, :cond_41

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_35

    const p1, 0x7f0800eb

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_55

    :cond_35
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ed

    invoke-static {p1, v0, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p1

    goto :goto_55

    :cond_41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_4a

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_55

    :cond_4a
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ea

    invoke-static {p1, v0, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p1

    :goto_55
    iget-object p2, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private getInfoTxtSize()I
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v2, "detail_txt_size"

    const-string v3, "medium"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_26
    const-string v2, "large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_39
    return v0
.end method

.method private manageTitle(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/lang/String;)V
    .registers 6

    const v0, 0x7f0902df

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, " "

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_17
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_28

    const v1, 0x7f120121

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_49

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_49
    return-void
.end method

.method private openDetail()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/FullDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starrable:Ljava/lang/Boolean;

    const-string v2, "starrable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_detail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const v0, 0x7f01001e

    const v1, 0x7f010023

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->overridePendingTransition(II)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starStatusChanged:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/-$$Lambda$E0_8JLGoZu6986NVo4-II76Dsw4;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$E0_8JLGoZu6986NVo4-II76Dsw4;-><init>(Lcom/online/languages/study/studymaster/ScrollingActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public convertDimen(I)I
    .registers 4

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public finish()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->itemPostion:I

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, v2, v0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->setResult(ILandroid/content/Intent;)V

    :goto_1d
    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->finish()V

    const v0, 0x7f010022

    invoke-virtual {p0, v2, v0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public limitMessage()V
    .registers 3

    const v0, 0x7f1101d7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->itemPostion:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "starrable"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starrable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->sourceType:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v2, "full_version"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_58

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starrable:Ljava/lang/Boolean;

    :cond_58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starStatusChanged:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->appSettings:Landroid/content/SharedPreferences;

    const v3, 0x7f110195

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "set_full_detail"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->fullDetailSet:Ljava/lang/String;

    const p1, 0x7f0c0023

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v3, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDetailFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;

    move-result-object v4

    iput-object v4, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v4, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getDataItemById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v4

    iput-object v4, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    const-string v5, "not found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    invoke-virtual {v3, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDataItemFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v3

    new-instance v4, Lcom/online/languages/study/studymaster/data/DetailItem;

    invoke-direct {v4, v3}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Lcom/online/languages/study/studymaster/data/DataItem;)V

    iput-object v4, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iput v2, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->sourceType:I

    :cond_be
    const v3, 0x7f090181

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09017f

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090053

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09023d

    invoke-virtual {p0, v6}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09023e

    invoke-virtual {p0, v7}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->screemTop:Landroid/view/View;

    const v7, 0x7f0900b1

    invoke-virtual {p0, v7}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget v8, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->sourceType:I

    if-ne v8, v2, :cond_10b

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a005b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/online/languages/study/studymaster/ScrollingActivity;->changeDialogSize(Landroid/view/View;Landroid/view/View;II)V

    :cond_10b
    iget-object v8, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v8, v8, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12f

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/16 v9, 0x82

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/online/languages/study/studymaster/ScrollingActivity;->changeDialogSize(Landroid/view/View;Landroid/view/View;II)V

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12f
    const v5, 0x7f0902e5

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v6, 0x7f090121

    invoke-virtual {p0, v6}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v6, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v6, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->starrable:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_162

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/online/languages/study/studymaster/ScrollingActivity$1;

    invoke-direct {v7, p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity$1;-><init>(Lcom/online/languages/study/studymaster/ScrollingActivity;Z)V

    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_162
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->itemPostion:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->manageTitle(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getInfoTxtSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f110052

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a8

    const/4 p1, 0x4

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1a8
    const p1, 0x7f090159

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/pics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->themeTitle:Ljava/lang/String;

    const-string v0, "westworld"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->checkStarStatus(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/ScrollingActivity$2;-><init>(Lcom/online/languages/study/studymaster/ScrollingActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090136

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->fullDetail:Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->fullDetailSet:Ljava/lang/String;

    const-string v0, "popup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3c

    iget p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->sourceType:I

    if-eq p1, v0, :cond_3c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3c

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->fullDetail:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity;->screemTop:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_b

    return v1

    :cond_b
    const v2, 0x7f090136

    if-ne v0, v2, :cond_14

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ScrollingActivity;->openDetail()V

    return v1

    :cond_14
    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
