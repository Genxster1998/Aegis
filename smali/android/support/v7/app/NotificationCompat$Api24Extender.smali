.class Landroid/support/v7/app/NotificationCompat$Api24Extender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Extender"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$Api24Extender;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$Api24Extender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 1
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .prologue
    .line 501
    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->-wrap8(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 502
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
