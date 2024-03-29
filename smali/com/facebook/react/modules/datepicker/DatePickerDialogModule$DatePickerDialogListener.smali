.class Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;
.super Ljava/lang/Object;
.source "DatePickerDialogModule.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerDialogListener"
.end annotation


# instance fields
.field private final mPromise:Lcom/facebook/react/bridge/Promise;

.field private mPromiseResolved:Z

.field final synthetic this$0:Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;

    .line 60
    iput-object p1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->this$0:Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromiseResolved:Z

    .line 61
    iput-object p2, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 62
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 66
    iget-boolean v0, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromiseResolved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->this$0:Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;

    invoke-static {v0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;->access$000(Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 68
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "action"

    const-string v2, "dateSetAction"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "year"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v1, "month"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v1, "day"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 72
    iget-object v1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromiseResolved:Z

    .line 75
    .end local v0    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 79
    iget-boolean v0, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromiseResolved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->this$0:Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;

    invoke-static {v0}, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;->access$100(Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 81
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "action"

    const-string v2, "dismissedAction"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule$DatePickerDialogListener;->mPromiseResolved:Z

    .line 85
    .end local v0    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method
