module Stratosphere.Lex.Bot.AudioLogSettingProperty (
        module Exports, AudioLogSettingProperty(..),
        mkAudioLogSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.AudioLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioLogSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audiologsetting.html>
    AudioLogSettingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audiologsetting.html#cfn-lex-bot-audiologsetting-destination>
                             destination :: AudioLogDestinationProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audiologsetting.html#cfn-lex-bot-audiologsetting-enabled>
                             enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioLogSettingProperty ::
  AudioLogDestinationProperty
  -> Value Prelude.Bool -> AudioLogSettingProperty
mkAudioLogSettingProperty destination enabled
  = AudioLogSettingProperty
      {haddock_workaround_ = (), destination = destination,
       enabled = enabled}
instance ToResourceProperties AudioLogSettingProperty where
  toResourceProperties AudioLogSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.AudioLogSetting",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON AudioLogSettingProperty where
  toJSON AudioLogSettingProperty {..}
    = JSON.object
        ["Destination" JSON..= destination, "Enabled" JSON..= enabled]
instance Property "Destination" AudioLogSettingProperty where
  type PropertyType "Destination" AudioLogSettingProperty = AudioLogDestinationProperty
  set newValue AudioLogSettingProperty {..}
    = AudioLogSettingProperty {destination = newValue, ..}
instance Property "Enabled" AudioLogSettingProperty where
  type PropertyType "Enabled" AudioLogSettingProperty = Value Prelude.Bool
  set newValue AudioLogSettingProperty {..}
    = AudioLogSettingProperty {enabled = newValue, ..}