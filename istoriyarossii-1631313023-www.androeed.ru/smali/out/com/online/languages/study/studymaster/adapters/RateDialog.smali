.class public Lcom/online/languages/study/studymaster/adapters/RateDialog;
.super Ljava/lang/Object;
.source "RateDialog.java"


# instance fields
.field act:Lcom/online/languages/study/studymaster/MainActivity;

.field alert:Landroidx/appcompat/app/AlertDialog;

.field appSettings:Landroid/content/SharedPreferences;

.field context:Landroid/content/Context;

.field editFeedback:Landroid/widget/EditText;

.field rateFeedback:Landroid/view/View;

.field rateFeedbackTitle:Landroid/widget/TextView;

.field rateValue:Landroid/view/View;

.field rating:I

.field stars:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rating:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->appSettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method private askInfo()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateValue:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateFeedback:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v2, 0x7f110167

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    :goto_18
    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rating:I

    if-ge v1, v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2605"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_30
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateFeedbackTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkRating(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rating:I

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_30

    aget-object v1, v1, v0

    const v2, 0x7f090213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0800e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-le p1, v0, :cond_2d

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_30
    return-void
.end method

.method private static dpToPixels(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private goToPlayStore()V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v1, 0x7f110024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x48080000    # 139264.0f

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2a
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_4f

    :catch_30
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_4f
    return-void
.end method

.method public static synthetic lambda$QRUb4zdQ6fPiiZWHIgp2gS0qH50(Lcom/online/languages/study/studymaster/adapters/RateDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->checkRating(Landroid/view/View;)V

    return-void
.end method

.method private processRating()V
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->saveRateRequest()V

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rating:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->goToPlayStore()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_14

    :cond_11
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->askInfo()V

    :goto_14
    return-void
.end method

.method private saveRateRequest()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_rate_request"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sendFeedback()V
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateFeedbackTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->editFeedback:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v4, 0x7f1100dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v6, 0x7f1100dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v7, "5.9.1"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?subject="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&body="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_89
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v1, 0x7f1100db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_99
    .catch Landroid/content/ActivityNotFoundException; {:try_start_89 .. :try_end_99} :catch_9a

    goto :goto_a6

    :catch_9a
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v1, 0x7f1100da

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_a6
    return-void
.end method


# virtual methods
.method public createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const v0, 0x7f120109

    invoke-direct {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c007a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    const v1, 0x7f090214

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    const v1, 0x7f090215

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    const v1, 0x7f090216

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    const v1, 0x7f090217

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    const v1, 0x7f090218

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->stars:[Landroid/view/View;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_5f
    if-ge v4, v1, :cond_6e

    aget-object v5, v0, v4

    new-instance v6, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$QRUb4zdQ6fPiiZWHIgp2gS0qH50;

    invoke-direct {v6, p0}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$QRUb4zdQ6fPiiZWHIgp2gS0qH50;-><init>(Lcom/online/languages/study/studymaster/adapters/RateDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_6e
    const v0, 0x7f09007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09007d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v4, 0x7f09007e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f09021b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateValue:Landroid/view/View;

    const v5, 0x7f090212

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateFeedback:Landroid/view/View;

    const v5, 0x7f09021a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->rateFeedbackTitle:Landroid/widget/TextView;

    const v5, 0x7f0900f3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->editFeedback:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$QQwwdyAeavT1jBtPm7T9AIH6Olg;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$QQwwdyAeavT1jBtPm7T9AIH6Olg;-><init>(Lcom/online/languages/study/studymaster/adapters/RateDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$VRHmvNxXfVl7cKvNC_QgAcLvb3w;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$VRHmvNxXfVl7cKvNC_QgAcLvb3w;-><init>(Lcom/online/languages/study/studymaster/adapters/RateDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$id1VcQy8irnzr3jUkfaJ0lgpOA8;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$RateDialog$id1VcQy8irnzr3jUkfaJ0lgpOA8;-><init>(Lcom/online/languages/study/studymaster/adapters/RateDialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dismissDialog(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->act:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->onMenuItemClicker(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RateDialog$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog$1;-><init>(Lcom/online/languages/study/studymaster/adapters/RateDialog;)V

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$createDialog$0$RateDialog(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->processRating()V

    return-void
.end method

.method public synthetic lambda$createDialog$1$RateDialog(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$createDialog$2$RateDialog(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/RateDialog;->sendFeedback()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
