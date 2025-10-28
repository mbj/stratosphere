module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisComponentProperty (
        AnalysisComponentProperty(..), mkAnalysisComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisComponentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysiscomponent.html>
    AnalysisComponentProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysiscomponent.html#cfn-ec2-networkinsightsanalysis-analysiscomponent-arn>
                               arn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysiscomponent.html#cfn-ec2-networkinsightsanalysis-analysiscomponent-id>
                               id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisComponentProperty :: AnalysisComponentProperty
mkAnalysisComponentProperty
  = AnalysisComponentProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       id = Prelude.Nothing}
instance ToResourceProperties AnalysisComponentProperty where
  toResourceProperties AnalysisComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisComponent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn, (JSON..=) "Id" Prelude.<$> id])}
instance JSON.ToJSON AnalysisComponentProperty where
  toJSON AnalysisComponentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn, (JSON..=) "Id" Prelude.<$> id]))
instance Property "Arn" AnalysisComponentProperty where
  type PropertyType "Arn" AnalysisComponentProperty = Value Prelude.Text
  set newValue AnalysisComponentProperty {..}
    = AnalysisComponentProperty {arn = Prelude.pure newValue, ..}
instance Property "Id" AnalysisComponentProperty where
  type PropertyType "Id" AnalysisComponentProperty = Value Prelude.Text
  set newValue AnalysisComponentProperty {..}
    = AnalysisComponentProperty {id = Prelude.pure newValue, ..}