module Stratosphere.Lex.Bot.TextLogSettingProperty (
        module Exports, TextLogSettingProperty(..),
        mkTextLogSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.TextLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextLogSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textlogsetting.html>
    TextLogSettingProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textlogsetting.html#cfn-lex-bot-textlogsetting-destination>
                            destination :: TextLogDestinationProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textlogsetting.html#cfn-lex-bot-textlogsetting-enabled>
                            enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextLogSettingProperty ::
  TextLogDestinationProperty
  -> Value Prelude.Bool -> TextLogSettingProperty
mkTextLogSettingProperty destination enabled
  = TextLogSettingProperty
      {haddock_workaround_ = (), destination = destination,
       enabled = enabled}
instance ToResourceProperties TextLogSettingProperty where
  toResourceProperties TextLogSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.TextLogSetting",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON TextLogSettingProperty where
  toJSON TextLogSettingProperty {..}
    = JSON.object
        ["Destination" JSON..= destination, "Enabled" JSON..= enabled]
instance Property "Destination" TextLogSettingProperty where
  type PropertyType "Destination" TextLogSettingProperty = TextLogDestinationProperty
  set newValue TextLogSettingProperty {..}
    = TextLogSettingProperty {destination = newValue, ..}
instance Property "Enabled" TextLogSettingProperty where
  type PropertyType "Enabled" TextLogSettingProperty = Value Prelude.Bool
  set newValue TextLogSettingProperty {..}
    = TextLogSettingProperty {enabled = newValue, ..}