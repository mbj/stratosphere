module Stratosphere.Evidently.Experiment.RunningStatusObjectProperty (
        RunningStatusObjectProperty(..), mkRunningStatusObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunningStatusObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-runningstatusobject.html>
    RunningStatusObjectProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-runningstatusobject.html#cfn-evidently-experiment-runningstatusobject-analysiscompletetime>
                                 analysisCompleteTime :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-runningstatusobject.html#cfn-evidently-experiment-runningstatusobject-desiredstate>
                                 desiredState :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-runningstatusobject.html#cfn-evidently-experiment-runningstatusobject-reason>
                                 reason :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-runningstatusobject.html#cfn-evidently-experiment-runningstatusobject-status>
                                 status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunningStatusObjectProperty ::
  Value Prelude.Text -> RunningStatusObjectProperty
mkRunningStatusObjectProperty status
  = RunningStatusObjectProperty
      {haddock_workaround_ = (), status = status,
       analysisCompleteTime = Prelude.Nothing,
       desiredState = Prelude.Nothing, reason = Prelude.Nothing}
instance ToResourceProperties RunningStatusObjectProperty where
  toResourceProperties RunningStatusObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment.RunningStatusObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalysisCompleteTime" Prelude.<$> analysisCompleteTime,
                               (JSON..=) "DesiredState" Prelude.<$> desiredState,
                               (JSON..=) "Reason" Prelude.<$> reason]))}
instance JSON.ToJSON RunningStatusObjectProperty where
  toJSON RunningStatusObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "AnalysisCompleteTime" Prelude.<$> analysisCompleteTime,
                  (JSON..=) "DesiredState" Prelude.<$> desiredState,
                  (JSON..=) "Reason" Prelude.<$> reason])))
instance Property "AnalysisCompleteTime" RunningStatusObjectProperty where
  type PropertyType "AnalysisCompleteTime" RunningStatusObjectProperty = Value Prelude.Text
  set newValue RunningStatusObjectProperty {..}
    = RunningStatusObjectProperty
        {analysisCompleteTime = Prelude.pure newValue, ..}
instance Property "DesiredState" RunningStatusObjectProperty where
  type PropertyType "DesiredState" RunningStatusObjectProperty = Value Prelude.Text
  set newValue RunningStatusObjectProperty {..}
    = RunningStatusObjectProperty
        {desiredState = Prelude.pure newValue, ..}
instance Property "Reason" RunningStatusObjectProperty where
  type PropertyType "Reason" RunningStatusObjectProperty = Value Prelude.Text
  set newValue RunningStatusObjectProperty {..}
    = RunningStatusObjectProperty {reason = Prelude.pure newValue, ..}
instance Property "Status" RunningStatusObjectProperty where
  type PropertyType "Status" RunningStatusObjectProperty = Value Prelude.Text
  set newValue RunningStatusObjectProperty {..}
    = RunningStatusObjectProperty {status = newValue, ..}