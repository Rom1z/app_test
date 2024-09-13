.class Lcom/online/languages/study/studymaster/ExercisePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ExercisePagerAdapter.java"


# static fields
.field public static final CLICK_SOURCE_BUTTON:I = 0x2

.field private static final CLICK_SOURCE_OPTION:I = 0x1

.field public static final OPTION_CHECKED:Ljava/lang/String; = "checked"

.field public static final OPTION_UNCHECKED:Ljava/lang/String; = "unchecked"


# instance fields
.field private activeColor:I

.field private context:Landroid/content/Context;

.field private final correctColor:I

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field private dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field private disableColor:I

.field private final errorColor:I

.field private exOptTitleLong:Ljava/lang/String;

.field private exOptTitleLongLess:Ljava/lang/String;

.field private exOptTitleShort:Ljava/lang/String;

.field private exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

.field private lessOptions:Ljava/lang/Boolean;

.field private optionColor:I

.field shortTextTest:Z

.field private taskDelay:I

.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;"
        }
    .end annotation
.end field

.field private textLongNum:I

.field private type:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lessOptions:Ljava/lang/Boolean;

    const/16 v3, 0x708

    iput v3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->taskDelay:I

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->shortTextTest:Z

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->tasks:Ljava/util/ArrayList;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    const-string v4, "theme"

    const-string v5, "default"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget p1, p2, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->styleTheme:I

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v2, v0, [I

    const v3, 0x7f0400f5

    aput v3, v2, v1

    invoke-virtual {p2, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->optionColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v2, v0, [I

    const v3, 0x7f0400ee

    aput v3, v2, v1

    invoke-virtual {p2, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->disableColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v2, v0, [I

    const v3, 0x7f0400eb

    aput v3, v2, v1

    invoke-virtual {p2, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->activeColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v0, [I

    const v4, 0x7f0400f6

    aput v4, v3, v1

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->correctColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v0, v0, [I

    const v3, 0x7f0400f7

    aput v3, v0, v1

    invoke-virtual {v2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->errorColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110070

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exOptTitleShort:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11006e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exOptTitleLong:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11006f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exOptTitleLongLess:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a003c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->textLongNum:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->tasks:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->checkTestItemsLength(Ljava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->shortTextTest:Z

    return-void
.end method

.method private buildRadio(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lessOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const v0, 0x7f0c00e9

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_18

    :cond_11
    const v0, 0x7f0c00e8

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_18
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private changeHeight(Landroid/widget/LinearLayout;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p2, p2

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkItem(Landroid/view/ViewGroup;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;-><init>(Lcom/online/languages/study/studymaster/ExercisePagerAdapter;Landroid/view/ViewGroup;I)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkItemByRadio(Landroid/view/ViewGroup;I)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exCheckItem(Landroid/view/ViewGroup;II)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x384

    iput p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->taskDelay:I

    goto :goto_10

    :cond_c
    const/16 p1, 0x708

    iput p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->taskDelay:I

    :goto_10
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/ExercisePagerAdapter$1;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter$1;-><init>(Lcom/online/languages/study/studymaster/ExercisePagerAdapter;)V

    iget v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->taskDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkOptionsLength()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->textLongNum:I

    if-le v3, v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    const/4 v0, 0x1

    if-le v2, v0, :cond_2a

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lessOptions:Ljava/lang/Boolean;

    :cond_2a
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lessOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    :cond_44
    return-void
.end method

.method private checkTestItemsLength(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-gt v4, v5, :cond_29

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_42
    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0x7

    if-le v0, v2, :cond_49

    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method private getCheckedItemIndex(Landroid/view/ViewGroup;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return v0
.end method

.method private getCorrectTag(Landroid/view/ViewGroup;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->highlightCorrect(Landroid/view/ViewGroup;I)V

    return v0
.end method

.method private highlightCheckedItem(Landroid/view/ViewGroup;I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setDefaultRadio(Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    iget v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->activeColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f090210

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    iget v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->activeColor:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    return-void
.end method

.method private highlightCorrect(Landroid/view/ViewGroup;I)V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_ed

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checked"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f0901ea

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x32

    const v12, 0x7f0901ed

    const v13, 0x7f090210

    move/from16 v14, p2

    if-ne v2, v14, :cond_91

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    iget v8, v0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->correctColor:I

    invoke-static {v15, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_7c

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const v5, 0x7f090150

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_86

    :cond_7c
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_86
    const v5, 0x7f0901eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e9

    :cond_91
    if-nez v5, :cond_a4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_e9

    :cond_a4
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    iget v9, v0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->errorColor:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const v5, 0x7f090151

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const v5, 0x7f0901ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_e9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_ed
    return-void
.end method

.method private insertImage(Lcom/online/languages/study/studymaster/data/ExerciseTask;Landroid/view/View;I)V
    .registers 10

    const v0, 0x7f0900fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->fCounterInfoBox:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0900fd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0900fe

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09010c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900fc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    const/4 v4, 0x4

    if-ne p2, v4, :cond_46

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/pics/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 p3, 0x14

    invoke-direct {p2, p3, v2}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method private insertOptions(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->buildRadio(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private optionTextSize(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le p1, v1, :cond_2d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_2d
    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le p1, v1, :cond_51

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lessOptions:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0035

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_51
    return v0
.end method

.method private saveCompleted(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveCompleted(Ljava/lang/String;I)V

    return-void
.end method

.method private saveCorrect(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/DBHelper;->setWordResult(Ljava/lang/String;)V

    :cond_19
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->saveCompleted(Ljava/lang/String;I)V

    return-void
.end method

.method private saveError(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/DBHelper;->setError(Ljava/lang/String;)V

    :cond_13
    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->saveCompleted(Ljava/lang/String;I)V

    return-void
.end method

.method private setDefaultRadio(Landroid/view/ViewGroup;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->optionColor:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method private setExOptions(Landroid/view/ViewGroup;Lcom/online/languages/study/studymaster/data/ExerciseTask;)V
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_42

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    if-eq v5, v0, :cond_2f

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2f

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v5, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v5, 0x1

    :goto_30
    invoke-direct {p0, v2, v4, v5}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setTextStyleAndSize(Ljava/lang/String;Landroid/view/View;Z)V

    const v5, 0x7f0901ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_42
    return-void
.end method

.method private setExOptionss(Landroid/widget/RadioGroup;Lcom/online/languages/study/studymaster/data/ExerciseTask;)V
    .registers 11

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5a

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget v5, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    const/4 v6, 0x0

    if-eq v5, v0, :cond_38

    const/4 v7, 0x3

    if-eq v5, v7, :cond_38

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2c

    goto :goto_38

    :cond_2c
    invoke-virtual {v4, v6, v3}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->optionTextSize(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextSize(F)V

    goto :goto_54

    :cond_38
    :goto_38
    invoke-virtual {v4, v6, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_54

    iget-object v5, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextSize(F)V

    :cond_54
    :goto_54
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_5a
    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setDefaultRadio(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private setGroupPadding(Landroid/view/View;)V
    .registers 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->convertDimen(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setItemChecked(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const v3, 0x7f0901ea

    const v4, 0x7f090210

    if-ge v1, v2, :cond_2c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v5, "unchecked"

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    const-string p1, "checked"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setResponsesClick(ILandroid/view/ViewGroup;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_34

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "unchecked"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f090210

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v3, 0x7f0901ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$hSIxShVykooesRynVDeHc9vh25A;

    invoke-direct {v3, p0, p2, p1}, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$hSIxShVykooesRynVDeHc9vh25A;-><init>(Lcom/online/languages/study/studymaster/ExercisePagerAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_34
    return-void
.end method

.method private setTextStyle(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_e

    :cond_b
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_e
    iget v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x12

    if-le p2, v1, :cond_35

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0036

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_35
    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_42

    :cond_3a
    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->textLongSize(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_42
    return-void
.end method

.method private setTextStyleAndSize(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 5

    const v0, 0x7f0901ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    const/4 p3, 0x1

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x14

    if-le p1, p3, :cond_2a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0a002f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_48

    :cond_2a
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0a002e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_48

    :cond_3c
    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->optionTextSize(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_48
    return-void
.end method

.method private showCorrect(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0601e2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0601e3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->showCheckResult(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method private showErrorBanner(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    const v2, 0x7f06024a

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f06024b

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->showCheckResult(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method private textLongSize(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x3c

    if-le p1, v1, :cond_22

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_22
    const/16 v1, 0x96

    if-le p1, v1, :cond_33

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_33
    const/16 v1, 0xc8

    if-le p1, v1, :cond_44

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_44
    return v0
.end method


# virtual methods
.method public convertDimen(I)I
    .registers 4

    int-to-float p1, p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method exCheckItem(Landroid/view/ViewGroup;II)Z
    .registers 9

    sget-object p3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->getCheckedItemIndex(Landroid/view/ViewGroup;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->getCorrectTag(Landroid/view/ViewGroup;)I

    move-result v3

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    if-ne v2, v3, :cond_39

    sget-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz p3, :cond_35

    invoke-direct {p0, v1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->saveCorrect(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_35

    :cond_32
    invoke-direct {p0, v1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->saveCorrect(Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_35
    :goto_35
    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->showCorrect(Landroid/view/View;)V

    goto :goto_4e

    :cond_39
    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->showErrorBanner(Landroid/view/View;)V

    sget-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4a

    if-eqz p3, :cond_4d

    invoke-direct {p0, v1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->saveError(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_4d

    :cond_4a
    invoke-direct {p0, v1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->saveError(Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    :goto_4e
    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    iput v3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    new-instance v3, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    invoke-direct {v3, v4}, Lcom/online/languages/study/studymaster/data/ExerciseTask;-><init>(Lcom/online/languages/study/studymaster/data/ExerciseTask;)V

    iput-object v3, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    const v3, 0x7f090119

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090120

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09020e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iget-boolean v6, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->shortTextTest:Z

    if-eqz v6, :cond_47

    invoke-direct {p0, v5}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setGroupPadding(Landroid/view/View;)V

    :cond_47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lessOptions:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->checkOptionsLength()V

    iget-object v6, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v6, v6, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iget-object v8, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v8, v8, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    const/4 v8, -0x1

    invoke-static {v2, v8}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iput v7, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sget-object v7, Lcom/online/languages/study/studymaster/ExerciseActivity;->exShowTranscript:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_89

    sget v7, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8e

    :cond_89
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8e
    sget-object v7, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9c

    sget v7, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    invoke-direct {p0, v2, v7}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->changeHeight(Landroid/widget/LinearLayout;I)V

    goto :goto_a1

    :cond_9c
    sget v7, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtMoreHeight:I

    invoke-direct {p0, v2, v7}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->changeHeight(Landroid/widget/LinearLayout;I)V

    :goto_a1
    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_be

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c3

    :cond_be
    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    invoke-direct {p0, v2, v1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->insertImage(Lcom/online/languages/study/studymaster/data/ExerciseTask;Landroid/view/View;I)V

    :cond_c3
    invoke-direct {p0, v0, v5, v6}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->insertOptions(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exerciseTask:Lcom/online/languages/study/studymaster/data/ExerciseTask;

    invoke-direct {p0, v5, v0}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setExOptions(Landroid/view/ViewGroup;Lcom/online/languages/study/studymaster/data/ExerciseTask;)V

    invoke-direct {p0, p2, v5}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setResponsesClick(ILandroid/view/ViewGroup;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myview"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public synthetic lambda$checkItem$1$ExercisePagerAdapter(Landroid/view/ViewGroup;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->checkItemByRadio(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public synthetic lambda$setResponsesClick$0$ExercisePagerAdapter(Landroid/view/ViewGroup;ILandroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->setItemChecked(Landroid/view/ViewGroup;Landroid/view/View;)V

    sget-object p3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_27

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->getCheckedItemIndex(Landroid/view/ViewGroup;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_27

    invoke-direct {p0, p1, p3}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->highlightCheckedItem(Landroid/view/ViewGroup;I)V

    sget-object p3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_27

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    sput-object p3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->checkItem(Landroid/view/ViewGroup;I)V

    :cond_27
    return-void
.end method
