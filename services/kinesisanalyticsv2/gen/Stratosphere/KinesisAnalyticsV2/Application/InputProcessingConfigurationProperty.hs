module Stratosphere.KinesisAnalyticsV2.Application.InputProcessingConfigurationProperty (
        module Exports, InputProcessingConfigurationProperty(..),
        mkInputProcessingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.InputLambdaProcessorProperty as Exports
import Stratosphere.ResourceProperties
data InputProcessingConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html>
    InputProcessingConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html#cfn-kinesisanalyticsv2-application-inputprocessingconfiguration-inputlambdaprocessor>
                                          inputLambdaProcessor :: (Prelude.Maybe InputLambdaProcessorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputProcessingConfigurationProperty ::
  InputProcessingConfigurationProperty
mkInputProcessingConfigurationProperty
  = InputProcessingConfigurationProperty
      {inputLambdaProcessor = Prelude.Nothing}
instance ToResourceProperties InputProcessingConfigurationProperty where
  toResourceProperties InputProcessingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.InputProcessingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputLambdaProcessor"
                              Prelude.<$> inputLambdaProcessor])}
instance JSON.ToJSON InputProcessingConfigurationProperty where
  toJSON InputProcessingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputLambdaProcessor"
                 Prelude.<$> inputLambdaProcessor]))
instance Property "InputLambdaProcessor" InputProcessingConfigurationProperty where
  type PropertyType "InputLambdaProcessor" InputProcessingConfigurationProperty = InputLambdaProcessorProperty
  set newValue InputProcessingConfigurationProperty {}
    = InputProcessingConfigurationProperty
        {inputLambdaProcessor = Prelude.pure newValue, ..}