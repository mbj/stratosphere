module Stratosphere.ManagedBlockchain.Member.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.NetworkFrameworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.VotingPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html>
    NetworkConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-framework>
                                  framework :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-frameworkversion>
                                  frameworkVersion :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-networkframeworkconfiguration>
                                  networkFrameworkConfiguration :: (Prelude.Maybe NetworkFrameworkConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-votingpolicy>
                                  votingPolicy :: VotingPolicyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> VotingPolicyProperty -> NetworkConfigurationProperty
mkNetworkConfigurationProperty
  framework
  frameworkVersion
  name
  votingPolicy
  = NetworkConfigurationProperty
      {haddock_workaround_ = (), framework = framework,
       frameworkVersion = frameworkVersion, name = name,
       votingPolicy = votingPolicy, description = Prelude.Nothing,
       networkFrameworkConfiguration = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Framework" JSON..= framework,
                            "FrameworkVersion" JSON..= frameworkVersion, "Name" JSON..= name,
                            "VotingPolicy" JSON..= votingPolicy]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "NetworkFrameworkConfiguration"
                                 Prelude.<$> networkFrameworkConfiguration]))}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Framework" JSON..= framework,
               "FrameworkVersion" JSON..= frameworkVersion, "Name" JSON..= name,
               "VotingPolicy" JSON..= votingPolicy]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "NetworkFrameworkConfiguration"
                    Prelude.<$> networkFrameworkConfiguration])))
instance Property "Description" NetworkConfigurationProperty where
  type PropertyType "Description" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {description = Prelude.pure newValue, ..}
instance Property "Framework" NetworkConfigurationProperty where
  type PropertyType "Framework" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty {framework = newValue, ..}
instance Property "FrameworkVersion" NetworkConfigurationProperty where
  type PropertyType "FrameworkVersion" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty {frameworkVersion = newValue, ..}
instance Property "Name" NetworkConfigurationProperty where
  type PropertyType "Name" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty {name = newValue, ..}
instance Property "NetworkFrameworkConfiguration" NetworkConfigurationProperty where
  type PropertyType "NetworkFrameworkConfiguration" NetworkConfigurationProperty = NetworkFrameworkConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {networkFrameworkConfiguration = Prelude.pure newValue, ..}
instance Property "VotingPolicy" NetworkConfigurationProperty where
  type PropertyType "VotingPolicy" NetworkConfigurationProperty = VotingPolicyProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty {votingPolicy = newValue, ..}