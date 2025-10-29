module Stratosphere.WAFv2.LoggingConfiguration.SingleHeaderProperty (
        SingleHeaderProperty(..), mkSingleHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleHeaderProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-singleheader.html>
    SingleHeaderProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-singleheader.html#cfn-wafv2-loggingconfiguration-singleheader-name>
                          name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleHeaderProperty ::
  Value Prelude.Text -> SingleHeaderProperty
mkSingleHeaderProperty name = SingleHeaderProperty {name = name}
instance ToResourceProperties SingleHeaderProperty where
  toResourceProperties SingleHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.SingleHeader",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON SingleHeaderProperty where
  toJSON SingleHeaderProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" SingleHeaderProperty where
  type PropertyType "Name" SingleHeaderProperty = Value Prelude.Text
  set newValue SingleHeaderProperty {}
    = SingleHeaderProperty {name = newValue, ..}