module Stratosphere.SecurityHub.AutomationRule.DateFilterProperty (
        module Exports, DateFilterProperty(..), mkDateFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.DateRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateFilterProperty
  = DateFilterProperty {dateRange :: (Prelude.Maybe DateRangeProperty),
                        end :: (Prelude.Maybe (Value Prelude.Text)),
                        start :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateFilterProperty :: DateFilterProperty
mkDateFilterProperty
  = DateFilterProperty
      {dateRange = Prelude.Nothing, end = Prelude.Nothing,
       start = Prelude.Nothing}
instance ToResourceProperties DateFilterProperty where
  toResourceProperties DateFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.DateFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateRange" Prelude.<$> dateRange,
                            (JSON..=) "End" Prelude.<$> end,
                            (JSON..=) "Start" Prelude.<$> start])}
instance JSON.ToJSON DateFilterProperty where
  toJSON DateFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateRange" Prelude.<$> dateRange,
               (JSON..=) "End" Prelude.<$> end,
               (JSON..=) "Start" Prelude.<$> start]))
instance Property "DateRange" DateFilterProperty where
  type PropertyType "DateRange" DateFilterProperty = DateRangeProperty
  set newValue DateFilterProperty {..}
    = DateFilterProperty {dateRange = Prelude.pure newValue, ..}
instance Property "End" DateFilterProperty where
  type PropertyType "End" DateFilterProperty = Value Prelude.Text
  set newValue DateFilterProperty {..}
    = DateFilterProperty {end = Prelude.pure newValue, ..}
instance Property "Start" DateFilterProperty where
  type PropertyType "Start" DateFilterProperty = Value Prelude.Text
  set newValue DateFilterProperty {..}
    = DateFilterProperty {start = Prelude.pure newValue, ..}