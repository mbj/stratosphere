module Stratosphere.QuickSight.Analysis.TableCellImageSizingConfigurationProperty (
        TableCellImageSizingConfigurationProperty(..),
        mkTableCellImageSizingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableCellImageSizingConfigurationProperty
  = TableCellImageSizingConfigurationProperty {tableCellImageScalingConfiguration :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableCellImageSizingConfigurationProperty ::
  TableCellImageSizingConfigurationProperty
mkTableCellImageSizingConfigurationProperty
  = TableCellImageSizingConfigurationProperty
      {tableCellImageScalingConfiguration = Prelude.Nothing}
instance ToResourceProperties TableCellImageSizingConfigurationProperty where
  toResourceProperties TableCellImageSizingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableCellImageSizingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TableCellImageScalingConfiguration"
                              Prelude.<$> tableCellImageScalingConfiguration])}
instance JSON.ToJSON TableCellImageSizingConfigurationProperty where
  toJSON TableCellImageSizingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TableCellImageScalingConfiguration"
                 Prelude.<$> tableCellImageScalingConfiguration]))
instance Property "TableCellImageScalingConfiguration" TableCellImageSizingConfigurationProperty where
  type PropertyType "TableCellImageScalingConfiguration" TableCellImageSizingConfigurationProperty = Value Prelude.Text
  set newValue TableCellImageSizingConfigurationProperty {}
    = TableCellImageSizingConfigurationProperty
        {tableCellImageScalingConfiguration = Prelude.pure newValue, ..}