module Stratosphere.AppRunner.Service.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.EgressConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.IngressConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-networkconfiguration.html>
    NetworkConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-networkconfiguration.html#cfn-apprunner-service-networkconfiguration-egressconfiguration>
                                  egressConfiguration :: (Prelude.Maybe EgressConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-networkconfiguration.html#cfn-apprunner-service-networkconfiguration-ingressconfiguration>
                                  ingressConfiguration :: (Prelude.Maybe IngressConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-networkconfiguration.html#cfn-apprunner-service-networkconfiguration-ipaddresstype>
                                  ipAddressType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty
      {haddock_workaround_ = (), egressConfiguration = Prelude.Nothing,
       ingressConfiguration = Prelude.Nothing,
       ipAddressType = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EgressConfiguration" Prelude.<$> egressConfiguration,
                            (JSON..=) "IngressConfiguration" Prelude.<$> ingressConfiguration,
                            (JSON..=) "IpAddressType" Prelude.<$> ipAddressType])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EgressConfiguration" Prelude.<$> egressConfiguration,
               (JSON..=) "IngressConfiguration" Prelude.<$> ingressConfiguration,
               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType]))
instance Property "EgressConfiguration" NetworkConfigurationProperty where
  type PropertyType "EgressConfiguration" NetworkConfigurationProperty = EgressConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {egressConfiguration = Prelude.pure newValue, ..}
instance Property "IngressConfiguration" NetworkConfigurationProperty where
  type PropertyType "IngressConfiguration" NetworkConfigurationProperty = IngressConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {ingressConfiguration = Prelude.pure newValue, ..}
instance Property "IpAddressType" NetworkConfigurationProperty where
  type PropertyType "IpAddressType" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {ipAddressType = Prelude.pure newValue, ..}