module Stratosphere.QuickSight.Dashboard.AssetOptionsProperty (
        AssetOptionsProperty(..), mkAssetOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-assetoptions.html>
    AssetOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-assetoptions.html#cfn-quicksight-dashboard-assetoptions-excludeddatasetarns>
                          excludedDataSetArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-assetoptions.html#cfn-quicksight-dashboard-assetoptions-qbusinessinsightsstatus>
                          qBusinessInsightsStatus :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-assetoptions.html#cfn-quicksight-dashboard-assetoptions-timezone>
                          timezone :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-assetoptions.html#cfn-quicksight-dashboard-assetoptions-weekstart>
                          weekStart :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetOptionsProperty :: AssetOptionsProperty
mkAssetOptionsProperty
  = AssetOptionsProperty
      {haddock_workaround_ = (), excludedDataSetArns = Prelude.Nothing,
       qBusinessInsightsStatus = Prelude.Nothing,
       timezone = Prelude.Nothing, weekStart = Prelude.Nothing}
instance ToResourceProperties AssetOptionsProperty where
  toResourceProperties AssetOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AssetOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludedDataSetArns" Prelude.<$> excludedDataSetArns,
                            (JSON..=) "QBusinessInsightsStatus"
                              Prelude.<$> qBusinessInsightsStatus,
                            (JSON..=) "Timezone" Prelude.<$> timezone,
                            (JSON..=) "WeekStart" Prelude.<$> weekStart])}
instance JSON.ToJSON AssetOptionsProperty where
  toJSON AssetOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludedDataSetArns" Prelude.<$> excludedDataSetArns,
               (JSON..=) "QBusinessInsightsStatus"
                 Prelude.<$> qBusinessInsightsStatus,
               (JSON..=) "Timezone" Prelude.<$> timezone,
               (JSON..=) "WeekStart" Prelude.<$> weekStart]))
instance Property "ExcludedDataSetArns" AssetOptionsProperty where
  type PropertyType "ExcludedDataSetArns" AssetOptionsProperty = ValueList Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty
        {excludedDataSetArns = Prelude.pure newValue, ..}
instance Property "QBusinessInsightsStatus" AssetOptionsProperty where
  type PropertyType "QBusinessInsightsStatus" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty
        {qBusinessInsightsStatus = Prelude.pure newValue, ..}
instance Property "Timezone" AssetOptionsProperty where
  type PropertyType "Timezone" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty {timezone = Prelude.pure newValue, ..}
instance Property "WeekStart" AssetOptionsProperty where
  type PropertyType "WeekStart" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty {weekStart = Prelude.pure newValue, ..}