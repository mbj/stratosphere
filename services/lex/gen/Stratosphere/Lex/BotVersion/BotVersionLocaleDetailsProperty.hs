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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botversion-botversionlocaledetails.html>
    BotVersionLocaleDetailsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botversion-botversionlocaledetails.html#cfn-lex-botversion-botversionlocaledetails-sourcebotversion>
                                     sourceBotVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBotVersionLocaleDetailsProperty ::
  Value Prelude.Text -> BotVersionLocaleDetailsProperty
mkBotVersionLocaleDetailsProperty sourceBotVersion
  = BotVersionLocaleDetailsProperty
      {haddock_workaround_ = (), sourceBotVersion = sourceBotVersion}
instance ToResourceProperties BotVersionLocaleDetailsProperty where
  toResourceProperties BotVersionLocaleDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotVersion.BotVersionLocaleDetails",
         supportsTags = Prelude.False,
         properties = ["SourceBotVersion" JSON..= sourceBotVersion]}
instance JSON.ToJSON BotVersionLocaleDetailsProperty where
  toJSON BotVersionLocaleDetailsProperty {..}
    = JSON.object ["SourceBotVersion" JSON..= sourceBotVersion]
instance Property "SourceBotVersion" BotVersionLocaleDetailsProperty where
  type PropertyType "SourceBotVersion" BotVersionLocaleDetailsProperty = Value Prelude.Text
  set newValue BotVersionLocaleDetailsProperty {..}
    = BotVersionLocaleDetailsProperty {sourceBotVersion = newValue, ..}