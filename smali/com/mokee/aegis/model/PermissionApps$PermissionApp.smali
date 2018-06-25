.class public Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/model/PermissionApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mokee/aegis/model/PermissionApps$PermissionApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private final mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestPermissionStatus:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/util/SparseBooleanArray;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "requestPermissionStatus"    # Landroid/util/SparseBooleanArray;
    .param p5, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mPackageName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 139
    iput-object p4, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mRequestPermissionStatus:Landroid/util/SparseBooleanArray;

    .line 140
    iput-object p5, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 135
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mokee/aegis/model/PermissionApps$PermissionApp;)I
    .locals 3
    .param p1, "another"    # Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 174
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p1, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->compareTo(Lcom/mokee/aegis/model/PermissionApps$PermissionApp;)I

    move-result v0

    return v0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPermissionStatus()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->mRequestPermissionStatus:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method
