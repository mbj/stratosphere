module Stratosphere.IoTSiteWise.AccessPolicy.AccessPolicyIdentityProperty (
        module Exports, AccessPolicyIdentityProperty(..),
        mkAccessPolicyIdentityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.IamRoleProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.IamUserProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AccessPolicy.UserProperty as Exports
import Stratosphere.ResourceProperties
data AccessPolicyIdentityProperty
  = AccessPolicyIdentityProperty {iamRole :: (Prelude.Maybe IamRoleProperty),
                                  iamUser :: (Prelude.Maybe IamUserProperty),
                                  user :: (Prelude.Maybe UserProperty)}
mkAccessPolicyIdentityProperty :: AccessPolicyIdentityProperty
mkAccessPolicyIdentityProperty
  = AccessPolicyIdentityProperty
      {iamRole = Prelude.Nothing, iamUser = Prelude.Nothing,
       user = Prelude.Nothing}
instance ToResourceProperties AccessPolicyIdentityProperty where
  toResourceProperties AccessPolicyIdentityProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.AccessPolicyIdentity",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IamRole" Prelude.<$> iamRole,
                            (JSON..=) "IamUser" Prelude.<$> iamUser,
                            (JSON..=) "User" Prelude.<$> user])}
instance JSON.ToJSON AccessPolicyIdentityProperty where
  toJSON AccessPolicyIdentityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IamRole" Prelude.<$> iamRole,
               (JSON..=) "IamUser" Prelude.<$> iamUser,
               (JSON..=) "User" Prelude.<$> user]))
instance Property "IamRole" AccessPolicyIdentityProperty where
  type PropertyType "IamRole" AccessPolicyIdentityProperty = IamRoleProperty
  set newValue AccessPolicyIdentityProperty {..}
    = AccessPolicyIdentityProperty
        {iamRole = Prelude.pure newValue, ..}
instance Property "IamUser" AccessPolicyIdentityProperty where
  type PropertyType "IamUser" AccessPolicyIdentityProperty = IamUserProperty
  set newValue AccessPolicyIdentityProperty {..}
    = AccessPolicyIdentityProperty
        {iamUser = Prelude.pure newValue, ..}
instance Property "User" AccessPolicyIdentityProperty where
  type PropertyType "User" AccessPolicyIdentityProperty = UserProperty
  set newValue AccessPolicyIdentityProperty {..}
    = AccessPolicyIdentityProperty {user = Prelude.pure newValue, ..}