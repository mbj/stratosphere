module Stratosphere.KinesisFirehose.DeliveryStream.OutputFormatConfigurationProperty (
        module Exports, OutputFormatConfigurationProperty(..),
        mkOutputFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SerializerProperty as Exports
import Stratosphere.ResourceProperties
data OutputFormatConfigurationProperty
  = OutputFormatConfigurationProperty {serializer :: (Prelude.Maybe SerializerProperty)}
mkOutputFormatConfigurationProperty ::
  OutputFormatConfigurationProperty
mkOutputFormatConfigurationProperty
  = OutputFormatConfigurationProperty {serializer = Prelude.Nothing}
instance ToResourceProperties OutputFormatConfigurationProperty where
  toResourceProperties OutputFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.OutputFormatConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Serializer" Prelude.<$> serializer])}
instance JSON.ToJSON OutputFormatConfigurationProperty where
  toJSON OutputFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Serializer" Prelude.<$> serializer]))
instance Property "Serializer" OutputFormatConfigurationProperty where
  type PropertyType "Serializer" OutputFormatConfigurationProperty = SerializerProperty
  set newValue OutputFormatConfigurationProperty {}
    = OutputFormatConfigurationProperty
        {serializer = Prelude.pure newValue, ..}