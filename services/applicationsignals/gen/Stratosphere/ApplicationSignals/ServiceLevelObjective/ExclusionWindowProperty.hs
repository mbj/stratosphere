module Stratosphere.ApplicationSignals.ServiceLevelObjective.ExclusionWindowProperty (
        module Exports, ExclusionWindowProperty(..),
        mkExclusionWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.RecurrenceRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.WindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExclusionWindowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html>
    ExclusionWindowProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-reason>
                             reason :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-recurrencerule>
                             recurrenceRule :: (Prelude.Maybe RecurrenceRuleProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-starttime>
                             startTime :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-window>
                             window :: WindowProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExclusionWindowProperty ::
  WindowProperty -> ExclusionWindowProperty
mkExclusionWindowProperty window
  = ExclusionWindowProperty
      {haddock_workaround_ = (), window = window,
       reason = Prelude.Nothing, recurrenceRule = Prelude.Nothing,
       startTime = Prelude.Nothing}
instance ToResourceProperties ExclusionWindowProperty where
  toResourceProperties ExclusionWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.ExclusionWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Window" JSON..= window]
                           (Prelude.catMaybes
                              [(JSON..=) "Reason" Prelude.<$> reason,
                               (JSON..=) "RecurrenceRule" Prelude.<$> recurrenceRule,
                               (JSON..=) "StartTime" Prelude.<$> startTime]))}
instance JSON.ToJSON ExclusionWindowProperty where
  toJSON ExclusionWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Window" JSON..= window]
              (Prelude.catMaybes
                 [(JSON..=) "Reason" Prelude.<$> reason,
                  (JSON..=) "RecurrenceRule" Prelude.<$> recurrenceRule,
                  (JSON..=) "StartTime" Prelude.<$> startTime])))
instance Property "Reason" ExclusionWindowProperty where
  type PropertyType "Reason" ExclusionWindowProperty = Value Prelude.Text
  set newValue ExclusionWindowProperty {..}
    = ExclusionWindowProperty {reason = Prelude.pure newValue, ..}
instance Property "RecurrenceRule" ExclusionWindowProperty where
  type PropertyType "RecurrenceRule" ExclusionWindowProperty = RecurrenceRuleProperty
  set newValue ExclusionWindowProperty {..}
    = ExclusionWindowProperty
        {recurrenceRule = Prelude.pure newValue, ..}
instance Property "StartTime" ExclusionWindowProperty where
  type PropertyType "StartTime" ExclusionWindowProperty = Value Prelude.Text
  set newValue ExclusionWindowProperty {..}
    = ExclusionWindowProperty {startTime = Prelude.pure newValue, ..}
instance Property "Window" ExclusionWindowProperty where
  type PropertyType "Window" ExclusionWindowProperty = WindowProperty
  set newValue ExclusionWindowProperty {..}
    = ExclusionWindowProperty {window = newValue, ..}