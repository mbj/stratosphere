module Stratosphere.Timestream.Table.RetentionPropertiesProperty (
        RetentionPropertiesProperty(..), mkRetentionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionPropertiesProperty
  = RetentionPropertiesProperty {magneticStoreRetentionPeriodInDays :: (Prelude.Maybe (Value Prelude.Text)),
                                 memoryStoreRetentionPeriodInHours :: (Prelude.Maybe (Value Prelude.Text))}
mkRetentionPropertiesProperty :: RetentionPropertiesProperty
mkRetentionPropertiesProperty
  = RetentionPropertiesProperty
      {magneticStoreRetentionPeriodInDays = Prelude.Nothing,
       memoryStoreRetentionPeriodInHours = Prelude.Nothing}
instance ToResourceProperties RetentionPropertiesProperty where
  toResourceProperties RetentionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Table.RetentionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MagneticStoreRetentionPeriodInDays"
                              Prelude.<$> magneticStoreRetentionPeriodInDays,
                            (JSON..=) "MemoryStoreRetentionPeriodInHours"
                              Prelude.<$> memoryStoreRetentionPeriodInHours])}
instance JSON.ToJSON RetentionPropertiesProperty where
  toJSON RetentionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MagneticStoreRetentionPeriodInDays"
                 Prelude.<$> magneticStoreRetentionPeriodInDays,
               (JSON..=) "MemoryStoreRetentionPeriodInHours"
                 Prelude.<$> memoryStoreRetentionPeriodInHours]))
instance Property "MagneticStoreRetentionPeriodInDays" RetentionPropertiesProperty where
  type PropertyType "MagneticStoreRetentionPeriodInDays" RetentionPropertiesProperty = Value Prelude.Text
  set newValue RetentionPropertiesProperty {..}
    = RetentionPropertiesProperty
        {magneticStoreRetentionPeriodInDays = Prelude.pure newValue, ..}
instance Property "MemoryStoreRetentionPeriodInHours" RetentionPropertiesProperty where
  type PropertyType "MemoryStoreRetentionPeriodInHours" RetentionPropertiesProperty = Value Prelude.Text
  set newValue RetentionPropertiesProperty {..}
    = RetentionPropertiesProperty
        {memoryStoreRetentionPeriodInHours = Prelude.pure newValue, ..}