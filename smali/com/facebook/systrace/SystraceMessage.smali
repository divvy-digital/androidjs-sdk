.class public final Lcom/facebook/systrace/SystraceMessage;
.super Ljava/lang/Object;
.source "SystraceMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/systrace/SystraceMessage$NoopBuilder;,
        Lcom/facebook/systrace/SystraceMessage$Flusher;,
        Lcom/facebook/systrace/SystraceMessage$Builder;
    }
.end annotation


# static fields
.field private static final NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;-><init>(Lcom/facebook/systrace/SystraceMessage$1;)V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 1
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;

    return-object v0
.end method

.method public static endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 1
    .param p0, "tag"    # J

    .line 22
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;

    return-object v0
.end method
