.class Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;
.super Ljava/lang/Object;
.source "UserStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/data/UserStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorsCountComparator"
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
.field final synthetic this$0:Lcom/online/languages/study/studymaster/data/UserStats;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/data/UserStats;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;->this$0:Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/online/languages/study/studymaster/data/DataItem;Lcom/online/languages/study/studymaster/data/DataItem;)I
    .registers 3

    iget p2, p2, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iget p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    check-cast p2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;->compare(Lcom/online/languages/study/studymaster/data/DataItem;Lcom/online/languages/study/studymaster/data/DataItem;)I

    move-result p1

    return p1
.end method
