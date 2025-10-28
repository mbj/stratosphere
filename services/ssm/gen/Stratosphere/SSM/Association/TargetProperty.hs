module Stratosphere.SSM.Association.TargetProperty (
        TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html>
    TargetProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-key>
                    key :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-values>
                    values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetProperty ::
  Value Prelude.Text -> ValueList Prelude.Text -> TargetProperty
mkTargetProperty key values
  = TargetProperty {key = key, values = values}
instance ToResourceProperties TargetProperty where
  toResourceProperties TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Association.Target",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Values" JSON..= values]}
instance JSON.ToJSON TargetProperty where
  toJSON TargetProperty {..}
    = JSON.object ["Key" JSON..= key, "Values" JSON..= values]
instance Property "Key" TargetProperty where
  type PropertyType "Key" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {key = newValue, ..}
instance Property "Values" TargetProperty where
  type PropertyType "Values" TargetProperty = ValueList Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {values = newValue, ..}