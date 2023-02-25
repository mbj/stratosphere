module Stratosphere.Lex.BotVersion.BotVersionLocaleDetailsProperty (
        BotVersionLocaleDetailsProperty(..),
        mkBotVersionLocaleDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotVersionLocaleDetailsProperty
  = BotVersionLocaleDetailsProperty {sourceBotVersion :: (Value Prelude.Text)}
mkBotVersionLocaleDetailsProperty ::
  Value Prelude.Text -> BotVersionLocaleDetailsProperty
mkBotVersionLocaleDetailsProperty sourceBotVersion
  = BotVersionLocaleDetailsProperty
      {sourceBotVersion = sourceBotVersion}
instance ToResourceProperties BotVersionLocaleDetailsProperty where
  toResourceProperties BotVersionLocaleDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotVersion.BotVersionLocaleDetails",
         properties = ["SourceBotVersion" JSON..= sourceBotVersion]}
instance JSON.ToJSON BotVersionLocaleDetailsProperty where
  toJSON BotVersionLocaleDetailsProperty {..}
    = JSON.object ["SourceBotVersion" JSON..= sourceBotVersion]
instance Property "SourceBotVersion" BotVersionLocaleDetailsProperty where
  type PropertyType "SourceBotVersion" BotVersionLocaleDetailsProperty = Value Prelude.Text
  set newValue BotVersionLocaleDetailsProperty {}
    = BotVersionLocaleDetailsProperty {sourceBotVersion = newValue, ..}