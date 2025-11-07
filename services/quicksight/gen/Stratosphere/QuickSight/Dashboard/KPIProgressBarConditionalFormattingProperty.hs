module Stratosphere.QuickSight.Dashboard.KPIProgressBarConditionalFormattingProperty (
        module Exports, KPIProgressBarConditionalFormattingProperty(..),
        mkKPIProgressBarConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingColorProperty as Exports
import Stratosphere.ResourceProperties
data KPIProgressBarConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiprogressbarconditionalformatting.html>
    KPIProgressBarConditionalFormattingProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiprogressbarconditionalformatting.html#cfn-quicksight-dashboard-kpiprogressbarconditionalformatting-foregroundcolor>
                                                 foregroundColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIProgressBarConditionalFormattingProperty ::
  KPIProgressBarConditionalFormattingProperty
mkKPIProgressBarConditionalFormattingProperty
  = KPIProgressBarConditionalFormattingProperty
      {haddock_workaround_ = (), foregroundColor = Prelude.Nothing}
instance ToResourceProperties KPIProgressBarConditionalFormattingProperty where
  toResourceProperties
    KPIProgressBarConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIProgressBarConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ForegroundColor" Prelude.<$> foregroundColor])}
instance JSON.ToJSON KPIProgressBarConditionalFormattingProperty where
  toJSON KPIProgressBarConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ForegroundColor" Prelude.<$> foregroundColor]))
instance Property "ForegroundColor" KPIProgressBarConditionalFormattingProperty where
  type PropertyType "ForegroundColor" KPIProgressBarConditionalFormattingProperty = ConditionalFormattingColorProperty
  set newValue KPIProgressBarConditionalFormattingProperty {..}
    = KPIProgressBarConditionalFormattingProperty
        {foregroundColor = Prelude.pure newValue, ..}