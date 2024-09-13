.class public Lcom/online/languages/study/studymaster/adapters/Typewriter;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "Typewriter.java"


# instance fields
.field private characterAdder:Ljava/lang/Runnable;

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mDelay:J

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;-><init>(Lcom/online/languages/study/studymaster/adapters/Typewriter;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->characterAdder:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x14

    iput-wide p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mDelay:J

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;-><init>(Lcom/online/languages/study/studymaster/adapters/Typewriter;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->characterAdder:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/adapters/Typewriter;)I
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mIndex:I

    return p0
.end method

.method static synthetic access$008(Lcom/online/languages/study/studymaster/adapters/Typewriter;)I
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->characterAdder:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/online/languages/study/studymaster/adapters/Typewriter;)J
    .registers 3

    iget-wide v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public animateText(Ljava/lang/CharSequence;)V
    .registers 5

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mIndex:I

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->characterAdder:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->characterAdder:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mDelay:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setCharacterDelay(J)V
    .registers 3

    iput-wide p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter;->mDelay:J

    return-void
.end method
