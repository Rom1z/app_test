.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .registers 32

    move-object/from16 v0, p0

    move-wide/from16 v1, p13

    move/from16 v3, p15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v7, v5, :cond_e1

    aget-object v9, v0, v7

    invoke-virtual {v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v9

    instance-of v11, v10, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_2c

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move v0, v5

    move v15, v7

    goto :goto_44

    :cond_2c
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    move-wide/from16 v13, p1

    invoke-static {v13, v14, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move v0, v5

    move v15, v7

    :goto_43
    const/4 v8, 0x0

    :goto_44
    move-wide/from16 v5, p11

    goto/16 :goto_da

    :cond_48
    move-wide/from16 v13, p1

    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_62

    move v15, v7

    move-wide/from16 v6, p3

    invoke-static {v6, v7, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5c
    move-wide/from16 v11, p7

    :goto_5e
    move-wide/from16 v13, p9

    :goto_60
    move v0, v5

    goto :goto_43

    :cond_62
    move v15, v7

    move-wide/from16 v6, p3

    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    move-wide/from16 v12, p5

    invoke-static {v12, v13, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_77
    move-wide/from16 v12, p5

    sget-object v14, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8b

    move-wide/from16 v11, p7

    invoke-static {v11, v12, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_8b
    move-wide/from16 v11, p7

    sget-object v14, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9f

    move-wide/from16 v13, p9

    invoke-static {v13, v14, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_9f
    move-wide/from16 v13, p9

    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v5

    move-wide/from16 v5, p11

    invoke-static {v5, v6, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_da

    :cond_b5
    move v0, v5

    move-wide/from16 v5, p11

    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_da

    if-eqz v8, :cond_d2

    const/4 v7, 0x3

    if-eqz v3, :cond_c9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_c9
    const/4 v8, 0x1

    invoke-static {v1, v2, v8, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d9

    :cond_d2
    invoke-static {v1, v2, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d9
    const/4 v8, 0x0

    :cond_da
    :goto_da
    add-int/lit8 v7, v15, 0x1

    move v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_e

    :cond_e1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 27

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "durationMillis must not be negative"

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v7

    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_27

    const-wide/32 v3, 0x5265c00

    div-long v5, p0, v3

    mul-long v3, v3, v5

    sub-long v3, p0, v3

    move-wide v12, v5

    goto :goto_2a

    :cond_27
    move-wide/from16 v3, p0

    move-wide v12, v1

    :goto_2a
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-wide/32 v5, 0x36ee80

    div-long v8, v3, v5

    mul-long v5, v5, v8

    sub-long/2addr v3, v5

    move-wide v14, v8

    goto :goto_3d

    :cond_3c
    move-wide v14, v1

    :goto_3d
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-wide/32 v5, 0xea60

    div-long v8, v3, v5

    mul-long v5, v5, v8

    sub-long/2addr v3, v5

    move-wide/from16 v16, v8

    goto :goto_52

    :cond_50
    move-wide/from16 v16, v1

    :goto_52
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v7, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-wide/16 v0, 0x3e8

    div-long v5, v3, v0

    mul-long v0, v0, v5

    sub-long/2addr v3, v0

    move-wide/from16 v20, v3

    move-wide/from16 v18, v5

    goto :goto_6a

    :cond_66
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    :goto_6a
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move/from16 v22, p3

    invoke-static/range {v7 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .registers 3

    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .registers 4

    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .registers 11

    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 0 minutes"

    const-string v0, " 0 hours"

    const-string v1, " 0 seconds"

    const-string v2, " 0 days"

    const-string v3, " "

    const-string v4, ""

    if-eqz p2, :cond_5e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_53

    invoke-static {p2, v0, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_52

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq p2, v5, :cond_53

    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_52
    move-object p0, p2

    :cond_53
    :goto_53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_5e

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_5e
    if-eqz p3, :cond_90

    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p3, v1, :cond_90

    invoke-static {p2, p1, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p1, p3, :cond_8f

    invoke-static {p0, v0, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p2, p3, :cond_90

    invoke-static {p1, v2, v4}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_90

    :cond_8f
    move-object p0, p2

    :cond_90
    :goto_90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 seconds"

    const-string p2, " 1 second"

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 minutes"

    const-string p2, " 1 minute"

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 hours"

    const-string p2, " 1 hour"

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 days"

    const-string p2, " 1 day"

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .registers 12

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v5, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 32

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    :goto_d
    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "startMillis must not be greater than endMillis"

    invoke-static {v6, v8, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v9

    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v3, v1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v7, v1

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v8, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v13, v14

    :goto_79
    if-gez v2, :cond_80

    add-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v3, v3, -0x1

    goto :goto_79

    :cond_80
    :goto_80
    if-gez v3, :cond_87

    add-int/lit8 v3, v3, 0x3c

    add-int/lit8 v7, v7, -0x1

    goto :goto_80

    :cond_87
    :goto_87
    if-gez v7, :cond_8e

    add-int/lit8 v7, v7, 0x3c

    add-int/lit8 v8, v8, -0x1

    goto :goto_87

    :cond_8e
    :goto_8e
    if-gez v8, :cond_95

    add-int/lit8 v8, v8, 0x18

    add-int/lit8 v10, v10, -0x1

    goto :goto_8e

    :cond_95
    sget-object v14, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v9, v14}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c2

    :goto_9d
    if-gez v10, :cond_aa

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v10, v0

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_9d

    :cond_aa
    :goto_aa
    if-gez v12, :cond_b1

    add-int/lit8 v12, v12, 0xc

    add-int/lit8 v13, v13, -0x1

    goto :goto_aa

    :cond_b1
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    if-eqz v13, :cond_122

    :goto_bb
    if-eqz v13, :cond_122

    mul-int/lit8 v13, v13, 0xc

    add-int/2addr v12, v13

    const/4 v13, 0x0

    goto :goto_bb

    :cond_c2
    sget-object v14, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v9, v14}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_101

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-gez v12, :cond_d2

    add-int/lit8 v13, v13, -0x1

    :cond_d2
    :goto_d2
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-eq v12, v13, :cond_100

    const/4 v12, 0x6

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v10, v14

    instance-of v14, v6, Ljava/util/GregorianCalendar;

    if-eqz v14, :cond_f7

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v14, v5, :cond_f7

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0x1d

    if-ne v14, v15, :cond_f7

    add-int/lit8 v10, v10, 0x1

    :cond_f7
    invoke-virtual {v6, v5, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_d2

    :cond_100
    const/4 v13, 0x0

    :cond_101
    :goto_101
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v12, v14, :cond_114

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v12

    add-int/2addr v10, v12

    invoke-virtual {v6, v11, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_101

    :cond_114
    const/4 v12, 0x0

    :goto_115
    if-gez v10, :cond_122

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v10, v0

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_115

    :cond_122
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    mul-int/lit8 v10, v10, 0x18

    add-int/2addr v8, v10

    const/4 v10, 0x0

    :cond_12e
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    const/4 v8, 0x0

    :cond_13a
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v3, v7

    const/4 v7, 0x0

    :cond_146
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_152

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    goto :goto_153

    :cond_152
    move v4, v3

    :goto_153
    int-to-long v0, v13

    int-to-long v12, v12

    int-to-long v14, v10

    int-to-long v5, v8

    int-to-long v7, v7

    int-to-long v3, v4

    int-to-long v10, v2

    move-wide/from16 v22, v10

    move-wide v10, v0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v3

    move/from16 v24, p5

    invoke-static/range {v9 .. v24}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .registers 11

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_9f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-eqz v4, :cond_24

    if-eq v7, v8, :cond_24

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9b

    :cond_24
    if-eq v7, v8, :cond_6a

    const/16 v8, 0x48

    if-eq v7, v8, :cond_67

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_64

    const/16 v8, 0x53

    if-eq v7, v8, :cond_61

    const/16 v8, 0x64

    if-eq v7, v8, :cond_5e

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_5b

    const/16 v8, 0x73

    if-eq v7, v8, :cond_58

    const/16 v8, 0x79

    if-eq v7, v8, :cond_55

    if-nez v5, :cond_51

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_55
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_7f

    :cond_58
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_7f

    :cond_5b
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_7f

    :cond_5e
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_7f

    :cond_61
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_7f

    :cond_64
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_7f

    :cond_67
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_7f

    :cond_6a
    if-eqz v4, :cond_70

    move-object v5, v2

    move-object v7, v5

    const/4 v4, 0x0

    goto :goto_7f

    :cond_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_7e
    move-object v7, v2

    :goto_7f
    if-eqz v7, :cond_9b

    if-eqz v6, :cond_91

    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    goto :goto_9a

    :cond_91
    new-instance v5, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v5, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    :goto_9a
    move-object v5, v2

    :cond_9b
    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_9f
    if-nez v4, :cond_ae

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object p0

    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched quote in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_c

    const/16 p1, 0x30

    invoke-static {p0, p3, p1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_c
    return-object p0
.end method
