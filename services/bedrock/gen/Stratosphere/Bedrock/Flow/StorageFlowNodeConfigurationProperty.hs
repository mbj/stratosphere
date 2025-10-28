module Stratosphere.Bedrock.Flow.StorageFlowNodeConfigurationProperty (
        module Exports, StorageFlowNodeConfigurationProperty(..),
        mkStorageFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.StorageFlowNodeServiceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data StorageFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-storageflownodeconfiguration.html>
    StorageFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-storageflownodeconfiguration.html#cfn-bedrock-flow-storageflownodeconfiguration-serviceconfiguration>
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
        {awsType = "AWS::Bedrock::Flow.StorageFlowNodeConfiguration",
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