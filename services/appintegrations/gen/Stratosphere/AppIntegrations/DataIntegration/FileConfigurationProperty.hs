module Stratosphere.AppIntegrations.DataIntegration.FileConfigurationProperty (
        FileConfigurationProperty(..), mkFileConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileConfigurationProperty
  = FileConfigurationProperty {filters :: (Prelude.Maybe JSON.Object),
                               folders :: (ValueList Prelude.Text)}
mkFileConfigurationProperty ::
  ValueList Prelude.Text -> FileConfigurationProperty
mkFileConfigurationProperty folders
  = FileConfigurationProperty
      {folders = folders, filters = Prelude.Nothing}
instance ToResourceProperties FileConfigurationProperty where
  toResourceProperties FileConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::DataIntegration.FileConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Folders" JSON..= folders]
                           (Prelude.catMaybes [(JSON..=) "Filters" Prelude.<$> filters]))}
instance JSON.ToJSON FileConfigurationProperty where
  toJSON FileConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Folders" JSON..= folders]
              (Prelude.catMaybes [(JSON..=) "Filters" Prelude.<$> filters])))
instance Property "Filters" FileConfigurationProperty where
  type PropertyType "Filters" FileConfigurationProperty = JSON.Object
  set newValue FileConfigurationProperty {..}
    = FileConfigurationProperty {filters = Prelude.pure newValue, ..}
instance Property "Folders" FileConfigurationProperty where
  type PropertyType "Folders" FileConfigurationProperty = ValueList Prelude.Text
  set newValue FileConfigurationProperty {..}
    = FileConfigurationProperty {folders = newValue, ..}