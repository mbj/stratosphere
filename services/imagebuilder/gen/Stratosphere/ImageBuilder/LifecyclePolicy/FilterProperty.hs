module Stratosphere.ImageBuilder.LifecyclePolicy.FilterProperty (
        FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-filter.html>
    FilterProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-filter.html#cfn-imagebuilder-lifecyclepolicy-filter-retainatleast>
                    retainAtLeast :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-filter.html#cfn-imagebuilder-lifecyclepolicy-filter-type>
                    type' :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-filter.html#cfn-imagebuilder-lifecyclepolicy-filter-unit>
                    unit :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-filter.html#cfn-imagebuilder-lifecyclepolicy-filter-value>
                    value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> FilterProperty
mkFilterProperty type' value
  = FilterProperty
      {haddock_workaround_ = (), type' = type', value = value,
       retainAtLeast = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type', "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "RetainAtLeast" Prelude.<$> retainAtLeast,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type', "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "RetainAtLeast" Prelude.<$> retainAtLeast,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "RetainAtLeast" FilterProperty where
  type PropertyType "RetainAtLeast" FilterProperty = Value Prelude.Integer
  set newValue FilterProperty {..}
    = FilterProperty {retainAtLeast = Prelude.pure newValue, ..}
instance Property "Type" FilterProperty where
  type PropertyType "Type" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {type' = newValue, ..}
instance Property "Unit" FilterProperty where
  type PropertyType "Unit" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {unit = Prelude.pure newValue, ..}
instance Property "Value" FilterProperty where
  type PropertyType "Value" FilterProperty = Value Prelude.Integer
  set newValue FilterProperty {..}
    = FilterProperty {value = newValue, ..}