module Stratosphere.QuickSight.Template.KPISparklineOptionsProperty (
        KPISparklineOptionsProperty(..), mkKPISparklineOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPISparklineOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpisparklineoptions.html>
    KPISparklineOptionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpisparklineoptions.html#cfn-quicksight-template-kpisparklineoptions-color>
                                 color :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpisparklineoptions.html#cfn-quicksight-template-kpisparklineoptions-tooltipvisibility>
                                 tooltipVisibility :: (Prelude.Maybe JSON.Object),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpisparklineoptions.html#cfn-quicksight-template-kpisparklineoptions-type>
                                 type' :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpisparklineoptions.html#cfn-quicksight-template-kpisparklineoptions-visibility>
                                 visibility :: (Prelude.Maybe JSON.Object)}
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
        {awsType = "AWS::QuickSight::Template.KPISparklineOptions",
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
  type PropertyType "TooltipVisibility" KPISparklineOptionsProperty = JSON.Object
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty
        {tooltipVisibility = Prelude.pure newValue, ..}
instance Property "Type" KPISparklineOptionsProperty where
  type PropertyType "Type" KPISparklineOptionsProperty = Value Prelude.Text
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty {type' = newValue, ..}
instance Property "Visibility" KPISparklineOptionsProperty where
  type PropertyType "Visibility" KPISparklineOptionsProperty = JSON.Object
  set newValue KPISparklineOptionsProperty {..}
    = KPISparklineOptionsProperty
        {visibility = Prelude.pure newValue, ..}