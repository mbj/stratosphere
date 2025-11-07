module Stratosphere.RTBFabric.ResponderGateway.ManagedEndpointConfigurationProperty (
        module Exports, ManagedEndpointConfigurationProperty(..),
        mkManagedEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.ResponderGateway.AutoScalingGroupsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.ResponderGateway.EksEndpointsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ManagedEndpointConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-managedendpointconfiguration.html>
    ManagedEndpointConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-managedendpointconfiguration.html#cfn-rtbfabric-respondergateway-managedendpointconfiguration-autoscalinggroupsconfiguration>
                                          autoScalingGroupsConfiguration :: (Prelude.Maybe AutoScalingGroupsConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-managedendpointconfiguration.html#cfn-rtbfabric-respondergateway-managedendpointconfiguration-eksendpointsconfiguration>
                                          eksEndpointsConfiguration :: (Prelude.Maybe EksEndpointsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedEndpointConfigurationProperty ::
  ManagedEndpointConfigurationProperty
mkManagedEndpointConfigurationProperty
  = ManagedEndpointConfigurationProperty
      {haddock_workaround_ = (),
       autoScalingGroupsConfiguration = Prelude.Nothing,
       eksEndpointsConfiguration = Prelude.Nothing}
instance ToResourceProperties ManagedEndpointConfigurationProperty where
  toResourceProperties ManagedEndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::ResponderGateway.ManagedEndpointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoScalingGroupsConfiguration"
                              Prelude.<$> autoScalingGroupsConfiguration,
                            (JSON..=) "EksEndpointsConfiguration"
                              Prelude.<$> eksEndpointsConfiguration])}
instance JSON.ToJSON ManagedEndpointConfigurationProperty where
  toJSON ManagedEndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoScalingGroupsConfiguration"
                 Prelude.<$> autoScalingGroupsConfiguration,
               (JSON..=) "EksEndpointsConfiguration"
                 Prelude.<$> eksEndpointsConfiguration]))
instance Property "AutoScalingGroupsConfiguration" ManagedEndpointConfigurationProperty where
  type PropertyType "AutoScalingGroupsConfiguration" ManagedEndpointConfigurationProperty = AutoScalingGroupsConfigurationProperty
  set newValue ManagedEndpointConfigurationProperty {..}
    = ManagedEndpointConfigurationProperty
        {autoScalingGroupsConfiguration = Prelude.pure newValue, ..}
instance Property "EksEndpointsConfiguration" ManagedEndpointConfigurationProperty where
  type PropertyType "EksEndpointsConfiguration" ManagedEndpointConfigurationProperty = EksEndpointsConfigurationProperty
  set newValue ManagedEndpointConfigurationProperty {..}
    = ManagedEndpointConfigurationProperty
        {eksEndpointsConfiguration = Prelude.pure newValue, ..}