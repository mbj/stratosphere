module Stratosphere.SES.MailManagerTrafficPolicy.IngressAnalysisProperty (
        IngressAnalysisProperty(..), mkIngressAnalysisProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressAnalysisProperty
  = IngressAnalysisProperty {analyzer :: (Value Prelude.Text),
                             resultField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressAnalysisProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IngressAnalysisProperty
mkIngressAnalysisProperty analyzer resultField
  = IngressAnalysisProperty
      {analyzer = analyzer, resultField = resultField}
instance ToResourceProperties IngressAnalysisProperty where
  toResourceProperties IngressAnalysisProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressAnalysis",
         supportsTags = Prelude.False,
         properties = ["Analyzer" JSON..= analyzer,
                       "ResultField" JSON..= resultField]}
instance JSON.ToJSON IngressAnalysisProperty where
  toJSON IngressAnalysisProperty {..}
    = JSON.object
        ["Analyzer" JSON..= analyzer, "ResultField" JSON..= resultField]
instance Property "Analyzer" IngressAnalysisProperty where
  type PropertyType "Analyzer" IngressAnalysisProperty = Value Prelude.Text
  set newValue IngressAnalysisProperty {..}
    = IngressAnalysisProperty {analyzer = newValue, ..}
instance Property "ResultField" IngressAnalysisProperty where
  type PropertyType "ResultField" IngressAnalysisProperty = Value Prelude.Text
  set newValue IngressAnalysisProperty {..}
    = IngressAnalysisProperty {resultField = newValue, ..}