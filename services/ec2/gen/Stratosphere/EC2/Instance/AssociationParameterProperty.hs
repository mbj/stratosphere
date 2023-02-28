module Stratosphere.EC2.Instance.AssociationParameterProperty (
        AssociationParameterProperty(..), mkAssociationParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssociationParameterProperty
  = AssociationParameterProperty {key :: (Value Prelude.Text),
                                  value :: (ValueList Prelude.Text)}
mkAssociationParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> AssociationParameterProperty
mkAssociationParameterProperty key value
  = AssociationParameterProperty {key = key, value = value}
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