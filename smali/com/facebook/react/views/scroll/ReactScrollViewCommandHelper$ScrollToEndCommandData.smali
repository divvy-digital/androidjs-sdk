.class public Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;
.super Ljava/lang/Object;
.source "ReactScrollViewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollToEndCommandData"
.end annotation


# instance fields
.field public final mAnimated:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;->mAnimated:Z

    .line 51
    return-void
.end method
