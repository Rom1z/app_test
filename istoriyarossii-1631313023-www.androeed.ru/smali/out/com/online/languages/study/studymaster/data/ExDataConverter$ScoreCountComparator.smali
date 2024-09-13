.class Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;
.super Ljava/lang/Object;
.source "ExDataConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/data/ExDataConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoreCountComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/online/languages/study/studymaster/data/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/data/ExDataConverter;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/data/ExDataConverter;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;->this$0:Lcom/online/languages/study/studymaster/data/ExDataConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/data/ExDataConverter;Lcom/online/languages/study/studymaster/data/ExDataConverter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/ExDataConverter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/online/languages/study/studymaster/data/DataItem;Lcom/online/languages/study/studymaster/data/DataItem;)I
    .registers 3

    iget p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iget p2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/data/ExDataConverter$ScoreCountComparator;->compare(Lcom/online/languages/study/studymaster/data/DataItem;Lcom/online/languages/study/studymaster/data/DataItem;)I

    move-result p1

    return p1
.end method
