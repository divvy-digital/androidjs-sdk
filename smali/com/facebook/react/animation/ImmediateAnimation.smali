.class public Lcom/facebook/react/animation/ImmediateAnimation;
.super Lcom/facebook/react/animation/Animation;
.source "ImmediateAnimation.java"


# direct methods
.method public constructor <init>(ILcom/facebook/react/animation/AnimationPropertyUpdater;)V
    .locals 0
    .param p1, "animationID"    # I
    .param p2, "propertyUpdater"    # Lcom/facebook/react/animation/AnimationPropertyUpdater;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/animation/Animation;-><init>(ILcom/facebook/react/animation/AnimationPropertyUpdater;)V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/facebook/react/animation/ImmediateAnimation;->onUpdate(F)Z

    .line 23
    invoke-virtual {p0}, Lcom/facebook/react/animation/ImmediateAnimation;->finish()V

    .line 24
    return-void
.end method
