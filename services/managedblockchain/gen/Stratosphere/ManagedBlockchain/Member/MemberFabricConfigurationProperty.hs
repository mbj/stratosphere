module Stratosphere.ManagedBlockchain.Member.MemberFabricConfigurationProperty (
        MemberFabricConfigurationProperty(..),
        mkMemberFabricConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemberFabricConfigurationProperty
  = MemberFabricConfigurationProperty {adminPassword :: (Value Prelude.Text),
                                       adminUsername :: (Value Prelude.Text)}
mkMemberFabricConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MemberFabricConfigurationProperty
mkMemberFabricConfigurationProperty adminPassword adminUsername
  = MemberFabricConfigurationProperty
      {adminPassword = adminPassword, adminUsername = adminUsername}
instance ToResourceProperties MemberFabricConfigurationProperty where
  toResourceProperties MemberFabricConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.MemberFabricConfiguration",
         supportsTags = Prelude.False,
         properties = ["AdminPassword" JSON..= adminPassword,
                       "AdminUsername" JSON..= adminUsername]}
instance JSON.ToJSON MemberFabricConfigurationProperty where
  toJSON MemberFabricConfigurationProperty {..}
    = JSON.object
        ["AdminPassword" JSON..= adminPassword,
         "AdminUsername" JSON..= adminUsername]
instance Property "AdminPassword" MemberFabricConfigurationProperty where
  type PropertyType "AdminPassword" MemberFabricConfigurationProperty = Value Prelude.Text
  set newValue MemberFabricConfigurationProperty {..}
    = MemberFabricConfigurationProperty {adminPassword = newValue, ..}
instance Property "AdminUsername" MemberFabricConfigurationProperty where
  type PropertyType "AdminUsername" MemberFabricConfigurationProperty = Value Prelude.Text
  set newValue MemberFabricConfigurationProperty {..}
    = MemberFabricConfigurationProperty {adminUsername = newValue, ..}