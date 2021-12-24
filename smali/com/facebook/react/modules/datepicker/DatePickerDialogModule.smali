.class public Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DatePickerDialogModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "DatePickerAndroid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;
    }
.end annotation


# static fields
.field static final ACTION_DATE_SET:Ljava/lang/String; = "dateSetAction"

.field static final ACTION_DISMISSED:Ljava/lang/String; = "dismissedAction"

.field static final ARG_DATE:Ljava/lang/String; = "date"

.field static final ARG_MAXDATE:Ljava/lang/String; = "maxDate"

.field static final ARG_MINDATE:Ljava/lang/String; = "minDate"

.field static final ARG_MODE:Ljava/lang/String; = "mode"

.field private static final ERROR_NO_ACTIVITY:Ljava/lang/String; = "E_NO_ACTIVITY"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "DatePickerAndroid"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private createFragmentArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;
    .locals 4

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "date"

    .line 141
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    const-string v1, "minDate"

    .line 144
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    const-string v1, "maxDate"

    .line 147
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const-string v1, "mode"

    .line 150
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "DatePickerAndroid"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    const-string p1, "E_NO_ACTIVITY"

    const-string v0, "Tried to open a DatePicker dialog while not attached to an Activity"

    .line 117
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DatePickerAndroid"

    .line 124
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v2}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 128
    :cond_1
    new-instance v2, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;

    invoke-direct {v2}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;-><init>()V

    if-eqz p1, :cond_2

    .line 130
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;->createFragmentArguments(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object p1

    .line 131
    invoke-virtual {v2, p1}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 133
    :cond_2
    new-instance p1, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;

    invoke-direct {p1, p0, p2}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;-><init>(Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;Lcom/facebook/react/bridge/Promise;)V

    .line 134
    invoke-virtual {v2, p1}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 135
    invoke-virtual {v2, p1}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 136
    invoke-virtual {v2, v0, v1}, Lcom/facebook/react/modules/datepicker/DatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method