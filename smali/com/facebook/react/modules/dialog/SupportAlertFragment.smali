.class public Lcom/facebook/react/modules/dialog/SupportAlertFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SupportAlertFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    .line 34
    invoke-virtual {p0, p2}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 44
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-virtual {p0}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/facebook/react/modules/dialog/AlertFragment;->createDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 52
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/SupportAlertFragment;->mListener:Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 55
    :cond_0
    return-void
.end method
