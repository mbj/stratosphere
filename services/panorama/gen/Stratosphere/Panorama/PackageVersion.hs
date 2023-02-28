module Stratosphere.Panorama.PackageVersion (
        PackageVersion(..), mkPackageVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PackageVersion
  = PackageVersion {markLatest :: (Prelude.Maybe (Value Prelude.Bool)),
                    ownerAccount :: (Prelude.Maybe (Value Prelude.Text)),
                    packageId :: (Value Prelude.Text),
                    packageVersion :: (Value Prelude.Text),
                    patchVersion :: (Value Prelude.Text),
                    updatedLatestPatchVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkPackageVersion ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PackageVersion
mkPackageVersion packageId packageVersion patchVersion
  = PackageVersion
      {packageId = packageId, packageVersion = packageVersion,
       patchVersion = patchVersion, markLatest = Prelude.Nothing,
       ownerAccount = Prelude.Nothing,
       updatedLatestPatchVersion = Prelude.Nothing}
instance ToResourceProperties PackageVersion where
  toResourceProperties PackageVersion {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::PackageVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PackageId" JSON..= packageId,
                            "PackageVersion" JSON..= packageVersion,
                            "PatchVersion" JSON..= patchVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "MarkLatest" Prelude.<$> markLatest,
                               (JSON..=) "OwnerAccount" Prelude.<$> ownerAccount,
                               (JSON..=) "UpdatedLatestPatchVersion"
                                 Prelude.<$> updatedLatestPatchVersion]))}
instance JSON.ToJSON PackageVersion where
  toJSON PackageVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PackageId" JSON..= packageId,
               "PackageVersion" JSON..= packageVersion,
               "PatchVersion" JSON..= patchVersion]
              (Prelude.catMaybes
                 [(JSON..=) "MarkLatest" Prelude.<$> markLatest,
                  (JSON..=) "OwnerAccount" Prelude.<$> ownerAccount,
                  (JSON..=) "UpdatedLatestPatchVersion"
                    Prelude.<$> updatedLatestPatchVersion])))
instance Property "MarkLatest" PackageVersion where
  type PropertyType "MarkLatest" PackageVersion = Value Prelude.Bool
  set newValue PackageVersion {..}
    = PackageVersion {markLatest = Prelude.pure newValue, ..}
instance Property "OwnerAccount" PackageVersion where
  type PropertyType "OwnerAccount" PackageVersion = Value Prelude.Text
  set newValue PackageVersion {..}
    = PackageVersion {ownerAccount = Prelude.pure newValue, ..}
instance Property "PackageId" PackageVersion where
  type PropertyType "PackageId" PackageVersion = Value Prelude.Text
  set newValue PackageVersion {..}
    = PackageVersion {packageId = newValue, ..}
instance Property "PackageVersion" PackageVersion where
  type PropertyType "PackageVersion" PackageVersion = Value Prelude.Text
  set newValue PackageVersion {..}
    = PackageVersion {packageVersion = newValue, ..}
instance Property "PatchVersion" PackageVersion where
  type PropertyType "PatchVersion" PackageVersion = Value Prelude.Text
  set newValue PackageVersion {..}
    = PackageVersion {patchVersion = newValue, ..}
instance Property "UpdatedLatestPatchVersion" PackageVersion where
  type PropertyType "UpdatedLatestPatchVersion" PackageVersion = Value Prelude.Text
  set newValue PackageVersion {..}
    = PackageVersion
        {updatedLatestPatchVersion = Prelude.pure newValue, ..}