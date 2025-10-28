module Stratosphere.KinesisAnalyticsV2.Application.InputProperty (
        module Exports, InputProperty(..), mkInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.InputParallelismProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.InputProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.InputSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.KinesisFirehoseInputProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.KinesisStreamsInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html>
    InputProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputparallelism>
                   inputParallelism :: (Prelude.Maybe InputParallelismProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputprocessingconfiguration>
                   inputProcessingConfiguration :: (Prelude.Maybe InputProcessingConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputschema>
                   inputSchema :: InputSchemaProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisfirehoseinput>
                   kinesisFirehoseInput :: (Prelude.Maybe KinesisFirehoseInputProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisstreamsinput>
                   kinesisStreamsInput :: (Prelude.Maybe KinesisStreamsInputProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-nameprefix>
                   namePrefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputProperty ::
  InputSchemaProperty -> Value Prelude.Text -> InputProperty
mkInputProperty inputSchema namePrefix
  = InputProperty
      {haddock_workaround_ = (), inputSchema = inputSchema,
       namePrefix = namePrefix, inputParallelism = Prelude.Nothing,
       inputProcessingConfiguration = Prelude.Nothing,
       kinesisFirehoseInput = Prelude.Nothing,
       kinesisStreamsInput = Prelude.Nothing}
instance ToResourceProperties InputProperty where
  toResourceProperties InputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.Input",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputSchema" JSON..= inputSchema,
                            "NamePrefix" JSON..= namePrefix]
                           (Prelude.catMaybes
                              [(JSON..=) "InputParallelism" Prelude.<$> inputParallelism,
                               (JSON..=) "InputProcessingConfiguration"
                                 Prelude.<$> inputProcessingConfiguration,
                               (JSON..=) "KinesisFirehoseInput" Prelude.<$> kinesisFirehoseInput,
                               (JSON..=) "KinesisStreamsInput" Prelude.<$> kinesisStreamsInput]))}
instance JSON.ToJSON InputProperty where
  toJSON InputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputSchema" JSON..= inputSchema,
               "NamePrefix" JSON..= namePrefix]
              (Prelude.catMaybes
                 [(JSON..=) "InputParallelism" Prelude.<$> inputParallelism,
                  (JSON..=) "InputProcessingConfiguration"
                    Prelude.<$> inputProcessingConfiguration,
                  (JSON..=) "KinesisFirehoseInput" Prelude.<$> kinesisFirehoseInput,
                  (JSON..=) "KinesisStreamsInput" Prelude.<$> kinesisStreamsInput])))
instance Property "InputParallelism" InputProperty where
  type PropertyType "InputParallelism" InputProperty = InputParallelismProperty
  set newValue InputProperty {..}
    = InputProperty {inputParallelism = Prelude.pure newValue, ..}
instance Property "InputProcessingConfiguration" InputProperty where
  type PropertyType "InputProcessingConfiguration" InputProperty = InputProcessingConfigurationProperty
  set newValue InputProperty {..}
    = InputProperty
        {inputProcessingConfiguration = Prelude.pure newValue, ..}
instance Property "InputSchema" InputProperty where
  type PropertyType "InputSchema" InputProperty = InputSchemaProperty
  set newValue InputProperty {..}
    = InputProperty {inputSchema = newValue, ..}
instance Property "KinesisFirehoseInput" InputProperty where
  type PropertyType "KinesisFirehoseInput" InputProperty = KinesisFirehoseInputProperty
  set newValue InputProperty {..}
    = InputProperty {kinesisFirehoseInput = Prelude.pure newValue, ..}
instance Property "KinesisStreamsInput" InputProperty where
  type PropertyType "KinesisStreamsInput" InputProperty = KinesisStreamsInputProperty
  set newValue InputProperty {..}
    = InputProperty {kinesisStreamsInput = Prelude.pure newValue, ..}
instance Property "NamePrefix" InputProperty where
  type PropertyType "NamePrefix" InputProperty = Value Prelude.Text
  set newValue InputProperty {..}
    = InputProperty {namePrefix = newValue, ..}