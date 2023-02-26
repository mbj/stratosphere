module Stratosphere.ApplicationInsights.Application.WindowsEventProperty (
        WindowsEventProperty(..), mkWindowsEventProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WindowsEventProperty
  = WindowsEventProperty {eventLevels :: (ValueList Prelude.Text),
                          eventName :: (Value Prelude.Text),
                          logGroupName :: (Value Prelude.Text),
                          patternSet :: (Prelude.Maybe (Value Prelude.Text))}
mkWindowsEventProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> WindowsEventProperty
mkWindowsEventProperty eventLevels eventName logGroupName
  = WindowsEventProperty
      {eventLevels = eventLevels, eventName = eventName,
       logGroupName = logGroupName, patternSet = Prelude.Nothing}
instance ToResourceProperties WindowsEventProperty where
  toResourceProperties WindowsEventProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.WindowsEvent",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventLevels" JSON..= eventLevels, "EventName" JSON..= eventName,
                            "LogGroupName" JSON..= logGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "PatternSet" Prelude.<$> patternSet]))}
instance JSON.ToJSON WindowsEventProperty where
  toJSON WindowsEventProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventLevels" JSON..= eventLevels, "EventName" JSON..= eventName,
               "LogGroupName" JSON..= logGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "PatternSet" Prelude.<$> patternSet])))
instance Property "EventLevels" WindowsEventProperty where
  type PropertyType "EventLevels" WindowsEventProperty = ValueList Prelude.Text
  set newValue WindowsEventProperty {..}
    = WindowsEventProperty {eventLevels = newValue, ..}
instance Property "EventName" WindowsEventProperty where
  type PropertyType "EventName" WindowsEventProperty = Value Prelude.Text
  set newValue WindowsEventProperty {..}
    = WindowsEventProperty {eventName = newValue, ..}
instance Property "LogGroupName" WindowsEventProperty where
  type PropertyType "LogGroupName" WindowsEventProperty = Value Prelude.Text
  set newValue WindowsEventProperty {..}
    = WindowsEventProperty {logGroupName = newValue, ..}
instance Property "PatternSet" WindowsEventProperty where
  type PropertyType "PatternSet" WindowsEventProperty = Value Prelude.Text
  set newValue WindowsEventProperty {..}
    = WindowsEventProperty {patternSet = Prelude.pure newValue, ..}