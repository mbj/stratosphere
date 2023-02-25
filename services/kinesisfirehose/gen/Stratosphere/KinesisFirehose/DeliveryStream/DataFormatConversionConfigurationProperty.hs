module Stratosphere.KinesisFirehose.DeliveryStream.DataFormatConversionConfigurationProperty (
        module Exports, DataFormatConversionConfigurationProperty(..),
        mkDataFormatConversionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.InputFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.OutputFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SchemaConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataFormatConversionConfigurationProperty
  = DataFormatConversionConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                               inputFormatConfiguration :: (Prelude.Maybe InputFormatConfigurationProperty),
                                               outputFormatConfiguration :: (Prelude.Maybe OutputFormatConfigurationProperty),
                                               schemaConfiguration :: (Prelude.Maybe SchemaConfigurationProperty)}
mkDataFormatConversionConfigurationProperty ::
  DataFormatConversionConfigurationProperty
mkDataFormatConversionConfigurationProperty
  = DataFormatConversionConfigurationProperty
      {enabled = Prelude.Nothing,
       inputFormatConfiguration = Prelude.Nothing,
       outputFormatConfiguration = Prelude.Nothing,
       schemaConfiguration = Prelude.Nothing}
instance ToResourceProperties DataFormatConversionConfigurationProperty where
  toResourceProperties DataFormatConversionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DataFormatConversionConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "InputFormatConfiguration"
                              Prelude.<$> inputFormatConfiguration,
                            (JSON..=) "OutputFormatConfiguration"
                              Prelude.<$> outputFormatConfiguration,
                            (JSON..=) "SchemaConfiguration" Prelude.<$> schemaConfiguration])}
instance JSON.ToJSON DataFormatConversionConfigurationProperty where
  toJSON DataFormatConversionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "InputFormatConfiguration"
                 Prelude.<$> inputFormatConfiguration,
               (JSON..=) "OutputFormatConfiguration"
                 Prelude.<$> outputFormatConfiguration,
               (JSON..=) "SchemaConfiguration" Prelude.<$> schemaConfiguration]))
instance Property "Enabled" DataFormatConversionConfigurationProperty where
  type PropertyType "Enabled" DataFormatConversionConfigurationProperty = Value Prelude.Bool
  set newValue DataFormatConversionConfigurationProperty {..}
    = DataFormatConversionConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "InputFormatConfiguration" DataFormatConversionConfigurationProperty where
  type PropertyType "InputFormatConfiguration" DataFormatConversionConfigurationProperty = InputFormatConfigurationProperty
  set newValue DataFormatConversionConfigurationProperty {..}
    = DataFormatConversionConfigurationProperty
        {inputFormatConfiguration = Prelude.pure newValue, ..}
instance Property "OutputFormatConfiguration" DataFormatConversionConfigurationProperty where
  type PropertyType "OutputFormatConfiguration" DataFormatConversionConfigurationProperty = OutputFormatConfigurationProperty
  set newValue DataFormatConversionConfigurationProperty {..}
    = DataFormatConversionConfigurationProperty
        {outputFormatConfiguration = Prelude.pure newValue, ..}
instance Property "SchemaConfiguration" DataFormatConversionConfigurationProperty where
  type PropertyType "SchemaConfiguration" DataFormatConversionConfigurationProperty = SchemaConfigurationProperty
  set newValue DataFormatConversionConfigurationProperty {..}
    = DataFormatConversionConfigurationProperty
        {schemaConfiguration = Prelude.pure newValue, ..}