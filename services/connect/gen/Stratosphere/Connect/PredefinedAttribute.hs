module Stratosphere.Connect.PredefinedAttribute (
        module Exports, PredefinedAttribute(..), mkPredefinedAttribute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.PredefinedAttribute.ValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedAttribute
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html>
    PredefinedAttribute {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-instancearn>
                         instanceArn :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-values>
                         values :: ValuesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredefinedAttribute ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValuesProperty -> PredefinedAttribute
mkPredefinedAttribute instanceArn name values
  = PredefinedAttribute
      {haddock_workaround_ = (), instanceArn = instanceArn, name = name,
       values = values}
instance ToResourceProperties PredefinedAttribute where
  toResourceProperties PredefinedAttribute {..}
    = ResourceProperties
        {awsType = "AWS::Connect::PredefinedAttribute",
         supportsTags = Prelude.False,
         properties = ["InstanceArn" JSON..= instanceArn,
                       "Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON PredefinedAttribute where
  toJSON PredefinedAttribute {..}
    = JSON.object
        ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name,
         "Values" JSON..= values]
instance Property "InstanceArn" PredefinedAttribute where
  type PropertyType "InstanceArn" PredefinedAttribute = Value Prelude.Text
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {instanceArn = newValue, ..}
instance Property "Name" PredefinedAttribute where
  type PropertyType "Name" PredefinedAttribute = Value Prelude.Text
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {name = newValue, ..}
instance Property "Values" PredefinedAttribute where
  type PropertyType "Values" PredefinedAttribute = ValuesProperty
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {values = newValue, ..}