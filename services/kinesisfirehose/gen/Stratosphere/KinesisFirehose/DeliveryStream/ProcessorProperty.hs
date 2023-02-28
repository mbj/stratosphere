module Stratosphere.KinesisFirehose.DeliveryStream.ProcessorProperty (
        module Exports, ProcessorProperty(..), mkProcessorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessorParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessorProperty
  = ProcessorProperty {parameters :: (Prelude.Maybe [ProcessorParameterProperty]),
                       type' :: (Value Prelude.Text)}
mkProcessorProperty :: Value Prelude.Text -> ProcessorProperty
mkProcessorProperty type'
  = ProcessorProperty {type' = type', parameters = Prelude.Nothing}
instance ToResourceProperties ProcessorProperty where
  toResourceProperties ProcessorProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.Processor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON ProcessorProperty where
  toJSON ProcessorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "Parameters" ProcessorProperty where
  type PropertyType "Parameters" ProcessorProperty = [ProcessorParameterProperty]
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parameters = Prelude.pure newValue, ..}
instance Property "Type" ProcessorProperty where
  type PropertyType "Type" ProcessorProperty = Value Prelude.Text
  set newValue ProcessorProperty {..}
    = ProcessorProperty {type' = newValue, ..}