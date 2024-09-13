.class Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeStarredComparator"
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
.field final synthetic this$0:Lcom/online/languages/study/studymaster/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/data/DataManager;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;->this$0:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/online/languages/study/studymaster/data/DataItem;Lcom/online/languages/study/studymaster/data/DataItem;)I
    .registers 6

    iget-wide v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iget-wide p1, p2, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;->compare(Lcom/online/languages/study/studymaster/data/DataItem;Lcom/online/languages/study/studymaster/data/DataItem;)I

    move-result p1

    return p1
.end method
