module Stratosphere.ManagedBlockchain.Member.MemberFrameworkConfigurationProperty (
        module Exports, MemberFrameworkConfigurationProperty(..),
        mkMemberFrameworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.MemberFabricConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data MemberFrameworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberframeworkconfiguration.html>
    MemberFrameworkConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberframeworkconfiguration.html#cfn-managedblockchain-member-memberframeworkconfiguration-memberfabricconfiguration>
                                          memberFabricConfiguration :: (Prelude.Maybe MemberFabricConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberFrameworkConfigurationProperty ::
  MemberFrameworkConfigurationProperty
mkMemberFrameworkConfigurationProperty
  = MemberFrameworkConfigurationProperty
      {haddock_workaround_ = (),
       memberFabricConfiguration = Prelude.Nothing}
instance ToResourceProperties MemberFrameworkConfigurationProperty where
  toResourceProperties MemberFrameworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.MemberFrameworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MemberFabricConfiguration"
                              Prelude.<$> memberFabricConfiguration])}
instance JSON.ToJSON MemberFrameworkConfigurationProperty where
  toJSON MemberFrameworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MemberFabricConfiguration"
                 Prelude.<$> memberFabricConfiguration]))
instance Property "MemberFabricConfiguration" MemberFrameworkConfigurationProperty where
  type PropertyType "MemberFabricConfiguration" MemberFrameworkConfigurationProperty = MemberFabricConfigurationProperty
  set newValue MemberFrameworkConfigurationProperty {..}
    = MemberFrameworkConfigurationProperty
        {memberFabricConfiguration = Prelude.pure newValue, ..}