module Stratosphere.QuickSight.Topic.RangeConstantProperty (
        RangeConstantProperty(..), mkRangeConstantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeConstantProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-rangeconstant.html>
    RangeConstantProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-rangeconstant.html#cfn-quicksight-topic-rangeconstant-maximum>
                           maximum :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-rangeconstant.html#cfn-quicksight-topic-rangeconstant-minimum>
                           minimum :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangeConstantProperty :: RangeConstantProperty
mkRangeConstantProperty
  = RangeConstantProperty
      {haddock_workaround_ = (), maximum = Prelude.Nothing,
       minimum = Prelude.Nothing}
instance ToResourceProperties RangeConstantProperty where
  toResourceProperties RangeConstantProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.RangeConstant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Maximum" Prelude.<$> maximum,
                            (JSON..=) "Minimum" Prelude.<$> minimum])}
instance JSON.ToJSON RangeConstantProperty where
  toJSON RangeConstantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Maximum" Prelude.<$> maximum,
               (JSON..=) "Minimum" Prelude.<$> minimum]))
instance Property "Maximum" RangeConstantProperty where
  type PropertyType "Maximum" RangeConstantProperty = Value Prelude.Text
  set newValue RangeConstantProperty {..}
    = RangeConstantProperty {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" RangeConstantProperty where
  type PropertyType "Minimum" RangeConstantProperty = Value Prelude.Text
  set newValue RangeConstantProperty {..}
    = RangeConstantProperty {minimum = Prelude.pure newValue, ..}