module Stratosphere.Evidently.Experiment.RunningStatusObjectProperty (
        RunningStatusObjectProperty(..), mkRunningStatusObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunningStatusObjectProperty
  = RunningStatusObjectProperty {analysisCompleteTime :: (Prelude.Maybe (Value Prelude.Text)),
                                 desiredState :: (Prelude.Maybe (Value Prelude.Text)),
                                 reason :: (Prelude.Maybe (Value Prelude.Text)),
                                 status :: (Value Prelude.Text)}
mkRunningStatusObjectProperty ::
  Value Prelude.Text -> RunningStatusObjectProperty
mkRunningStatusObjectProperty status
  = RunningStatusObjectProperty
      {status = status, analysisCompleteTime = Prelude.Nothing,
       desiredState = Prelude.Nothing, reason = Prelude.Nothing}
instance ToResourceProperties RunningStatusObjectProperty where
  toResourceProperties RunningStatusObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment.RunningStatusObject",
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