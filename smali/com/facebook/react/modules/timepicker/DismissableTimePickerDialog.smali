.class public Lcom/facebook/react/modules/timepicker/DismissableTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "DismissableTimePickerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callback"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .line 47
    invoke-direct/range {p0 .. p6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .line 37
    invoke-direct/range {p0 .. p5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .line 52
    nop

    .line 53
    invoke-super {p0}, Landroid/app/TimePickerDialog;->onStop()V

    .line 55
    return-void
.end method
