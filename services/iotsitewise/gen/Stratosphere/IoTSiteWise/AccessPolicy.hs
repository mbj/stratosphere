module Stratosphere.IoTSiteWise.AccessPolicy (
        module Exports, AccessPolicy(..), mkAccessPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.AccessPolicyIdentityProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.AccessPolicyResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPolicy
  = AccessPolicy {accessPolicyIdentity :: AccessPolicyIdentityProperty,
                  accessPolicyPermission :: (Value Prelude.Text),
                  accessPolicyResource :: AccessPolicyResourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPolicy ::
  AccessPolicyIdentityProperty
  -> Value Prelude.Text
     -> AccessPolicyResourceProperty -> AccessPolicy
mkAccessPolicy
  accessPolicyIdentity
  accessPolicyPermission
  accessPolicyResource
  = AccessPolicy
      {accessPolicyIdentity = accessPolicyIdentity,
       accessPolicyPermission = accessPolicyPermission,
       accessPolicyResource = accessPolicyResource}
instance ToResourceProperties AccessPolicy where
  toResourceProperties AccessPolicy {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy",
         supportsTags = Prelude.False,
         properties = ["AccessPolicyIdentity" JSON..= accessPolicyIdentity,
                       "AccessPolicyPermission" JSON..= accessPolicyPermission,
                       "AccessPolicyResource" JSON..= accessPolicyResource]}
instance JSON.ToJSON AccessPolicy where
  toJSON AccessPolicy {..}
    = JSON.object
        ["AccessPolicyIdentity" JSON..= accessPolicyIdentity,
         "AccessPolicyPermission" JSON..= accessPolicyPermission,
         "AccessPolicyResource" JSON..= accessPolicyResource]
instance Property "AccessPolicyIdentity" AccessPolicy where
  type PropertyType "AccessPolicyIdentity" AccessPolicy = AccessPolicyIdentityProperty
  set newValue AccessPolicy {..}
    = AccessPolicy {accessPolicyIdentity = newValue, ..}
instance Property "AccessPolicyPermission" AccessPolicy where
  type PropertyType "AccessPolicyPermission" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {accessPolicyPermission = newValue, ..}
instance Property "AccessPolicyResource" AccessPolicy where
  type PropertyType "AccessPolicyResource" AccessPolicy = AccessPolicyResourceProperty
  set newValue AccessPolicy {..}
    = AccessPolicy {accessPolicyResource = newValue, ..}