.class public final enum Lcom/online/languages/study/studymaster/Constants$Status;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/online/languages/study/studymaster/Constants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/online/languages/study/studymaster/Constants$Status;

.field public static final enum FAMILIAR:Lcom/online/languages/study/studymaster/Constants$Status;

.field public static final enum STUDIED:Lcom/online/languages/study/studymaster/Constants$Status;

.field public static final enum UNKNOWN:Lcom/online/languages/study/studymaster/Constants$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/Constants$Status;

    const-string v1, "STUDIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/Constants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/online/languages/study/studymaster/Constants$Status;->STUDIED:Lcom/online/languages/study/studymaster/Constants$Status;

    new-instance v1, Lcom/online/languages/study/studymaster/Constants$Status;

    const-string v3, "FAMILIAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/online/languages/study/studymaster/Constants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/online/languages/study/studymaster/Constants$Status;->FAMILIAR:Lcom/online/languages/study/studymaster/Constants$Status;

    new-instance v3, Lcom/online/languages/study/studymaster/Constants$Status;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/online/languages/study/studymaster/Constants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/online/languages/study/studymaster/Constants$Status;->UNKNOWN:Lcom/online/languages/study/studymaster/Constants$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/online/languages/study/studymaster/Constants$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/online/languages/study/studymaster/Constants$Status;->$VALUES:[Lcom/online/languages/study/studymaster/Constants$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/online/languages/study/studymaster/Constants$Status;
    .registers 2

    const-class v0, Lcom/online/languages/study/studymaster/Constants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/online/languages/study/studymaster/Constants$Status;

    return-object p0
.end method

.method public static values()[Lcom/online/languages/study/studymaster/Constants$Status;
    .registers 1

    sget-object v0, Lcom/online/languages/study/studymaster/Constants$Status;->$VALUES:[Lcom/online/languages/study/studymaster/Constants$Status;

    invoke-virtual {v0}, [Lcom/online/languages/study/studymaster/Constants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/online/languages/study/studymaster/Constants$Status;

    return-object v0
.end method
