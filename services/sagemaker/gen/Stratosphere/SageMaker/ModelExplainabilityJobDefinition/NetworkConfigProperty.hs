module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.NetworkConfigProperty (
        module Exports, NetworkConfigProperty(..), mkNetworkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-networkconfig.html>
    NetworkConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-networkconfig.html#cfn-sagemaker-modelexplainabilityjobdefinition-networkconfig-enableintercontainertrafficencryption>
                           enableInterContainerTrafficEncryption :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-networkconfig.html#cfn-sagemaker-modelexplainabilityjobdefinition-networkconfig-enablenetworkisolation>
                           enableNetworkIsolation :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-networkconfig.html#cfn-sagemaker-modelexplainabilityjobdefinition-networkconfig-vpcconfig>
                           vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigProperty :: NetworkConfigProperty
mkNetworkConfigProperty
  = NetworkConfigProperty
      {enableInterContainerTrafficEncryption = Prelude.Nothing,
       enableNetworkIsolation = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties NetworkConfigProperty where
  toResourceProperties NetworkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.NetworkConfig",
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