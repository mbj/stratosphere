module Stratosphere.MediaConvert.Preset (
        Preset(..), mkPreset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Preset
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html>
    Preset {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-category>
            category :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-settingsjson>
            settingsJson :: JSON.Object,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-tags>
            tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreset :: JSON.Object -> Preset
mkPreset settingsJson
  = Preset
      {haddock_workaround_ = (), settingsJson = settingsJson,
       category = Prelude.Nothing, description = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Preset where
  toResourceProperties Preset {..}
    = ResourceProperties
        {awsType = "AWS::MediaConvert::Preset",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SettingsJson" JSON..= settingsJson]
                           (Prelude.catMaybes
                              [(JSON..=) "Category" Prelude.<$> category,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Preset where
  toJSON Preset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SettingsJson" JSON..= settingsJson]
              (Prelude.catMaybes
                 [(JSON..=) "Category" Prelude.<$> category,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Category" Preset where
  type PropertyType "Category" Preset = Value Prelude.Text
  set newValue Preset {..}
    = Preset {category = Prelude.pure newValue, ..}
instance Property "Description" Preset where
  type PropertyType "Description" Preset = Value Prelude.Text
  set newValue Preset {..}
    = Preset {description = Prelude.pure newValue, ..}
instance Property "Name" Preset where
  type PropertyType "Name" Preset = Value Prelude.Text
  set newValue Preset {..}
    = Preset {name = Prelude.pure newValue, ..}
instance Property "SettingsJson" Preset where
  type PropertyType "SettingsJson" Preset = JSON.Object
  set newValue Preset {..} = Preset {settingsJson = newValue, ..}
instance Property "Tags" Preset where
  type PropertyType "Tags" Preset = JSON.Object
  set newValue Preset {..}
    = Preset {tags = Prelude.pure newValue, ..}