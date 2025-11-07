module Stratosphere.QuickSight.Dashboard.KPIConditionalFormattingOptionProperty (
        module Exports, KPIConditionalFormattingOptionProperty(..),
        mkKPIConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIActualValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIComparisonValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIPrimaryValueConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIProgressBarConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data KPIConditionalFormattingOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html>
    KPIConditionalFormattingOptionProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html#cfn-quicksight-dashboard-kpiconditionalformattingoption-actualvalue>
                                            actualValue :: (Prelude.Maybe KPIActualValueConditionalFormattingProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html#cfn-quicksight-dashboard-kpiconditionalformattingoption-comparisonvalue>
                                            comparisonValue :: (Prelude.Maybe KPIComparisonValueConditionalFormattingProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html#cfn-quicksight-dashboard-kpiconditionalformattingoption-primaryvalue>
                                            primaryValue :: (Prelude.Maybe KPIPrimaryValueConditionalFormattingProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html#cfn-quicksight-dashboard-kpiconditionalformattingoption-progressbar>
                                            progressBar :: (Prelude.Maybe KPIProgressBarConditionalFormattingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIConditionalFormattingOptionProperty ::
  KPIConditionalFormattingOptionProperty
mkKPIConditionalFormattingOptionProperty
  = KPIConditionalFormattingOptionProperty
      {haddock_workaround_ = (), actualValue = Prelude.Nothing,
       comparisonValue = Prelude.Nothing, primaryValue = Prelude.Nothing,
       progressBar = Prelude.Nothing}
instance ToResourceProperties KPIConditionalFormattingOptionProperty where
  toResourceProperties KPIConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIConditionalFormattingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActualValue" Prelude.<$> actualValue,
                            (JSON..=) "ComparisonValue" Prelude.<$> comparisonValue,
                            (JSON..=) "PrimaryValue" Prelude.<$> primaryValue,
                            (JSON..=) "ProgressBar" Prelude.<$> progressBar])}
instance JSON.ToJSON KPIConditionalFormattingOptionProperty where
  toJSON KPIConditionalFormattingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActualValue" Prelude.<$> actualValue,
               (JSON..=) "ComparisonValue" Prelude.<$> comparisonValue,
               (JSON..=) "PrimaryValue" Prelude.<$> primaryValue,
               (JSON..=) "ProgressBar" Prelude.<$> progressBar]))
instance Property "ActualValue" KPIConditionalFormattingOptionProperty where
  type PropertyType "ActualValue" KPIConditionalFormattingOptionProperty = KPIActualValueConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {actualValue = Prelude.pure newValue, ..}
instance Property "ComparisonValue" KPIConditionalFormattingOptionProperty where
  type PropertyType "ComparisonValue" KPIConditionalFormattingOptionProperty = KPIComparisonValueConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {comparisonValue = Prelude.pure newValue, ..}
instance Property "PrimaryValue" KPIConditionalFormattingOptionProperty where
  type PropertyType "PrimaryValue" KPIConditionalFormattingOptionProperty = KPIPrimaryValueConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {primaryValue = Prelude.pure newValue, ..}
instance Property "ProgressBar" KPIConditionalFormattingOptionProperty where
  type PropertyType "ProgressBar" KPIConditionalFormattingOptionProperty = KPIProgressBarConditionalFormattingProperty
  set newValue KPIConditionalFormattingOptionProperty {..}
    = KPIConditionalFormattingOptionProperty
        {progressBar = Prelude.pure newValue, ..}