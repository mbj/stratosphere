module Stratosphere.IoTTwinMaker.Entity.PropertyGroupProperty (
        PropertyGroupProperty(..), mkPropertyGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-propertygroup.html>
    PropertyGroupProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-propertygroup.html#cfn-iottwinmaker-entity-propertygroup-grouptype>
                           groupType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-propertygroup.html#cfn-iottwinmaker-entity-propertygroup-propertynames>
                           propertyNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyGroupProperty :: PropertyGroupProperty
mkPropertyGroupProperty
  = PropertyGroupProperty
      {haddock_workaround_ = (), groupType = Prelude.Nothing,
       propertyNames = Prelude.Nothing}
instance ToResourceProperties PropertyGroupProperty where
  toResourceProperties PropertyGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.PropertyGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupType" Prelude.<$> groupType,
                            (JSON..=) "PropertyNames" Prelude.<$> propertyNames])}
instance JSON.ToJSON PropertyGroupProperty where
  toJSON PropertyGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupType" Prelude.<$> groupType,
               (JSON..=) "PropertyNames" Prelude.<$> propertyNames]))
instance Property "GroupType" PropertyGroupProperty where
  type PropertyType "GroupType" PropertyGroupProperty = Value Prelude.Text
  set newValue PropertyGroupProperty {..}
    = PropertyGroupProperty {groupType = Prelude.pure newValue, ..}
instance Property "PropertyNames" PropertyGroupProperty where
  type PropertyType "PropertyNames" PropertyGroupProperty = ValueList Prelude.Text
  set newValue PropertyGroupProperty {..}
    = PropertyGroupProperty {propertyNames = Prelude.pure newValue, ..}