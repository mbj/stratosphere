module Stratosphere.GroundStation.Config (
        module Exports, Config(..), mkConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.ConfigDataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Config
  = Config {configData :: ConfigDataProperty,
            name :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag])}
mkConfig :: ConfigDataProperty -> Value Prelude.Text -> Config
mkConfig configData name
  = Config
      {configData = configData, name = name, tags = Prelude.Nothing}
instance ToResourceProperties Config where
  toResourceProperties Config {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigData" JSON..= configData, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Config where
  toJSON Config {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigData" JSON..= configData, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConfigData" Config where
  type PropertyType "ConfigData" Config = ConfigDataProperty
  set newValue Config {..} = Config {configData = newValue, ..}
instance Property "Name" Config where
  type PropertyType "Name" Config = Value Prelude.Text
  set newValue Config {..} = Config {name = newValue, ..}
instance Property "Tags" Config where
  type PropertyType "Tags" Config = [Tag]
  set newValue Config {..}
    = Config {tags = Prelude.pure newValue, ..}