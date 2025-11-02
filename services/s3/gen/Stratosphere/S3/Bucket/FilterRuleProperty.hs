module Stratosphere.S3.Bucket.FilterRuleProperty (
        FilterRuleProperty(..), mkFilterRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-filterrule.html>
    FilterRuleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-filterrule.html#cfn-s3-bucket-filterrule-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-filterrule.html#cfn-s3-bucket-filterrule-value>
                        value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterRuleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FilterRuleProperty
mkFilterRuleProperty name value
  = FilterRuleProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties FilterRuleProperty where
  toResourceProperties FilterRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.FilterRule",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON FilterRuleProperty where
  toJSON FilterRuleProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" FilterRuleProperty where
  type PropertyType "Name" FilterRuleProperty = Value Prelude.Text
  set newValue FilterRuleProperty {..}
    = FilterRuleProperty {name = newValue, ..}
instance Property "Value" FilterRuleProperty where
  type PropertyType "Value" FilterRuleProperty = Value Prelude.Text
  set newValue FilterRuleProperty {..}
    = FilterRuleProperty {value = newValue, ..}