module Stratosphere.SecurityHub.Insight.DateFilterProperty (
        module Exports, DateFilterProperty(..), mkDateFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.DateRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateFilterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-datefilter.html>
    DateFilterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-datefilter.html#cfn-securityhub-insight-datefilter-daterange>
                        dateRange :: (Prelude.Maybe DateRangeProperty),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-datefilter.html#cfn-securityhub-insight-datefilter-end>
                        end :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-datefilter.html#cfn-securityhub-insight-datefilter-start>
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
        {awsType = "AWS::SecurityHub::Insight.DateFilter",
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