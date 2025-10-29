module Stratosphere.AppRunner.Service.SourceCodeVersionProperty (
        SourceCodeVersionProperty(..), mkSourceCodeVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceCodeVersionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourcecodeversion.html>
    SourceCodeVersionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourcecodeversion.html#cfn-apprunner-service-sourcecodeversion-type>
                               type' :: (Value Prelude.Text),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourcecodeversion.html#cfn-apprunner-service-sourcecodeversion-value>
                               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceCodeVersionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SourceCodeVersionProperty
mkSourceCodeVersionProperty type' value
  = SourceCodeVersionProperty {type' = type', value = value}
instance ToResourceProperties SourceCodeVersionProperty where
  toResourceProperties SourceCodeVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.SourceCodeVersion",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON SourceCodeVersionProperty where
  toJSON SourceCodeVersionProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" SourceCodeVersionProperty where
  type PropertyType "Type" SourceCodeVersionProperty = Value Prelude.Text
  set newValue SourceCodeVersionProperty {..}
    = SourceCodeVersionProperty {type' = newValue, ..}
instance Property "Value" SourceCodeVersionProperty where
  type PropertyType "Value" SourceCodeVersionProperty = Value Prelude.Text
  set newValue SourceCodeVersionProperty {..}
    = SourceCodeVersionProperty {value = newValue, ..}