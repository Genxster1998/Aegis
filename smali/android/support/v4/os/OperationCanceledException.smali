.class public Landroid/support/v4/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void

    .line 29
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, "The operation has been canceled."

    goto :goto_0
.end method
