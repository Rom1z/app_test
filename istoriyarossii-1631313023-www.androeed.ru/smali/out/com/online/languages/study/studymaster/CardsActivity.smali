.class public Lcom/online/languages/study/studymaster/CardsActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "CardsActivity.java"


# static fields
.field public static exButtonShow:Ljava/lang/Boolean;

.field public static fMixWords:Ljava/lang/Boolean;

.field public static fPhraseLayout:Ljava/lang/Boolean;

.field public static fRevertData:Ljava/lang/Boolean;

.field public static fShowTranscript:Ljava/lang/Boolean;

.field public static fShowTranslate:Ljava/lang/Boolean;


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field counter:I

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field easy_mode:Ljava/lang/Boolean;

.field private exShowBtnRadio:Landroid/view/MenuItem;

.field fCounterInfoBox:Landroid/widget/TextView;

.field private fRemixStatusCheckbox:Landroid/view/MenuItem;

.field private fReverseDataCheck:Landroid/view/MenuItem;

.field private fShowTranslateCheck:Landroid/view/MenuItem;

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

.field prevButton:Landroid/widget/Button;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field topicTag:Ljava/lang/String;

.field viewPager:Landroidx/viewpager/widget/ViewPager;

.field viewPagerAdapter:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

.field wordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field wordListLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fPhraseLayout:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->counter:I

    iput v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordListLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/CardsActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->showPage(I)V

    return-void
.end method

.method private applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 8

    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/CardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->exShowBtnRadio:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object p1, v3

    move-object p2, p1

    :cond_1e
    const/16 v1, 0x190

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_29

    :cond_27
    const/16 v2, 0x190

    :goto_29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3d

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4b

    :cond_3d
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_4b
    iget-object p2, p0, Lcom/online/languages/study/studymaster/CardsActivity;->exShowBtnRadio:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private applyFRemixStatus(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fRemixStatusCheckbox:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private applyReverseDataStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fReverseDataCheck:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/CardsActivity;->updateFlashcard(Ljava/lang/Boolean;)V

    return-void
.end method

.method private applyShowTranslateStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslateCheck:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/CardsActivity;->updateFlashcard(Ljava/lang/Boolean;)V

    return-void
.end method

.method private changeExBtnStatus()V
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->exButtonShow:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/online/languages/study/studymaster/CardsActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "card_buttons_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CardsActivity;->applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private changeFRemixStatus()V
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "f_mix"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/CardsActivity;->applyFRemixStatus(Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/CardsActivity;->startFlashcard(Ljava/lang/Boolean;)V

    return-void
.end method

.method private changeReverseDataStatus()V
    .registers 5

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "f_reverse"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CardsActivity;->applyReverseDataStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private changeShowTranslateStatus()V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "f_translate_show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CardsActivity;->applyShowTranslateStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

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

.method private showPage(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getResources()Landroid/content/res/Resources;

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

    iget v2, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordListLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fCounterInfoBox:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/CardsActivity;->enableButton(Landroid/widget/Button;)V

    :cond_36
    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->prevButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->prevButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/CardsActivity;->enableButton(Landroid/widget/Button;)V

    :cond_43
    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->prevButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->disableButton(Landroid/widget/Button;)V

    goto :goto_55

    :cond_4b
    iget v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordListLength:I

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_55

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->nextButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->disableButton(Landroid/widget/Button;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private startFlashcard(Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getWordlist()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/CardsActivity;->showPage(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/online/languages/study/studymaster/CardsActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CardsActivity$2;-><init>(Lcom/online/languages/study/studymaster/CardsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_35

    :cond_27
    new-instance p1, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :goto_35
    return-void
.end method

.method private updateFlashcard(Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/online/languages/study/studymaster/CardsActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/online/languages/study/studymaster/CardsActivity$3;-><init>(Lcom/online/languages/study/studymaster/CardsActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_33

    :cond_26
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_33
    return-void
.end method


# virtual methods
.method getWordlist()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->originWordsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_2c
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->setContentView(I)V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f110219

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "cat_tag"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->topicTag:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "data_mode"

    const-string v4, "2"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->topicTag:Ljava/lang/String;

    const-string v3, "starred"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    iput-object v2, p0, Lcom/online/languages/study/studymaster/CardsActivity;->easy_mode:Ljava/lang/Boolean;

    :cond_77
    const-string p1, "dates"

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->topicTag:Ljava/lang/String;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->topicTag:Ljava/lang/String;

    const-string v3, "ph_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CardsActivity;->fPhraseLayout:Ljava/lang/Boolean;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "f_translate_show"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "f_mix"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "transcript_show"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "transcript_show_f"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c9

    const/4 p1, 0x1

    goto :goto_ca

    :cond_c9
    const/4 p1, 0x0

    :goto_ca
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranscript:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v3, "f_reverse"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "card_buttons_show"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/online/languages/study/studymaster/CardsActivity;->exButtonShow:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dataItems"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->originWordsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getWordlist()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->wordListLength:I

    const p1, 0x7f0902b7

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fCounterInfoBox:Landroid/widget/TextView;

    const p1, 0x7f09005f

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->prevButton:Landroid/widget/Button;

    const p1, 0x7f0901d3

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->nextButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->prevButton:Landroid/widget/Button;

    new-instance v0, Lcom/online/languages/study/studymaster/-$$Lambda$sXTrN3p4r_Cv1MbO_jkZYUHdHIE;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$sXTrN3p4r_Cv1MbO_jkZYUHdHIE;-><init>(Lcom/online/languages/study/studymaster/CardsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/online/languages/study/studymaster/-$$Lambda$NXflcJf15epl82M6TaH7KXnBQuY;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$NXflcJf15epl82M6TaH7KXnBQuY;-><init>(Lcom/online/languages/study/studymaster/CardsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090088

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/CardsActivity;->startFlashcard(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/online/languages/study/studymaster/CardsActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/CardsActivity$1;-><init>(Lcom/online/languages/study/studymaster/CardsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09011e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslateCheck:Landroid/view/MenuItem;

    const v0, 0x7f09011c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fRemixStatusCheckbox:Landroid/view/MenuItem;

    const v0, 0x7f09011b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->fReverseDataCheck:Landroid/view/MenuItem;

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fShowTranslate:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CardsActivity;->applyShowTranslateStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fMixWords:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/CardsActivity;->applyFRemixStatus(Ljava/lang/Boolean;)V

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->fRevertData:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CardsActivity;->applyReverseDataStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const v0, 0x7f0900f7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->exShowBtnRadio:Landroid/view/MenuItem;

    sget-object v0, Lcom/online/languages/study/studymaster/CardsActivity;->exButtonShow:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/CardsActivity;->applyExBtnStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5a
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3a

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_34

    const v1, 0x7f0900f7

    if-eq v0, v1, :cond_30

    packed-switch v0, :pswitch_data_44

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_1c
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->changeShowTranslateStatus()V

    return v2

    :pswitch_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/CardsActivity;->startFlashcard(Ljava/lang/Boolean;)V

    return v2

    :pswitch_28
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->changeFRemixStatus()V

    return v2

    :pswitch_2c
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->changeReverseDataStatus()V

    return v2

    :cond_30
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->changeExBtnStatus()V

    return v2

    :cond_34
    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v2

    :cond_3a
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/CardsActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2

    nop

    :pswitch_data_44
    .packed-switch 0x7f09011b
        :pswitch_2c
        :pswitch_28
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public vNext(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public vPrev(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
