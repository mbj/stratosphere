module Stratosphere.Connect.PredefinedAttribute (
        module Exports, PredefinedAttribute(..), mkPredefinedAttribute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.PredefinedAttribute.AttributeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.PredefinedAttribute.ValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedAttribute
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html>
    PredefinedAttribute {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-attributeconfiguration>
                         attributeConfiguration :: (Prelude.Maybe AttributeConfigurationProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-instancearn>
                         instanceArn :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-purposes>
                         purposes :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-predefinedattribute.html#cfn-connect-predefinedattribute-values>
                         values :: (Prelude.Maybe ValuesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredefinedAttribute ::
  Value Prelude.Text -> Value Prelude.Text -> PredefinedAttribute
mkPredefinedAttribute instanceArn name
  = PredefinedAttribute
      {haddock_workaround_ = (), instanceArn = instanceArn, name = name,
       attributeConfiguration = Prelude.Nothing,
       purposes = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties PredefinedAttribute where
  toResourceProperties PredefinedAttribute {..}
    = ResourceProperties
        {awsType = "AWS::Connect::PredefinedAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeConfiguration"
                                 Prelude.<$> attributeConfiguration,
                               (JSON..=) "Purposes" Prelude.<$> purposes,
                               (JSON..=) "Values" Prelude.<$> values]))}
instance JSON.ToJSON PredefinedAttribute where
  toJSON PredefinedAttribute {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeConfiguration"
                    Prelude.<$> attributeConfiguration,
                  (JSON..=) "Purposes" Prelude.<$> purposes,
                  (JSON..=) "Values" Prelude.<$> values])))
instance Property "AttributeConfiguration" PredefinedAttribute where
  type PropertyType "AttributeConfiguration" PredefinedAttribute = AttributeConfigurationProperty
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute
        {attributeConfiguration = Prelude.pure newValue, ..}
instance Property "InstanceArn" PredefinedAttribute where
  type PropertyType "InstanceArn" PredefinedAttribute = Value Prelude.Text
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {instanceArn = newValue, ..}
instance Property "Name" PredefinedAttribute where
  type PropertyType "Name" PredefinedAttribute = Value Prelude.Text
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {name = newValue, ..}
instance Property "Purposes" PredefinedAttribute where
  type PropertyType "Purposes" PredefinedAttribute = ValueList Prelude.Text
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {purposes = Prelude.pure newValue, ..}
instance Property "Values" PredefinedAttribute where
  type PropertyType "Values" PredefinedAttribute = ValuesProperty
  set newValue PredefinedAttribute {..}
    = PredefinedAttribute {values = Prelude.pure newValue, ..}