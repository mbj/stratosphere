module Stratosphere.Comprehend.Flywheel.EntityTypesListItemProperty (
        EntityTypesListItemProperty(..), mkEntityTypesListItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntityTypesListItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-entitytypeslistitem.html>
    EntityTypesListItemProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-entitytypeslistitem.html#cfn-comprehend-flywheel-entitytypeslistitem-type>
                                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityTypesListItemProperty ::
  Value Prelude.Text -> EntityTypesListItemProperty
mkEntityTypesListItemProperty type'
  = EntityTypesListItemProperty
      {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties EntityTypesListItemProperty where
  toResourceProperties EntityTypesListItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::Flywheel.EntityTypesListItem",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON EntityTypesListItemProperty where
  toJSON EntityTypesListItemProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" EntityTypesListItemProperty where
  type PropertyType "Type" EntityTypesListItemProperty = Value Prelude.Text
  set newValue EntityTypesListItemProperty {..}
    = EntityTypesListItemProperty {type' = newValue, ..}