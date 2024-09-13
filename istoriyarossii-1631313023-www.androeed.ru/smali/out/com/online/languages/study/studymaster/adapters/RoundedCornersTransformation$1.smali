.class synthetic Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->values()[Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    :try_start_9
    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ALL:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->BOTTOM_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->TOP:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->BOTTOM:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    return-void
.end method
