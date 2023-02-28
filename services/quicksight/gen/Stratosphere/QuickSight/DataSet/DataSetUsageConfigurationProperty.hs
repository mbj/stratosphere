module Stratosphere.QuickSight.DataSet.DataSetUsageConfigurationProperty (
        DataSetUsageConfigurationProperty(..),
        mkDataSetUsageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetUsageConfigurationProperty
  = DataSetUsageConfigurationProperty {disableUseAsDirectQuerySource :: (Prelude.Maybe (Value Prelude.Bool)),
                                       disableUseAsImportedSource :: (Prelude.Maybe (Value Prelude.Bool))}
mkDataSetUsageConfigurationProperty ::
  DataSetUsageConfigurationProperty
mkDataSetUsageConfigurationProperty
  = DataSetUsageConfigurationProperty
      {disableUseAsDirectQuerySource = Prelude.Nothing,
       disableUseAsImportedSource = Prelude.Nothing}
instance ToResourceProperties DataSetUsageConfigurationProperty where
  toResourceProperties DataSetUsageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DataSetUsageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisableUseAsDirectQuerySource"
                              Prelude.<$> disableUseAsDirectQuerySource,
                            (JSON..=) "DisableUseAsImportedSource"
                              Prelude.<$> disableUseAsImportedSource])}
instance JSON.ToJSON DataSetUsageConfigurationProperty where
  toJSON DataSetUsageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisableUseAsDirectQuerySource"
                 Prelude.<$> disableUseAsDirectQuerySource,
               (JSON..=) "DisableUseAsImportedSource"
                 Prelude.<$> disableUseAsImportedSource]))
instance Property "DisableUseAsDirectQuerySource" DataSetUsageConfigurationProperty where
  type PropertyType "DisableUseAsDirectQuerySource" DataSetUsageConfigurationProperty = Value Prelude.Bool
  set newValue DataSetUsageConfigurationProperty {..}
    = DataSetUsageConfigurationProperty
        {disableUseAsDirectQuerySource = Prelude.pure newValue, ..}
instance Property "DisableUseAsImportedSource" DataSetUsageConfigurationProperty where
  type PropertyType "DisableUseAsImportedSource" DataSetUsageConfigurationProperty = Value Prelude.Bool
  set newValue DataSetUsageConfigurationProperty {..}
    = DataSetUsageConfigurationProperty
        {disableUseAsImportedSource = Prelude.pure newValue, ..}