module Stratosphere.KinesisAnalytics.Application.InputProcessingConfigurationProperty (
        module Exports, InputProcessingConfigurationProperty(..),
        mkInputProcessingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.Application.InputLambdaProcessorProperty as Exports
import Stratosphere.ResourceProperties
data InputProcessingConfigurationProperty
  = InputProcessingConfigurationProperty {inputLambdaProcessor :: (Prelude.Maybe InputLambdaProcessorProperty)}
mkInputProcessingConfigurationProperty ::
  InputProcessingConfigurationProperty
mkInputProcessingConfigurationProperty
  = InputProcessingConfigurationProperty
      {inputLambdaProcessor = Prelude.Nothing}
instance ToResourceProperties InputProcessingConfigurationProperty where
  toResourceProperties InputProcessingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.InputProcessingConfiguration",
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