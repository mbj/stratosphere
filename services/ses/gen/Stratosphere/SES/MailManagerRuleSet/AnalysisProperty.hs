module Stratosphere.SES.MailManagerRuleSet.AnalysisProperty (
        AnalysisProperty(..), mkAnalysisProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-analysis.html>
    AnalysisProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-analysis.html#cfn-ses-mailmanagerruleset-analysis-analyzer>
                      analyzer :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-analysis.html#cfn-ses-mailmanagerruleset-analysis-resultfield>
                      resultField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AnalysisProperty
mkAnalysisProperty analyzer resultField
  = AnalysisProperty
      {haddock_workaround_ = (), analyzer = analyzer,
       resultField = resultField}
instance ToResourceProperties AnalysisProperty where
  toResourceProperties AnalysisProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.Analysis",
         supportsTags = Prelude.False,
         properties = ["Analyzer" JSON..= analyzer,
                       "ResultField" JSON..= resultField]}
instance JSON.ToJSON AnalysisProperty where
  toJSON AnalysisProperty {..}
    = JSON.object
        ["Analyzer" JSON..= analyzer, "ResultField" JSON..= resultField]
instance Property "Analyzer" AnalysisProperty where
  type PropertyType "Analyzer" AnalysisProperty = Value Prelude.Text
  set newValue AnalysisProperty {..}
    = AnalysisProperty {analyzer = newValue, ..}
instance Property "ResultField" AnalysisProperty where
  type PropertyType "ResultField" AnalysisProperty = Value Prelude.Text
  set newValue AnalysisProperty {..}
    = AnalysisProperty {resultField = newValue, ..}