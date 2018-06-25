.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 2

    .prologue
    .line 150
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 149
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 73
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 74
    .local v0, "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    :try_start_2
    invoke-interface {v0}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 81
    :cond_1
    if-eqz v1, :cond_2

    .line 82
    invoke-static {v1}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    :cond_2
    monitor-enter p0

    .line 86
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 64
    return-void

    .line 67
    .end local v0    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 85
    .restart local v0    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .restart local v1    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 84
    :catchall_2
    move-exception v2

    .line 85
    monitor-enter p0

    .line 86
    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    .line 84
    throw v2

    .line 85
    :catchall_3
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 136
    return-object v2

    .line 138
    :cond_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 140
    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 141
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 112
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 113
    return-void

    .line 115
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 116
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit p0

    .line 117
    return-void

    :cond_2
    monitor-exit p0

    .line 120
    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public throwIfCanceled()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    .line 54
    :cond_0
    return-void
.end method
