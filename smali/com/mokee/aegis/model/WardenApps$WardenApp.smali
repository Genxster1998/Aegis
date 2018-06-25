.class public Lcom/mokee/aegis/model/WardenApps$WardenApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/WardenApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WardenApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllowed:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private final mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "allowed"    # Z
    .param p5, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mPackageName:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mLabel:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object p5, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 138
    iput-boolean p4, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mAllowed:Z

    .line 133
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mokee/aegis/model/WardenApps$WardenApp;)I
    .locals 3
    .param p1, "another"    # Lcom/mokee/aegis/model/WardenApps$WardenApp;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 172
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Lcom/mokee/aegis/model/WardenApps$WardenApp;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->compareTo(Lcom/mokee/aegis/model/WardenApps$WardenApp;)I

    move-result v0

    return v0
.end method

.method public getAllowed()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mAllowed:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps$WardenApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method
