module Stratosphere.S3.AccessGrant (
        module Exports, AccessGrant(..), mkAccessGrant
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.AccessGrant.AccessGrantsLocationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.AccessGrant.GranteeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AccessGrant
  = AccessGrant {accessGrantsLocationConfiguration :: (Prelude.Maybe AccessGrantsLocationConfigurationProperty),
                 accessGrantsLocationId :: (Value Prelude.Text),
                 applicationArn :: (Prelude.Maybe (Value Prelude.Text)),
                 grantee :: GranteeProperty,
                 permission :: (Value Prelude.Text),
                 s3PrefixType :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessGrant ::
  Value Prelude.Text
  -> GranteeProperty -> Value Prelude.Text -> AccessGrant
mkAccessGrant accessGrantsLocationId grantee permission
  = AccessGrant
      {accessGrantsLocationId = accessGrantsLocationId,
       grantee = grantee, permission = permission,
       accessGrantsLocationConfiguration = Prelude.Nothing,
       applicationArn = Prelude.Nothing, s3PrefixType = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AccessGrant where
  toResourceProperties AccessGrant {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessGrant", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessGrantsLocationId" JSON..= accessGrantsLocationId,
                            "Grantee" JSON..= grantee, "Permission" JSON..= permission]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessGrantsLocationConfiguration"
                                 Prelude.<$> accessGrantsLocationConfiguration,
                               (JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
                               (JSON..=) "S3PrefixType" Prelude.<$> s3PrefixType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AccessGrant where
  toJSON AccessGrant {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessGrantsLocationId" JSON..= accessGrantsLocationId,
               "Grantee" JSON..= grantee, "Permission" JSON..= permission]
              (Prelude.catMaybes
                 [(JSON..=) "AccessGrantsLocationConfiguration"
                    Prelude.<$> accessGrantsLocationConfiguration,
                  (JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
                  (JSON..=) "S3PrefixType" Prelude.<$> s3PrefixType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessGrantsLocationConfiguration" AccessGrant where
  type PropertyType "AccessGrantsLocationConfiguration" AccessGrant = AccessGrantsLocationConfigurationProperty
  set newValue AccessGrant {..}
    = AccessGrant
        {accessGrantsLocationConfiguration = Prelude.pure newValue, ..}
instance Property "AccessGrantsLocationId" AccessGrant where
  type PropertyType "AccessGrantsLocationId" AccessGrant = Value Prelude.Text
  set newValue AccessGrant {..}
    = AccessGrant {accessGrantsLocationId = newValue, ..}
instance Property "ApplicationArn" AccessGrant where
  type PropertyType "ApplicationArn" AccessGrant = Value Prelude.Text
  set newValue AccessGrant {..}
    = AccessGrant {applicationArn = Prelude.pure newValue, ..}
instance Property "Grantee" AccessGrant where
  type PropertyType "Grantee" AccessGrant = GranteeProperty
  set newValue AccessGrant {..}
    = AccessGrant {grantee = newValue, ..}
instance Property "Permission" AccessGrant where
  type PropertyType "Permission" AccessGrant = Value Prelude.Text
  set newValue AccessGrant {..}
    = AccessGrant {permission = newValue, ..}
instance Property "S3PrefixType" AccessGrant where
  type PropertyType "S3PrefixType" AccessGrant = Value Prelude.Text
  set newValue AccessGrant {..}
    = AccessGrant {s3PrefixType = Prelude.pure newValue, ..}
instance Property "Tags" AccessGrant where
  type PropertyType "Tags" AccessGrant = [Tag]
  set newValue AccessGrant {..}
    = AccessGrant {tags = Prelude.pure newValue, ..}