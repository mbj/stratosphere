module Stratosphere.SageMaker.MonitoringSchedule.NetworkConfigProperty (
        module Exports, NetworkConfigProperty(..), mkNetworkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigProperty
  = NetworkConfigProperty {enableInterContainerTrafficEncryption :: (Prelude.Maybe (Value Prelude.Bool)),
                           enableNetworkIsolation :: (Prelude.Maybe (Value Prelude.Bool)),
                           vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
mkNetworkConfigProperty :: NetworkConfigProperty
mkNetworkConfigProperty
  = NetworkConfigProperty
      {enableInterContainerTrafficEncryption = Prelude.Nothing,
       enableNetworkIsolation = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties NetworkConfigProperty where
  toResourceProperties NetworkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.NetworkConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableInterContainerTrafficEncryption"
                              Prelude.<$> enableInterContainerTrafficEncryption,
                            (JSON..=) "EnableNetworkIsolation"
                              Prelude.<$> enableNetworkIsolation,
                            (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])}
instance JSON.ToJSON NetworkConfigProperty where
  toJSON NetworkConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableInterContainerTrafficEncryption"
                 Prelude.<$> enableInterContainerTrafficEncryption,
               (JSON..=) "EnableNetworkIsolation"
                 Prelude.<$> enableNetworkIsolation,
               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))
instance Property "EnableInterContainerTrafficEncryption" NetworkConfigProperty where
  type PropertyType "EnableInterContainerTrafficEncryption" NetworkConfigProperty = Value Prelude.Bool
  set newValue NetworkConfigProperty {..}
    = NetworkConfigProperty
        {enableInterContainerTrafficEncryption = Prelude.pure newValue, ..}
instance Property "EnableNetworkIsolation" NetworkConfigProperty where
  type PropertyType "EnableNetworkIsolation" NetworkConfigProperty = Value Prelude.Bool
  set newValue NetworkConfigProperty {..}
    = NetworkConfigProperty
        {enableNetworkIsolation = Prelude.pure newValue, ..}
instance Property "VpcConfig" NetworkConfigProperty where
  type PropertyType "VpcConfig" NetworkConfigProperty = VpcConfigProperty
  set newValue NetworkConfigProperty {..}
    = NetworkConfigProperty {vpcConfig = Prelude.pure newValue, ..}