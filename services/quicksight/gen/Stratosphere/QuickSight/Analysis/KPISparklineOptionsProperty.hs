module Stratosphere.QuickSight.Analysis.KPISparklineOptionsProperty (
        KPISparklineOptionsProperty(..), mkKPISparklineOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPISparklineOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpisparklineoptions.html>
    KPISparklineOptionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpisparklineoptions.html#cfn-quicksight-analysis-kpisparklineoptions-color>
                                 color :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpisparklineoptions.html#cfn-quicksight-analysis-kpisparklineoptions-tooltipvisibility>
                                 tooltipVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpisparklineoptions.html#cfn-quicksight-analysis-kpisparklineoptions-type>
                                 type' :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpisparklineoptions.html#cfn-quicksight-analysis-kpisparklineoptions-visibility>
                                 visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPISparklineOptionsProperty ::
  Value Prelude.Text -> KPISparklineOptionsProperty
mkKPISparklineOptionsProperty type'
  = KPISparklineOptionsProperty
      {haddock_workaround_ = (), type' = type', color = Prelude.Nothing,
       tooltipVisibility = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties KPISparklineOptionsProperty where
  toResourceProperties KPISparklineOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPISparklineOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Color" Prelude.<$> color,
                               (JSON..=) "TooltipVisibility" Prelude.<$> tooltipVisibility,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON KPISparklineOptionsProperty where
  toJSON KPISparklineOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Color" Prelude.<$> color,
                  (JSON..=) "TooltipVisibility" Prelude.<$> tooltipVisibility,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "Color" KPISparklineOptionsProperty where
  type PropertyType "Color" KPISparklineOptionsProperty = Value Prelude.Text
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty {color = Prelude.pure newValue, ..}
instance Property "TooltipVisibility" KPISparklineOptionsProperty where
  type PropertyType "TooltipVisibility" KPISparklineOptionsProperty = Value Prelude.Text
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty
        {tooltipVisibility = Prelude.pure newValue, ..}
instance Property "Type" KPISparklineOptionsProperty where
  type PropertyType "Type" KPISparklineOptionsProperty = Value Prelude.Text
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty {type' = newValue, ..}
instance Property "Visibility" KPISparklineOptionsProperty where
  type PropertyType "Visibility" KPISparklineOptionsProperty = Value Prelude.Text
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty
        {visibility = Prelude.pure newValue, ..}