module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSourceProperty (
        AnalysisSourceProperty(..), mkAnalysisSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissource.html>
    AnalysisSourceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissource.html#cfn-cleanrooms-analysistemplate-analysissource-text>
                            text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSourceProperty ::
  Value Prelude.Text -> AnalysisSourceProperty
mkAnalysisSourceProperty text
  = AnalysisSourceProperty {haddock_workaround_ = (), text = text}
instance ToResourceProperties AnalysisSourceProperty where
  toResourceProperties AnalysisSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisSource",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON AnalysisSourceProperty where
  toJSON AnalysisSourceProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" AnalysisSourceProperty where
  type PropertyType "Text" AnalysisSourceProperty = Value Prelude.Text
  set newValue AnalysisSourceProperty {..}
    = AnalysisSourceProperty {text = newValue, ..}