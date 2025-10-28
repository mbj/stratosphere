module Stratosphere.IoTAnalytics.Pipeline (
        module Exports, Pipeline(..), mkPipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.ActivityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Pipeline
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html>
    Pipeline {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelineactivities>
              pipelineActivities :: [ActivityProperty],
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelinename>
              pipelineName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeline :: [ActivityProperty] -> Pipeline
mkPipeline pipelineActivities
  = Pipeline
      {haddock_workaround_ = (), pipelineActivities = pipelineActivities,
       pipelineName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Pipeline where
  toResourceProperties Pipeline {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PipelineActivities" JSON..= pipelineActivities]
                           (Prelude.catMaybes
                              [(JSON..=) "PipelineName" Prelude.<$> pipelineName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Pipeline where
  toJSON Pipeline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PipelineActivities" JSON..= pipelineActivities]
              (Prelude.catMaybes
                 [(JSON..=) "PipelineName" Prelude.<$> pipelineName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PipelineActivities" Pipeline where
  type PropertyType "PipelineActivities" Pipeline = [ActivityProperty]
  set newValue Pipeline {..}
    = Pipeline {pipelineActivities = newValue, ..}
instance Property "PipelineName" Pipeline where
  type PropertyType "PipelineName" Pipeline = Value Prelude.Text
  set newValue Pipeline {..}
    = Pipeline {pipelineName = Prelude.pure newValue, ..}
instance Property "Tags" Pipeline where
  type PropertyType "Tags" Pipeline = [Tag]
  set newValue Pipeline {..}
    = Pipeline {tags = Prelude.pure newValue, ..}