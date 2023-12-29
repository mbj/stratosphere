module Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty (
        module Exports, ProcessingConfigurationProperty(..),
        mkProcessingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessingConfigurationProperty
  = ProcessingConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     processors :: (Prelude.Maybe [ProcessorProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessingConfigurationProperty ::
  ProcessingConfigurationProperty
mkProcessingConfigurationProperty
  = ProcessingConfigurationProperty
      {enabled = Prelude.Nothing, processors = Prelude.Nothing}
instance ToResourceProperties ProcessingConfigurationProperty where
  toResourceProperties ProcessingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Processors" Prelude.<$> processors])}
instance JSON.ToJSON ProcessingConfigurationProperty where
  toJSON ProcessingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Processors" Prelude.<$> processors]))
instance Property "Enabled" ProcessingConfigurationProperty where
  type PropertyType "Enabled" ProcessingConfigurationProperty = Value Prelude.Bool
  set newValue ProcessingConfigurationProperty {..}
    = ProcessingConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "Processors" ProcessingConfigurationProperty where
  type PropertyType "Processors" ProcessingConfigurationProperty = [ProcessorProperty]
  set newValue ProcessingConfigurationProperty {..}
    = ProcessingConfigurationProperty
        {processors = Prelude.pure newValue, ..}