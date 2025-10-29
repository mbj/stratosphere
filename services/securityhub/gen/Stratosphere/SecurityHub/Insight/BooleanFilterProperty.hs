module Stratosphere.SecurityHub.Insight.BooleanFilterProperty (
        BooleanFilterProperty(..), mkBooleanFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BooleanFilterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-booleanfilter.html>
    BooleanFilterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-booleanfilter.html#cfn-securityhub-insight-booleanfilter-value>
                           value :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBooleanFilterProperty ::
  Value Prelude.Bool -> BooleanFilterProperty
mkBooleanFilterProperty value
  = BooleanFilterProperty {value = value}
instance ToResourceProperties BooleanFilterProperty where
  toResourceProperties BooleanFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Insight.BooleanFilter",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON BooleanFilterProperty where
  toJSON BooleanFilterProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" BooleanFilterProperty where
  type PropertyType "Value" BooleanFilterProperty = Value Prelude.Bool
  set newValue BooleanFilterProperty {}
    = BooleanFilterProperty {value = newValue, ..}