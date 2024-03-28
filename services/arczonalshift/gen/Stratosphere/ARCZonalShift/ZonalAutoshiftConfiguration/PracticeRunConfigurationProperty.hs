module Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration.PracticeRunConfigurationProperty (
        module Exports, PracticeRunConfigurationProperty(..),
        mkPracticeRunConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration.ControlConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PracticeRunConfigurationProperty
  = PracticeRunConfigurationProperty {blockedDates :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      blockedWindows :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      blockingAlarms :: (Prelude.Maybe [ControlConditionProperty]),
                                      outcomeAlarms :: [ControlConditionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPracticeRunConfigurationProperty ::
  [ControlConditionProperty] -> PracticeRunConfigurationProperty
mkPracticeRunConfigurationProperty outcomeAlarms
  = PracticeRunConfigurationProperty
      {outcomeAlarms = outcomeAlarms, blockedDates = Prelude.Nothing,
       blockedWindows = Prelude.Nothing, blockingAlarms = Prelude.Nothing}
instance ToResourceProperties PracticeRunConfigurationProperty where
  toResourceProperties PracticeRunConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCZonalShift::ZonalAutoshiftConfiguration.PracticeRunConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutcomeAlarms" JSON..= outcomeAlarms]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockedDates" Prelude.<$> blockedDates,
                               (JSON..=) "BlockedWindows" Prelude.<$> blockedWindows,
                               (JSON..=) "BlockingAlarms" Prelude.<$> blockingAlarms]))}
instance JSON.ToJSON PracticeRunConfigurationProperty where
  toJSON PracticeRunConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutcomeAlarms" JSON..= outcomeAlarms]
              (Prelude.catMaybes
                 [(JSON..=) "BlockedDates" Prelude.<$> blockedDates,
                  (JSON..=) "BlockedWindows" Prelude.<$> blockedWindows,
                  (JSON..=) "BlockingAlarms" Prelude.<$> blockingAlarms])))
instance Property "BlockedDates" PracticeRunConfigurationProperty where
  type PropertyType "BlockedDates" PracticeRunConfigurationProperty = ValueList Prelude.Text
  set newValue PracticeRunConfigurationProperty {..}
    = PracticeRunConfigurationProperty
        {blockedDates = Prelude.pure newValue, ..}
instance Property "BlockedWindows" PracticeRunConfigurationProperty where
  type PropertyType "BlockedWindows" PracticeRunConfigurationProperty = ValueList Prelude.Text
  set newValue PracticeRunConfigurationProperty {..}
    = PracticeRunConfigurationProperty
        {blockedWindows = Prelude.pure newValue, ..}
instance Property "BlockingAlarms" PracticeRunConfigurationProperty where
  type PropertyType "BlockingAlarms" PracticeRunConfigurationProperty = [ControlConditionProperty]
  set newValue PracticeRunConfigurationProperty {..}
    = PracticeRunConfigurationProperty
        {blockingAlarms = Prelude.pure newValue, ..}
instance Property "OutcomeAlarms" PracticeRunConfigurationProperty where
  type PropertyType "OutcomeAlarms" PracticeRunConfigurationProperty = [ControlConditionProperty]
  set newValue PracticeRunConfigurationProperty {..}
    = PracticeRunConfigurationProperty {outcomeAlarms = newValue, ..}