.class public Lcom/online/languages/study/studymaster/ExerciseActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "ExerciseActivity.java"


# static fields
.field static checkButton:Landroid/widget/Button; = null

.field static completed:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field static context:Landroid/content/Context; = null

.field static correctAnswers:I = 0x0

.field public static exButtonShow:Ljava/lang/Boolean; = null

.field public static exCheckedStatus:Ljava/lang/Boolean; = null

.field static exMarkTxt:Landroid/widget/TextView; = null

.field static exResultBox:Landroid/widget/LinearLayout; = null

.field static exResultTxt:Landroid/widget/TextView; = null

.field public static exShowTranscript:Ljava/lang/Boolean; = null

.field public static exTxtHeight:I = 0x78

.field public static exTxtMoreHeight:I = 0xa0

.field public static exType:I = 0x1

.field static exerciseField:Landroid/view/View;

.field static fCounterInfoBox:Landroid/widget/TextView;

.field public static fShowTranscript:Ljava/lang/Boolean;

.field static forceSave:Ljava/lang/Boolean;

.field private static mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field static resultShow:Ljava/lang/Boolean;

.field static revision:Ljava/lang/Boolean;

.field static saveStats:Ljava/lang/Boolean;

.field static taskCheckedStatus:I

.field static testing:Ljava/lang/Boolean;

.field static topicTag:Ljava/lang/String;

.field static viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

.field static wordListLength:I


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field btnBoxWrapper:Landroid/widget/LinearLayout;

.field btnGroupBox:Landroid/widget/LinearLayout;

.field btnResultBox:Landroid/widget/LinearLayout;

.field buttonsContainer:Landroid/view/View;

.field catWordsTxt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field easy_mode:Ljava/lang/Boolean;

.field public exCardHeight:I

.field public exCardMoreHeight:I

.field exQuestWrapper:Landroid/widget/LinearLayout;

.field private exSaveStatsRadio:Landroid/view/MenuItem;

.field private exShowBtnRadio:Landroid/view/MenuItem;

.field exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

.field exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

.field nextButton:Landroid/widget/Button;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field originWordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field phraseLayout:Ljava/lang/Boolean;

.field restore:Ljava/lang/Boolean;

.field savedWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field sectionOrder:I

.field tablet:Ljava/lang/Boolean;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field viewPagerAdapter:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

.field wordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->catWordsTxt:Ljava/util/ArrayList;

    const/16 v0, 0x14a

    iput v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCardHeight:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCardMoreHeight:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->tablet:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/ExerciseActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->startExercise()V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/ExerciseActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->showPage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/ExerciseActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->setCardHeight(I)V

    return-void
.end method

.method private animatedBtnHide()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/ExerciseActivity$4;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ExerciseActivity$4;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animatedBtnShow()V
    .registers 7

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->convertDimen(I)I

    move-result v2

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;

    invoke-direct {v3, v0, v2}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;-><init>(Landroid/view/View;I)V

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/online/languages/study/studymaster/ExerciseActivity$5;

    invoke-direct {v0, p0, v1, v2}, Lcom/online/languages/study/studymaster/ExerciseActivity$5;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;Landroid/view/View;I)V

    invoke-virtual {v3, v0}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->showBtn(Ljava/lang/Boolean;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->hideBtn(Ljava/lang/Boolean;)V

    :goto_d
    iget-object p2, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exShowBtnRadio:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private applySaveStatsStatus(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exSaveStatsRadio:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->restore:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->notifyNotSaved()V

    :cond_1a
    return-void
.end method

.method private changeExBtnStatus()V
    .registers 6

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnResultBox:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/ExerciseActivity$10;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/ExerciseActivity$10;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35

    :cond_33
    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "ex_buttons_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private changeSaveStatsStatus()V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "test_all_save"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->applySaveStatsStatus(Ljava/lang/Boolean;)V

    return-void
.end method

.method private disableButton(Landroid/widget/Button;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private static enableButton(Landroid/widget/Button;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public static exGoToResult()V
    .registers 15

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseField:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->resultShow:Ljava/lang/Boolean;

    sput v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    sget-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v4, 0x7f090108

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v5, 0x7f090109

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v6, 0x7f0900f5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v6, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v7, 0x7f090107

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    sget v8, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    if-eq v7, v8, :cond_42

    const/4 v7, 0x1

    goto :goto_43

    :cond_42
    const/4 v7, 0x0

    :goto_43
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    sget-object v8, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v9, 0x7f090230

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    sget-object v9, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_71
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_76
    if-ge v10, v9, :cond_82

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_76

    :cond_82
    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    int-to-double v9, v1

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    int-to-double v11, v1

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v11

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f110076

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    const v12, 0x7f06001f

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const-wide v12, 0x4057c00000000000L    # 95.0

    cmpl-double v14, v9, v12

    if-lez v14, :cond_ce

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f110075

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    const v12, 0x7f06001e

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const v12, 0x7f09006d

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_15c

    :cond_ce
    const-wide v12, 0x4053c00000000000L    # 79.0

    cmpl-double v14, v9, v12

    if-lez v14, :cond_fe

    const-wide/high16 v12, 0x4058000000000000L    # 96.0

    cmpg-double v14, v9, v12

    if-gez v14, :cond_fe

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f110078

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    const v12, 0x7f060021

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const v12, 0x7f09006f

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15c

    :cond_fe
    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    cmpl-double v14, v9, v12

    if-lez v14, :cond_12b

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    cmpg-double v14, v9, v12

    if-gez v14, :cond_12b

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f110074

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    const v12, 0x7f060020

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const v12, 0x7f09006b

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15c

    :cond_12b
    const-wide/high16 v12, 0x4035000000000000L    # 21.0

    cmpg-double v14, v9, v12

    if-gez v14, :cond_152

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f110077

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    const v12, 0x7f06001d

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const v12, 0x7f09006e

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15c

    :cond_152
    const v12, 0x7f09006c

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_15c
    sget-object v8, Lcom/online/languages/study/studymaster/ExerciseActivity;->exMarkTxt:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exMarkTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f110073

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    sget v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v2

    sget v11, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v0

    const/4 v0, 0x2

    double-to-int v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v0

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmpl-double v8, v9, v0

    if-lez v8, :cond_1a6

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    invoke-static {v0, v1, v11}, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveExResult(Ljava/lang/String;II)V

    sput v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    :cond_1a6
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/ExerciseActivity$7;

    invoke-direct {v1, v4, v7, v6}, Lcom/online/languages/study/studymaster/ExerciseActivity$7;-><init>(Landroid/view/View;ZLandroid/view/View;)V

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/ExerciseActivity$8;

    invoke-direct {v1, v5}, Lcom/online/languages/study/studymaster/ExerciseActivity$8;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getTasks()V
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const v1, 0x7f1101bd

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "test_all_limit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_20

    :cond_1e
    const/16 v0, 0x3c

    :goto_20
    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    const-string v2, "all_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x64

    :cond_2c
    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->originWordsList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->originWordsList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_49

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :cond_49
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "multichoice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    sget-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getMultiChoiceTaskList(Ljava/lang/String;)V

    :cond_5c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->generateTasks(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getMultiChoiceTaskList(Ljava/lang/String;)V

    :cond_72
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->shuffleTasks()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    return-void
.end method

.method public static goToNextTask()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    sput v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->checkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->checkButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->enableButton(Landroid/widget/Button;)V

    :cond_16
    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v0

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_26

    invoke-static {}, Lcom/online/languages/study/studymaster/ExerciseActivity;->exGoToResult()V

    goto :goto_30

    :cond_26
    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->setCurrentItem(IZ)V

    :goto_30
    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_3f
    return-void
.end method

.method private hideBtn(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->animatedBtnHide()V

    goto :goto_16

    :cond_a
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtMoreHeight:I

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->changeHeight(I)V

    :goto_16
    return-void
.end method

.method private manageCardHeight()V
    .registers 4

    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/online/languages/study/studymaster/ExerciseActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity$3;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private manageCardHeightAndButtons()V
    .registers 2

    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->changeHeight(I)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->manageCardHeight()V

    return-void
.end method

.method private restartFromMenu()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->originWordsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_d

    const/16 v0, 0xc8

    goto :goto_f

    :cond_d
    const/16 v0, 0x96

    :goto_f
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/ExerciseActivity$9;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/ExerciseActivity$9;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private restaureChecked(I)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-ne p1, v0, :cond_f

    sget-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->checkButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->disableButton(Landroid/widget/Button;)V

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    goto :goto_21

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnResultBox:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnGroupBox:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    :cond_21
    :goto_21
    return-void
.end method

.method public static saveCompleted(Ljava/lang/String;I)V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object p0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput p1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    sget-object p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->completed:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static saveExResult(Ljava/lang/String;II)V
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/online/languages/study/studymaster/DBHelper;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->forceSave:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/online/languages/study/studymaster/DBHelper;->setTestResult(Ljava/lang/String;IILjava/lang/Boolean;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->updateCatResult(Ljava/lang/String;I)V

    return-void
.end method

.method private setCardHeight(I)V
    .registers 4

    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private setExBtnStatus(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    :cond_d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    return-void
.end method

.method private setSaveStatsForAll()V
    .registers 5

    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3c

    const/4 v3, 0x4

    if-ne v0, v3, :cond_e

    goto :goto_3c

    :cond_e
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "full_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/ExerciseActivity;->applySaveStatsStatus(Ljava/lang/Boolean;)V

    :cond_2e
    sput-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exSaveStatsRadio:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    sput-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exSaveStatsRadio:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private showBtn(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->animatedBtnShow()V

    goto :goto_15

    :cond_a
    sget p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->changeHeight(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    return-void
.end method

.method public static showCheckResult(Landroid/view/View;Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    const-string p1, "Action"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    sput-object p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f090272

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-le p1, p2, :cond_2b

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_2b
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050011

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_43

    sget-object p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_43
    return-void
.end method

.method private showPage(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->fCounterInfoBox:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->enableButton(Landroid/widget/Button;)V

    :cond_36
    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_40

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->nextButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->disableButton(Landroid/widget/Button;)V

    :cond_40
    return-void
.end method

.method private startExercise()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->resultShow:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->restore:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getTasks()V

    sput v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->completed:Ljava/util/ArrayList;

    :cond_1b
    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->showPage(I)V

    new-instance v0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_4b

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_4b
    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public changeHeight(I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->convertDimen(I)I

    move-result p1

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_67
    return-void
.end method

.method public changeHeightAnimated(I)V
    .registers 7

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->convertDimen(I)I

    move-result p1

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;

    invoke-direct {v2, v0, p1}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;-><init>(Landroid/view/View;I)V

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/online/languages/study/studymaster/ExerciseActivity$6;

    invoke-direct {v0, p0, v1, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity$6;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;Landroid/view/View;I)V

    invoke-virtual {v2, v0}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public clickRestart(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->restartExercise()V

    return-void
.end method

.method public clickToNext(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/online/languages/study/studymaster/ExerciseActivity;->goToNextTask()V

    return-void
.end method

.method public convertDimen(I)I
    .registers 4

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public exCheck(Landroid/view/View;)V
    .registers 5

    sget-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->getCurrentItem()I

    move-result p1

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p1, v2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->exCheckItem(Landroid/view/ViewGroup;II)Z

    const/4 v0, 0x1

    sput v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordListLength:I

    sub-int/2addr v1, v0

    if-lt p1, v1, :cond_4b

    sget-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnResultBox:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnGroupBox:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sput v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    :cond_4b
    return-void
.end method

.method public exShowResult(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/online/languages/study/studymaster/ExerciseActivity;->exGoToResult()V

    return-void
.end method

.method public notifyNotSaved()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/ExerciseActivity$11;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ExerciseActivity$11;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->setContentView(I)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const v0, 0x7f0902e4

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f110225

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->setTitle(I)V

    sput-object v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    sput-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCheckedStatus:Ljava/lang/Boolean;

    sput-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->revision:Ljava/lang/Boolean;

    sput-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->testing:Ljava/lang/Boolean;

    sput-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->resultShow:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "cat_tag"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v5, "data_mode"

    const-string v6, "2"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    const-string v6, "starred"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    const-string v7, "errors"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    const-string v7, "revise"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :cond_a8
    iput-object v3, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->easy_mode:Ljava/lang/Boolean;

    :cond_aa
    sput-object v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->forceSave:Ljava/lang/Boolean;

    sput v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->topicTag:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v6, "starred_save_type"

    const-string v7, "0"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    sput-object v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->forceSave:Ljava/lang/Boolean;

    goto :goto_cb

    :cond_c9
    sput-object v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->forceSave:Ljava/lang/Boolean;

    :cond_cb
    :goto_cb
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "ex_type"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    sput-object v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->fShowTranscript:Ljava/lang/Boolean;

    sput-object p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v5, "ex_buttons_show"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v5, "transcript_show"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v5, "transcript_show_ex"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_103

    const/4 v0, 0x1

    goto :goto_104

    :cond_103
    const/4 v0, 0x0

    :goto_104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v5, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v6, "test_all_save"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exShowTranscript:Ljava/lang/Boolean;

    const v0, 0x7f0902b7

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->fCounterInfoBox:Landroid/widget/TextView;

    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->checkButton:Landroid/widget/Button;

    const v0, 0x7f090102

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->nextButton:Landroid/widget/Button;

    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnResultBox:Landroid/widget/LinearLayout;

    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnGroupBox:Landroid/widget/LinearLayout;

    const v1, 0x7f09010b

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exQuestWrapper:Landroid/widget/LinearLayout;

    const v1, 0x7f09007a

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnBoxWrapper:Landroid/widget/LinearLayout;

    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v1, 0x7f090109

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultTxt:Landroid/widget/TextView;

    const v1, 0x7f090108

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exMarkTxt:Landroid/widget/TextView;

    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseField:Landroid/view/View;

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v5, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    const v6, 0x7f0900f5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sget-object v6, Lcom/online/languages/study/studymaster/ExerciseActivity;->checkButton:Landroid/widget/Button;

    new-instance v7, Lcom/online/languages/study/studymaster/-$$Lambda$la4ihW8qUJnmQjTYqWrw1B-FoS0;

    invoke-direct {v7, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$la4ihW8qUJnmQjTYqWrw1B-FoS0;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->nextButton:Landroid/widget/Button;

    new-instance v7, Lcom/online/languages/study/studymaster/-$$Lambda$q3rG1r62FRkwkKvtt6RucrdAO9c;

    invoke-direct {v7, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$q3rG1r62FRkwkKvtt6RucrdAO9c;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/online/languages/study/studymaster/-$$Lambda$bLlzwD-UVkI0BXuC6qf1b2EMny4;

    invoke-direct {v6, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$bLlzwD-UVkI0BXuC6qf1b2EMny4;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/online/languages/study/studymaster/-$$Lambda$jd-zNiCVve2uIur6ZWY2YmktmBI;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$jd-zNiCVve2uIur6ZWY2YmktmBI;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->setExBtnStatus(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a003d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a003e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtMoreHeight:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a002c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCardHeight:I

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a002d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exCardMoreHeight:I

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_21a

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    add-int/lit8 v1, v1, -0x14

    sput v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtHeight:I

    sget v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtMoreHeight:I

    add-int/lit8 v1, v1, -0x1e

    sput v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtMoreHeight:I

    :cond_21a
    const v1, 0x7f0902b9

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    sput-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->setPagingEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnGroupBox:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dataItems"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->originWordsList:Ljava/util/ArrayList;

    new-instance v0, Lcom/online/languages/study/studymaster/data/ExerciseController;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/ExerciseController;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->completed:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->restore:Ljava/lang/Boolean;

    if-eqz p1, :cond_281

    const-string v0, "result_show"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "checked_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    if-nez v0, :cond_281

    iput-object v4, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->restore:Ljava/lang/Boolean;

    const-string v0, "controller"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/ExerciseController;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    const-string v0, "correct"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    const-string v0, "completed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->completed:Ljava/util/ArrayList;

    sget p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    if-lez p1, :cond_281

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->restaureChecked(I)V

    :cond_281
    const/16 p1, 0xc8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->restore:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28c

    goto :goto_28e

    :cond_28c
    const/16 v2, 0xc8

    :goto_28e
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/ExerciseActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/ExerciseActivity$1;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    int-to-long v1, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    new-instance v0, Lcom/online/languages/study/studymaster/ExerciseActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/ExerciseActivity$2;-><init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900f7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exShowBtnRadio:Landroid/view/MenuItem;

    const v0, 0x7f0902c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exSaveStatsRadio:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exShowBtnRadio:Landroid/view/MenuItem;

    sget-object v1, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->saveStats:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->applySaveStatsStatus(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->setSaveStatsForAll()V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_42

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_42
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_28

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->changeSaveStatsStatus()V

    return v1

    :sswitch_11
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->restartFromMenu()V

    return v1

    :sswitch_15
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->changeExBtnStatus()V

    return v1

    :sswitch_19
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v1

    :sswitch_1f
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v1

    :sswitch_data_28
    .sparse-switch
        0x102002c -> :sswitch_1f
        0x7f0900e3 -> :sswitch_19
        0x7f0900f7 -> :sswitch_15
        0x7f090228 -> :sswitch_11
        0x7f0902c4 -> :sswitch_d
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->resultShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->viewPager:Lcom/online/languages/study/studymaster/adapters/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/CustomViewPager;->setCurrentItem(I)V

    :cond_e
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    const-string v1, "controller"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->wordList:Ljava/util/ArrayList;

    const-string v1, "dataItems"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->correctAnswers:I

    const-string v1, "correct"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->completed:Ljava/util/ArrayList;

    const-string v1, "completed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->resultShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "result_show"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    const-string v1, "checked_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public openResult(Landroid/view/View;)V
    .registers 10

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/ExerciseResultActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseController:Lcom/online/languages/study/studymaster/data/ExerciseController;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    new-instance v3, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v3}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iget-object v4, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v4, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object v4, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, v3, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    sget-object v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->completed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v6, v2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    iget-object v7, v5, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget v5, v5, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput v5, v3, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    goto :goto_3a

    :cond_55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_59
    const-string v1, "dataItems"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public restartExercise()V
    .registers 4

    invoke-static {}, Lcom/online/languages/study/studymaster/ExerciseActivity;->goToNextTask()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnResultBox:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity;->btnGroupBox:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exResultBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseField:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sput v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->taskCheckedStatus:I

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->getTasks()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->startExercise()V

    return-void
.end method
