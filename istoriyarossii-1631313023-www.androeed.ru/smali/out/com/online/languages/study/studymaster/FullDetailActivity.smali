.class public Lcom/online/languages/study/studymaster/FullDetailActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "FullDetailActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;,
        Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;
    }
.end annotation


# instance fields
.field private MY_DATA_CHECK_CODE:I

.field appSettings:Landroid/content/SharedPreferences;

.field dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

.field finalAnimEnter:I

.field fromDetail:Z

.field header:Landroid/view/View;

.field headerWide:Landroid/view/View;

.field hintMenuItem:Landroid/view/MenuItem;

.field imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

.field infoTitle:Landroid/widget/TextView;

.field mapData:Lcom/online/languages/study/studymaster/data/ImageData;

.field private myTTS:Landroid/speech/tts/TextToSpeech;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field playMenuItem:Landroid/view/MenuItem;

.field playback:Z

.field speakBtn:Landroid/view/View;

.field speaking:Z

.field starMenuItem:Landroid/view/MenuItem;

.field starrable:Ljava/lang/Boolean;

.field textIsLong:Z

.field textToSpeak:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->MY_DATA_CHECK_CODE:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starrable:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->textToSpeak:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/FullDetailActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->saveListMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/FullDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->saveModeHintDisplay()V

    return-void
.end method

.method private changeStarStatus(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v2, "#gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const-string v2, ""

    :goto_15
    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/online/languages/study/studymaster/DBHelper;->setStarred(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->limitMessage()V

    :cond_2a
    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->checkStarred(Ljava/lang/String;)V

    return-void
.end method

.method private changeToYears(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "[()]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[-\u2013]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    aget-object v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-\u0439 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2013 "

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0433\u043e\u0434"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private changeToYearsApp(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "[()]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u043e\u043a\\."

    const-string v1, "\u043e\u043a\u043e\u043b\u043e"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[-\u2013]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_48

    aget-object v1, p1, v0

    if-nez v0, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-\u0433\u043e "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_45

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-\u0439 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2013 "

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0433\u043e\u0434"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private changeYears(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "[\u0412\u0432] \\d\\d\\d\\d \u0433\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "\u0433\\."

    const-string v2, "\u0433\u043e\u0434\u0443\u0301"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->replaceStringInPattern(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\u0421\u0441] \\d\\d\\d\\d \u0433\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v2, "\u0433\u043e\u0301\u0434\u0430"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->replaceStringInPattern(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkHint()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "set_speak_hint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->speaking:Z

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->saveModeHintDisplay()V

    :cond_1d
    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->hintMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private checkStarred(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0800ee

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1d

    :cond_15
    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0800ef

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1d
    return-void
.end method

.method private getInfoTxtSize()I
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v2, "detail_txt_size"

    const-string v3, "medium"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_26
    const-string v2, "large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_39
    return v0
.end method

.method private getMap()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    new-instance v0, Lcom/online/languages/study/studymaster/data/ImageMapsData;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/data/ImageMapsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->imageMapsData:Lcom/online/languages/study/studymaster/data/ImageMapsData;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/data/ImageMapsData;->getMapInfoById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_34
    const v0, 0x7f09018a

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$JqexsVikqivsNlzt0xOl5ebJup4;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$JqexsVikqivsNlzt0xOl5ebJup4;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09025d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/ImageData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090255

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/ImageData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/pics/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/ImageData;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_94
    return-void
.end method

.method private getSpeakText()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    const-string v1, "\u043b\u0430\u0434\u0438\u043c\u0438\u0440\u0441"

    const-string v2, "\u043b\u0430\u0434\u0438\u0301\u043c\u0438\u0440\u0441"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " \u0445\u0430\u043d\u0430 "

    const-string v2, " \u0445\u0430\u0301\u043d\u0430 "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0412\u0430\u0441\u0438\u043b\u0438"

    const-string v2, "\u0412\u0430\u0441\u0438\u0301\u043b\u0438"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0412\u0430\u0441\u0438\u0301\u043b\u0438\u0441"

    const-string v2, "\u0412\u0430\u0441\u0438\u043b\u0438\u0301\u0441"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\(\u0431\\)"

    const-string v2, "\u0411"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0418\u043e\u0430\u043d"

    const-string v2, "\u0418\u043e\u0430\u0301\u043d"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0430\u0442\u0430\u043c\u0430\u043d"

    const-string v2, "\u0430\u0442\u0430\u043c\u0430\u0301\u043d"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041c\u0438\u0445\u0430\u0439\u043b\u043e\u0432\u0438\u0447"

    const-string v2, "\u041c\u0438\u0445\u0430\u0301\u0439\u043b\u043e\u0432\u0438\u0447"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0440\u0443\u0441\u0438\u043b\u043e\u0432\u0441\u043a"

    const-string v2, "\u0440\u0443\u0441\u0438\u0301\u043b\u043e\u0432\u0441\u043a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u043f\u043e\u043b\u044f\u043a"

    const-string v2, "\u043f\u043e\u043b\u044f\u0301\u043a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0434\u0435\u043a\u0430\u0431\u0440\u0438\u0441\u0442"

    const-string v2, "\u0434\u0435\u043a\u0430\u0431\u0440\u0438\u0301\u0441\u0442"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0435\u0441\u0442\u0435\u043b"

    const-string v2, "\u041f\u0435\u0301\u0441\u0442\u0435\u043b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u043f\u0440\u0438\u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u044b"

    const-string v2, "\u043f\u0440\u0438\u0441\u043e\u0435\u0434\u0438\u043d\u0438\u043d\u044b\u0301"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\(\\?+([-\u2013])\\d+\\))"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\(\u0440\u043e\u0434. \\d+\\))"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\u0410-\u042f\u0401]\\.[\u0410-\u042f\u0401]\\. \u0438 [\u0410-\u042f\u0401]\\.[\u0410-\u042f\u0401]\\. "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\u0410-\u042f\u0401]\\. [\u0410-\u042f\u0401]\\. \u0438 [\u0410-\u042f\u0401]\\. [\u0410-\u042f\u0401]\\. "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\u0410-\u042f\u0401]\\.[\u0410-\u042f\u0401]\\. "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\u0410-\u042f\u0401]\\. [\u0410-\u042f\u0401]\\. "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->changeYears(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\(\\d+([-\u2013])\\d+\\))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_a0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->changeToYears(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a0

    :cond_b3
    const-string v1, "\\(\u043e\u043a\\. \\d+[-\u2013]\\d+\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_bd
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->changeToYearsApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_bd

    :cond_d0
    return-object v0
.end method

.method private getSpec()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    goto :goto_25

    :cond_23
    const-string v0, ""

    :goto_25
    const-string v1, "pers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "\u041b\u0438\u0447\u043d\u043e\u0441\u0442\u044c"

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_32
    const-string v1, "term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "\u0422\u0435\u0440\u043c\u0438\u043d"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3f
    return-void
.end method

.method private listModeDialog()V
    .registers 5

    new-instance v0, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;

    invoke-direct {v0, p0, p0}, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;Landroid/content/Context;)V

    const v1, 0x7f11016b

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110169

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11016a

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;->createDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private longSpeech(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)V
    .registers 11

    const-string v0, "[^.!?\\s][^.!?]*(?:[.!?](?![\'\"]?\\s|$)[^.!?]*)*[.!?]?[\'\"]?(?=\\s|$)"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    :try_start_1c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "utteranceId"

    const-string v7, "msg"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v3, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_48} :catch_49

    goto :goto_15

    :catch_49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_55
    return-void
.end method

.method private manageHeader(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->headerWide:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->header:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_10
    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->headerWide:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->header:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method private modeHint()V
    .registers 5

    new-instance v0, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;

    invoke-direct {v0, p0, p0}, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;Landroid/content/Context;)V

    const v1, 0x7f1100a3

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100a1

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1100a2

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/online/languages/study/studymaster/FullDetailActivity$SpeakMode;->createModeHint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceStringInPattern(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    :goto_4
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_17
    return-object p1
.end method

.method private saveListMode(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "set_speak_mode"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f05000f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->speaking:Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_32

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->checkTTSIntent()V

    goto :goto_37

    :cond_32
    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_37
    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->hintMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->saveModeHintDisplay()V

    goto :goto_5d

    :cond_40
    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_5d

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->speakWords(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0800da

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_5d
    :goto_5d
    return-void
.end method

.method private saveModeHintDisplay()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_speak_hint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private speakWords(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "utteranceId"

    const-string v2, "msg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->textIsLong:Z

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0, v0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->longSpeech(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)V

    goto :goto_20

    :cond_1a
    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public checkTTSIntent()V
    .registers 6

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->speaking:Z

    goto :goto_2e

    :cond_1f
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;

    invoke-direct {v2, p0, v1}, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$LMDY01Zk92FDSEDCieXsHMbloqo;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2e
    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->finish()V

    const v0, 0x7f010020

    const v1, 0x7f010024

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic lambda$checkTTSIntent$1$FullDetailActivity(Landroid/content/Intent;)V
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->MY_DATA_CHECK_CODE:I

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$getMap$2$FullDetailActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->mapData:Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->openMap(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$FullDetailActivity(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->openImage(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget p3, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->MY_DATA_CHECK_CODE:I

    if-ne p1, p3, :cond_1f

    const/4 p1, 0x1

    if-ne p2, p1, :cond_12

    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {p1, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    goto :goto_1f

    :cond_12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0c0027

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "starrable"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starrable:Ljava/lang/Boolean;

    :cond_4c
    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5d

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starrable:Ljava/lang/Boolean;

    :cond_5d
    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0, v0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playback:Z

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "from_detail"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->fromDetail:Z

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v2, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDetailFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v2, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getDataItemById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v2, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getDataItemFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object p1

    new-instance v2, Lcom/online/languages/study/studymaster/data/DetailItem;

    invoke-direct {v2, p1}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Lcom/online/languages/study/studymaster/data/DataItem;)V

    iput-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    :cond_bf
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getSpeakText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->textToSpeak:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xf3c

    if-le p1, v2, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x0

    :goto_cf
    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->textIsLong:Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f090181

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->infoTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getInfoTxtSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f090146

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->header:Landroid/view/View;

    const p1, 0x7f090147

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->headerWide:Landroid/view/View;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->manageHeader(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_131

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->manageHeader(Z)V

    :cond_131
    const p1, 0x7f090159

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///android_asset/pics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v5, v5, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/4 v5, 0x6

    invoke-direct {v3, v5, v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const v2, 0x7f090183

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09015b

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/FullDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v5, v5, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v4, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 v5, 0xc

    invoke-direct {v4, v5, v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c5
    const v0, 0x7f010020

    iput v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->finalAnimEnter:I

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getSpec()V

    new-instance v0, Lcom/online/languages/study/studymaster/-$$Lambda$Q7hpFD0Cvm1CV2dv7yYDPdUJ0KQ;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$Q7hpFD0Cvm1CV2dv7yYDPdUJ0KQ;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$KH1tLB6itkEUmfgHd-x3IEWSZAU;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/-$$Lambda$FullDetailActivity$KH1tLB6itkEUmfgHd-x3IEWSZAU;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "set_speak_mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->speaking:Z

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getMap()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090201

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v0, 0x7f090282

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->checkStarred(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starrable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->starMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3a
    const v0, 0x7f090149

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->hintMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->checkHint()V

    iget-boolean p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->speaking:Z

    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->checkTTSIntent()V

    :cond_4d
    return v1
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_16

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->speakWords(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_16
    return-void
.end method

.method public onInit(I)V
    .registers 4

    if-nez p1, :cond_56

    new-instance p1, Ljava/util/Locale;

    const-string v0, "ru"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "utteranceId"

    const-string v1, "id"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/FullDetailActivity$TtsUtteranceListener;-><init>(Lcom/online/languages/study/studymaster/FullDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "set_speak_mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->textToSpeak:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x36b0

    if-ge p1, v0, :cond_61

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_61

    :cond_56
    const/4 v0, -0x1

    if-ne p1, v0, :cond_61

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_61

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_61
    :goto_61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_e

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->finish()V

    return v1

    :cond_e
    const v2, 0x7f090282

    if-ne v0, v2, :cond_1b

    iget-object p1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->changeStarStatus(Ljava/lang/String;)V

    return v1

    :cond_1b
    const v2, 0x7f090201

    if-ne v0, v2, :cond_24

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->speakReading()V

    return v1

    :cond_24
    const v2, 0x7f090149

    if-ne v0, v2, :cond_2d

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->modeHint()V

    return v1

    :cond_2d
    const v2, 0x7f09019f

    if-ne v0, v2, :cond_36

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->listModeDialog()V

    return v1

    :cond_36
    const v2, 0x7f090164

    if-ne v0, v2, :cond_4f

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110097

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->openInfoHtmlDialog(Ljava/lang/String;Ljava/lang/Boolean;)V

    return v1

    :cond_4f
    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public openImage(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    const-string v1, "page_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pic"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "img_from_full"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001f

    const v0, 0x7f010023

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public openMap(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pic"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "from_full"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/FullDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01001e

    const v0, 0x7f010023

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public speakReading()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playback:Z

    iget-object v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0800da

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->speakWords(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->myTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_38

    :cond_23
    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->textToSpeak:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/FullDetailActivity;->speakWords(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0800d9

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/FullDetailActivity;->playback:Z

    :goto_38
    return-void
.end method
