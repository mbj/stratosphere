module Stratosphere.ManagedBlockchain.Member.MemberConfigurationProperty (
        module Exports, MemberConfigurationProperty(..),
        mkMemberConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.MemberFrameworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemberConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html>
    MemberConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-description>
                                 description :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-memberframeworkconfiguration>
                                 memberFrameworkConfiguration :: (Prelude.Maybe MemberFrameworkConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-name>
                                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberConfigurationProperty ::
  Value Prelude.Text -> MemberConfigurationProperty
mkMemberConfigurationProperty name
  = MemberConfigurationProperty
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing,
       memberFrameworkConfiguration = Prelude.Nothing}
instance ToResourceProperties MemberConfigurationProperty where
  toResourceProperties MemberConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.MemberConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MemberFrameworkConfiguration"
                                 Prelude.<$> memberFrameworkConfiguration]))}
instance JSON.ToJSON MemberConfigurationProperty where
  toJSON MemberConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MemberFrameworkConfiguration"
                    Prelude.<$> memberFrameworkConfiguration])))
instance Property "Description" MemberConfigurationProperty where
  type PropertyType "Description" MemberConfigurationProperty = Value Prelude.Text
  set newValue MemberConfigurationProperty {..}
    = MemberConfigurationProperty
        {description = Prelude.pure newValue, ..}
instance Property "MemberFrameworkConfiguration" MemberConfigurationProperty where
  type PropertyType "MemberFrameworkConfiguration" MemberConfigurationProperty = MemberFrameworkConfigurationProperty
  set newValue MemberConfigurationProperty {..}
    = MemberConfigurationProperty
        {memberFrameworkConfiguration = Prelude.pure newValue, ..}
instance Property "Name" MemberConfigurationProperty where
  type PropertyType "Name" MemberConfigurationProperty = Value Prelude.Text
  set newValue MemberConfigurationProperty {..}
    = MemberConfigurationProperty {name = newValue, ..}