module Stratosphere.Bedrock.FlowVersion.RetrievalFlowNodeConfigurationProperty (
        module Exports, RetrievalFlowNodeConfigurationProperty(..),
        mkRetrievalFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.RetrievalFlowNodeServiceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RetrievalFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-retrievalflownodeconfiguration.html>
    RetrievalFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-retrievalflownodeconfiguration.html#cfn-bedrock-flowversion-retrievalflownodeconfiguration-serviceconfiguration>
                                            serviceConfiguration :: RetrievalFlowNodeServiceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetrievalFlowNodeConfigurationProperty ::
  RetrievalFlowNodeServiceConfigurationProperty
  -> RetrievalFlowNodeConfigurationProperty
mkRetrievalFlowNodeConfigurationProperty serviceConfiguration
  = RetrievalFlowNodeConfigurationProperty
      {haddock_workaround_ = (),
       serviceConfiguration = serviceConfiguration}
instance ToResourceProperties RetrievalFlowNodeConfigurationProperty where
  toResourceProperties RetrievalFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.RetrievalFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["ServiceConfiguration" JSON..= serviceConfiguration]}
instance JSON.ToJSON RetrievalFlowNodeConfigurationProperty where
  toJSON RetrievalFlowNodeConfigurationProperty {..}
    = JSON.object ["ServiceConfiguration" JSON..= serviceConfiguration]
instance Property "ServiceConfiguration" RetrievalFlowNodeConfigurationProperty where
  type PropertyType "ServiceConfiguration" RetrievalFlowNodeConfigurationProperty = RetrievalFlowNodeServiceConfigurationProperty
  set newValue RetrievalFlowNodeConfigurationProperty {..}
    = RetrievalFlowNodeConfigurationProperty
        {serviceConfiguration = newValue, ..}