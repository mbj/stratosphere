module Stratosphere.Bedrock.Flow.RetrievalFlowNodeServiceConfigurationProperty (
        module Exports, RetrievalFlowNodeServiceConfigurationProperty(..),
        mkRetrievalFlowNodeServiceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.RetrievalFlowNodeS3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RetrievalFlowNodeServiceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-retrievalflownodeserviceconfiguration.html>
    RetrievalFlowNodeServiceConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-retrievalflownodeserviceconfiguration.html#cfn-bedrock-flow-retrievalflownodeserviceconfiguration-s3>
                                                   s3 :: (Prelude.Maybe RetrievalFlowNodeS3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetrievalFlowNodeServiceConfigurationProperty ::
  RetrievalFlowNodeServiceConfigurationProperty
mkRetrievalFlowNodeServiceConfigurationProperty
  = RetrievalFlowNodeServiceConfigurationProperty
      {haddock_workaround_ = (), s3 = Prelude.Nothing}
instance ToResourceProperties RetrievalFlowNodeServiceConfigurationProperty where
  toResourceProperties
    RetrievalFlowNodeServiceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.RetrievalFlowNodeServiceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON RetrievalFlowNodeServiceConfigurationProperty where
  toJSON RetrievalFlowNodeServiceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3]))
instance Property "S3" RetrievalFlowNodeServiceConfigurationProperty where
  type PropertyType "S3" RetrievalFlowNodeServiceConfigurationProperty = RetrievalFlowNodeS3ConfigurationProperty
  set newValue RetrievalFlowNodeServiceConfigurationProperty {..}
    = RetrievalFlowNodeServiceConfigurationProperty
        {s3 = Prelude.pure newValue, ..}