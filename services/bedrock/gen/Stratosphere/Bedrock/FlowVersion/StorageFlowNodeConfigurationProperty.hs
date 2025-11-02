module Stratosphere.Bedrock.FlowVersion.StorageFlowNodeConfigurationProperty (
        module Exports, StorageFlowNodeConfigurationProperty(..),
        mkStorageFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.StorageFlowNodeServiceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data StorageFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-storageflownodeconfiguration.html>
    StorageFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-storageflownodeconfiguration.html#cfn-bedrock-flowversion-storageflownodeconfiguration-serviceconfiguration>
                                          serviceConfiguration :: StorageFlowNodeServiceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageFlowNodeConfigurationProperty ::
  StorageFlowNodeServiceConfigurationProperty
  -> StorageFlowNodeConfigurationProperty
mkStorageFlowNodeConfigurationProperty serviceConfiguration
  = StorageFlowNodeConfigurationProperty
      {haddock_workaround_ = (),
       serviceConfiguration = serviceConfiguration}
instance ToResourceProperties StorageFlowNodeConfigurationProperty where
  toResourceProperties StorageFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.StorageFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["ServiceConfiguration" JSON..= serviceConfiguration]}
instance JSON.ToJSON StorageFlowNodeConfigurationProperty where
  toJSON StorageFlowNodeConfigurationProperty {..}
    = JSON.object ["ServiceConfiguration" JSON..= serviceConfiguration]
instance Property "ServiceConfiguration" StorageFlowNodeConfigurationProperty where
  type PropertyType "ServiceConfiguration" StorageFlowNodeConfigurationProperty = StorageFlowNodeServiceConfigurationProperty
  set newValue StorageFlowNodeConfigurationProperty {..}
    = StorageFlowNodeConfigurationProperty
        {serviceConfiguration = newValue, ..}