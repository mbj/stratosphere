module Stratosphere.OSIS.Pipeline (
        module Exports, Pipeline(..), mkPipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.LogPublishingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.VpcOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Pipeline
  = Pipeline {logPublishingOptions :: (Prelude.Maybe LogPublishingOptionsProperty),
              maxUnits :: (Value Prelude.Integer),
              minUnits :: (Value Prelude.Integer),
              pipelineConfigurationBody :: (Value Prelude.Text),
              pipelineName :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag]),
              vpcOptions :: (Prelude.Maybe VpcOptionsProperty)}
mkPipeline ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Text -> Pipeline
mkPipeline maxUnits minUnits pipelineConfigurationBody pipelineName
  = Pipeline
      {maxUnits = maxUnits, minUnits = minUnits,
       pipelineConfigurationBody = pipelineConfigurationBody,
       pipelineName = pipelineName,
       logPublishingOptions = Prelude.Nothing, tags = Prelude.Nothing,
       vpcOptions = Prelude.Nothing}
instance ToResourceProperties Pipeline where
  toResourceProperties Pipeline {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxUnits" JSON..= maxUnits, "MinUnits" JSON..= minUnits,
                            "PipelineConfigurationBody" JSON..= pipelineConfigurationBody,
                            "PipelineName" JSON..= pipelineName]
                           (Prelude.catMaybes
                              [(JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcOptions" Prelude.<$> vpcOptions]))}
instance JSON.ToJSON Pipeline where
  toJSON Pipeline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxUnits" JSON..= maxUnits, "MinUnits" JSON..= minUnits,
               "PipelineConfigurationBody" JSON..= pipelineConfigurationBody,
               "PipelineName" JSON..= pipelineName]
              (Prelude.catMaybes
                 [(JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcOptions" Prelude.<$> vpcOptions])))
instance Property "LogPublishingOptions" Pipeline where
  type PropertyType "LogPublishingOptions" Pipeline = LogPublishingOptionsProperty
  set newValue Pipeline {..}
    = Pipeline {logPublishingOptions = Prelude.pure newValue, ..}
instance Property "MaxUnits" Pipeline where
  type PropertyType "MaxUnits" Pipeline = Value Prelude.Integer
  set newValue Pipeline {..} = Pipeline {maxUnits = newValue, ..}
instance Property "MinUnits" Pipeline where
  type PropertyType "MinUnits" Pipeline = Value Prelude.Integer
  set newValue Pipeline {..} = Pipeline {minUnits = newValue, ..}
instance Property "PipelineConfigurationBody" Pipeline where
  type PropertyType "PipelineConfigurationBody" Pipeline = Value Prelude.Text
  set newValue Pipeline {..}
    = Pipeline {pipelineConfigurationBody = newValue, ..}
instance Property "PipelineName" Pipeline where
  type PropertyType "PipelineName" Pipeline = Value Prelude.Text
  set newValue Pipeline {..} = Pipeline {pipelineName = newValue, ..}
instance Property "Tags" Pipeline where
  type PropertyType "Tags" Pipeline = [Tag]
  set newValue Pipeline {..}
    = Pipeline {tags = Prelude.pure newValue, ..}
instance Property "VpcOptions" Pipeline where
  type PropertyType "VpcOptions" Pipeline = VpcOptionsProperty
  set newValue Pipeline {..}
    = Pipeline {vpcOptions = Prelude.pure newValue, ..}