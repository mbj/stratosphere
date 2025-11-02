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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-config.html>
    Config {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-config.html#cfn-groundstation-config-configdata>
            configData :: ConfigDataProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-config.html#cfn-groundstation-config-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-config.html#cfn-groundstation-config-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfig :: ConfigDataProperty -> Value Prelude.Text -> Config
mkConfig configData name
  = Config
      {haddock_workaround_ = (), configData = configData, name = name,
       tags = Prelude.Nothing}
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