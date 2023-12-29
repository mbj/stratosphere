module Stratosphere.Lex.BotAlias.SentimentAnalysisSettingsProperty (
        SentimentAnalysisSettingsProperty(..),
        mkSentimentAnalysisSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SentimentAnalysisSettingsProperty
  = SentimentAnalysisSettingsProperty {detectSentiment :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSentimentAnalysisSettingsProperty ::
  Value Prelude.Bool -> SentimentAnalysisSettingsProperty
mkSentimentAnalysisSettingsProperty detectSentiment
  = SentimentAnalysisSettingsProperty
      {detectSentiment = detectSentiment}
instance ToResourceProperties SentimentAnalysisSettingsProperty where
  toResourceProperties SentimentAnalysisSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.SentimentAnalysisSettings",
         supportsTags = Prelude.False,
         properties = ["DetectSentiment" JSON..= detectSentiment]}
instance JSON.ToJSON SentimentAnalysisSettingsProperty where
  toJSON SentimentAnalysisSettingsProperty {..}
    = JSON.object ["DetectSentiment" JSON..= detectSentiment]
instance Property "DetectSentiment" SentimentAnalysisSettingsProperty where
  type PropertyType "DetectSentiment" SentimentAnalysisSettingsProperty = Value Prelude.Bool
  set newValue SentimentAnalysisSettingsProperty {}
    = SentimentAnalysisSettingsProperty
        {detectSentiment = newValue, ..}