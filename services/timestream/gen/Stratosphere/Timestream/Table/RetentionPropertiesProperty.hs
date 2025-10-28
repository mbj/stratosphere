module Stratosphere.Timestream.Table.RetentionPropertiesProperty (
        RetentionPropertiesProperty(..), mkRetentionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-retentionproperties.html>
    RetentionPropertiesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-retentionproperties.html#cfn-timestream-table-retentionproperties-magneticstoreretentionperiodindays>
                                 magneticStoreRetentionPeriodInDays :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-retentionproperties.html#cfn-timestream-table-retentionproperties-memorystoreretentionperiodinhours>
                                 memoryStoreRetentionPeriodInHours :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionPropertiesProperty :: RetentionPropertiesProperty
mkRetentionPropertiesProperty
  = RetentionPropertiesProperty
      {haddock_workaround_ = (),
       magneticStoreRetentionPeriodInDays = Prelude.Nothing,
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