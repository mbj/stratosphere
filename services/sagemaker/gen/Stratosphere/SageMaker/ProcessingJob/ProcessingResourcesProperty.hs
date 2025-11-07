module Stratosphere.SageMaker.ProcessingJob.ProcessingResourcesProperty (
        module Exports, ProcessingResourcesProperty(..),
        mkProcessingResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.ClusterConfigProperty as Exports
import Stratosphere.ResourceProperties
data ProcessingResourcesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingresources.html>
    ProcessingResourcesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingresources.html#cfn-sagemaker-processingjob-processingresources-clusterconfig>
                                 clusterConfig :: ClusterConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessingResourcesProperty ::
  ClusterConfigProperty -> ProcessingResourcesProperty
mkProcessingResourcesProperty clusterConfig
  = ProcessingResourcesProperty
      {haddock_workaround_ = (), clusterConfig = clusterConfig}
instance ToResourceProperties ProcessingResourcesProperty where
  toResourceProperties ProcessingResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.ProcessingResources",
         supportsTags = Prelude.False,
         properties = ["ClusterConfig" JSON..= clusterConfig]}
instance JSON.ToJSON ProcessingResourcesProperty where
  toJSON ProcessingResourcesProperty {..}
    = JSON.object ["ClusterConfig" JSON..= clusterConfig]
instance Property "ClusterConfig" ProcessingResourcesProperty where
  type PropertyType "ClusterConfig" ProcessingResourcesProperty = ClusterConfigProperty
  set newValue ProcessingResourcesProperty {..}
    = ProcessingResourcesProperty {clusterConfig = newValue, ..}