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
  = MemberFrameworkConfigurationProperty {memberFabricConfiguration :: (Prelude.Maybe MemberFabricConfigurationProperty)}
mkMemberFrameworkConfigurationProperty ::
  MemberFrameworkConfigurationProperty
mkMemberFrameworkConfigurationProperty
  = MemberFrameworkConfigurationProperty
      {memberFabricConfiguration = Prelude.Nothing}
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
  set newValue MemberFrameworkConfigurationProperty {}
    = MemberFrameworkConfigurationProperty
        {memberFabricConfiguration = Prelude.pure newValue, ..}