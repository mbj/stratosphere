module Stratosphere.OSIS.Pipeline (
        module Exports, Pipeline(..), mkPipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.BufferOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.EncryptionAtRestOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.LogPublishingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.VpcOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Pipeline
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html>
    Pipeline {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-bufferoptions>
              bufferOptions :: (Prelude.Maybe BufferOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-encryptionatrestoptions>
              encryptionAtRestOptions :: (Prelude.Maybe EncryptionAtRestOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-logpublishingoptions>
              logPublishingOptions :: (Prelude.Maybe LogPublishingOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-maxunits>
              maxUnits :: (Value Prelude.Integer),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-minunits>
              minUnits :: (Value Prelude.Integer),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-pipelineconfigurationbody>
              pipelineConfigurationBody :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-pipelinename>
              pipelineName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-osis-pipeline.html#cfn-osis-pipeline-vpcoptions>
              vpcOptions :: (Prelude.Maybe VpcOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeline ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Text -> Pipeline
mkPipeline maxUnits minUnits pipelineConfigurationBody pipelineName
  = Pipeline
      {haddock_workaround_ = (), maxUnits = maxUnits,
       minUnits = minUnits,
       pipelineConfigurationBody = pipelineConfigurationBody,
       pipelineName = pipelineName, bufferOptions = Prelude.Nothing,
       encryptionAtRestOptions = Prelude.Nothing,
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
                              [(JSON..=) "BufferOptions" Prelude.<$> bufferOptions,
                               (JSON..=) "EncryptionAtRestOptions"
                                 Prelude.<$> encryptionAtRestOptions,
                               (JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
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
                 [(JSON..=) "BufferOptions" Prelude.<$> bufferOptions,
                  (JSON..=) "EncryptionAtRestOptions"
                    Prelude.<$> encryptionAtRestOptions,
                  (JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcOptions" Prelude.<$> vpcOptions])))
instance Property "BufferOptions" Pipeline where
  type PropertyType "BufferOptions" Pipeline = BufferOptionsProperty
  set newValue Pipeline {..}
    = Pipeline {bufferOptions = Prelude.pure newValue, ..}
instance Property "EncryptionAtRestOptions" Pipeline where
  type PropertyType "EncryptionAtRestOptions" Pipeline = EncryptionAtRestOptionsProperty
  set newValue Pipeline {..}
    = Pipeline {encryptionAtRestOptions = Prelude.pure newValue, ..}
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