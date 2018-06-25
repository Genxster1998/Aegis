.class public Lcom/mokee/aegis/service/NonStopIntentService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/service/NonStopIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/service/NonStopIntentService;


# direct methods
.method public constructor <init>(Lcom/mokee/aegis/service/NonStopIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/service/NonStopIntentService;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mokee/aegis/service/NonStopIntentService$LocalBinder;->this$0:Lcom/mokee/aegis/service/NonStopIntentService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/mokee/aegis/service/NonStopIntentService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mokee/aegis/service/NonStopIntentService$LocalBinder;->this$0:Lcom/mokee/aegis/service/NonStopIntentService;

    return-object v0
.end method
