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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html>
    MemberFabricConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminpassword>
                                       adminPassword :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminusername>
                                       adminUsername :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberFabricConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MemberFabricConfigurationProperty
mkMemberFabricConfigurationProperty adminPassword adminUsername
  = MemberFabricConfigurationProperty
      {haddock_workaround_ = (), adminPassword = adminPassword,
       adminUsername = adminUsername}
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