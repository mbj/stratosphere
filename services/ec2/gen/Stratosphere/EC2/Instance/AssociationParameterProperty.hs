module Stratosphere.EC2.Instance.AssociationParameterProperty (
        AssociationParameterProperty(..), mkAssociationParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssociationParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-associationparameter.html>
    AssociationParameterProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-associationparameter.html#cfn-ec2-instance-associationparameter-key>
                                  key :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-associationparameter.html#cfn-ec2-instance-associationparameter-value>
                                  value :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociationParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> AssociationParameterProperty
mkAssociationParameterProperty key value
  = AssociationParameterProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties AssociationParameterProperty where
  toResourceProperties AssociationParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.AssociationParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON AssociationParameterProperty where
  toJSON AssociationParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" AssociationParameterProperty where
  type PropertyType "Key" AssociationParameterProperty = Value Prelude.Text
  set newValue AssociationParameterProperty {..}
    = AssociationParameterProperty {key = newValue, ..}
instance Property "Value" AssociationParameterProperty where
  type PropertyType "Value" AssociationParameterProperty = ValueList Prelude.Text
  set newValue AssociationParameterProperty {..}
    = AssociationParameterProperty {value = newValue, ..}