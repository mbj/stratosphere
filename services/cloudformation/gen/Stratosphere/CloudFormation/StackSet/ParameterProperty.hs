module Stratosphere.CloudFormation.StackSet.ParameterProperty (
        ParameterProperty(..), mkParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-parameter.html>
    ParameterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-parameter.html#cfn-cloudformation-stackset-parameter-parameterkey>
                       parameterKey :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-parameter.html#cfn-cloudformation-stackset-parameter-parametervalue>
                       parameterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterProperty
mkParameterProperty parameterKey parameterValue
  = ParameterProperty
      {haddock_workaround_ = (), parameterKey = parameterKey,
       parameterValue = parameterValue}
instance ToResourceProperties ParameterProperty where
  toResourceProperties ParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.Parameter",
         supportsTags = Prelude.False,
         properties = ["ParameterKey" JSON..= parameterKey,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ParameterProperty where
  toJSON ParameterProperty {..}
    = JSON.object
        ["ParameterKey" JSON..= parameterKey,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterKey" ParameterProperty where
  type PropertyType "ParameterKey" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {parameterKey = newValue, ..}
instance Property "ParameterValue" ParameterProperty where
  type PropertyType "ParameterValue" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {parameterValue = newValue, ..}