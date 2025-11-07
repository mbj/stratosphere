module Stratosphere.QuickSight.Template.GradientStopProperty (
        GradientStopProperty(..), mkGradientStopProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GradientStopProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gradientstop.html>
    GradientStopProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gradientstop.html#cfn-quicksight-template-gradientstop-color>
                          color :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gradientstop.html#cfn-quicksight-template-gradientstop-datavalue>
                          dataValue :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gradientstop.html#cfn-quicksight-template-gradientstop-gradientoffset>
                          gradientOffset :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGradientStopProperty ::
  Value Prelude.Double -> GradientStopProperty
mkGradientStopProperty gradientOffset
  = GradientStopProperty
      {haddock_workaround_ = (), gradientOffset = gradientOffset,
       color = Prelude.Nothing, dataValue = Prelude.Nothing}
instance ToResourceProperties GradientStopProperty where
  toResourceProperties GradientStopProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GradientStop",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GradientOffset" JSON..= gradientOffset]
                           (Prelude.catMaybes
                              [(JSON..=) "Color" Prelude.<$> color,
                               (JSON..=) "DataValue" Prelude.<$> dataValue]))}
instance JSON.ToJSON GradientStopProperty where
  toJSON GradientStopProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GradientOffset" JSON..= gradientOffset]
              (Prelude.catMaybes
                 [(JSON..=) "Color" Prelude.<$> color,
                  (JSON..=) "DataValue" Prelude.<$> dataValue])))
instance Property "Color" GradientStopProperty where
  type PropertyType "Color" GradientStopProperty = Value Prelude.Text
  set newValue GradientStopProperty {..}
    = GradientStopProperty {color = Prelude.pure newValue, ..}
instance Property "DataValue" GradientStopProperty where
  type PropertyType "DataValue" GradientStopProperty = Value Prelude.Double
  set newValue GradientStopProperty {..}
    = GradientStopProperty {dataValue = Prelude.pure newValue, ..}
instance Property "GradientOffset" GradientStopProperty where
  type PropertyType "GradientOffset" GradientStopProperty = Value Prelude.Double
  set newValue GradientStopProperty {..}
    = GradientStopProperty {gradientOffset = newValue, ..}