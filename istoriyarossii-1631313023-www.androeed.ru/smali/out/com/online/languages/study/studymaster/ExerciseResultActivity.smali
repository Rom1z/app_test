.class public Lcom/online/languages/study/studymaster/ExerciseResultActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "ExerciseResultActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field mAdapter:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

.field originList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field testResult:Lcom/online/languages/study/studymaster/data/TestResult;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f010022

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c0034

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dataItems"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->originList:Ljava/util/ArrayList;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f110203

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->setTitle(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->originList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v2}, Lcom/online/languages/study/studymaster/data/TestResult;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/TestResult;->errorSections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_67

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/TestResult;->errorSections:Ljava/util/ArrayList;

    goto :goto_6b

    :cond_67
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/TestResult;->errorCategories:Ljava/util/ArrayList;

    :goto_6b
    const v1, 0x7f090222

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/TestResultAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const p1, 0x7f0902b5

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f0900f2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09026e

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902ba

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f110227

    invoke-virtual {p0, v5}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->originList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f110202

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object v6, v6, Lcom/online/languages/study/studymaster/data/TestResult;->testErrors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f110201

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/TestResult;->unanswered:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->originList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/TestResult;->testErrors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->testResult:Lcom/online/languages/study/studymaster/data/TestResult;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/TestResult;->unanswered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->originList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->getColorFromAttr(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->finish()V

    const/4 p1, 0x0

    const v0, 0x7f010022

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_15
    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public openView(Landroid/view/View;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const v0, 0x7f090253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09025d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0a0060

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "closed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0xc8

    const-string v6, "open"

    if-eqz v3, :cond_77

    invoke-virtual {v0, p1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p1, 0x7f0a0061

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x7f080089

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v7, 0x0

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;

    invoke-direct {v3, v0, p1, v7}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;-><init>(Landroid/view/View;II)V

    const-wide/16 v7, 0xaa

    invoke-virtual {v3, v7, v8}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/online/languages/study/studymaster/ExerciseResultActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity$1;-><init>(Lcom/online/languages/study/studymaster/ExerciseResultActivity;Landroid/view/View;)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_77
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_92

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;-><init>(Lcom/online/languages/study/studymaster/ExerciseResultActivity;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_92
    return-void
.end method
