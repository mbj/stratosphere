module Stratosphere.FraudDetector.EntityType (
        EntityType(..), mkEntityType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EntityType
  = EntityType {description :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
mkEntityType :: Value Prelude.Text -> EntityType
mkEntityType name
  = EntityType
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EntityType where
  toResourceProperties EntityType {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::EntityType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EntityType where
  toJSON EntityType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EntityType where
  type PropertyType "Description" EntityType = Value Prelude.Text
  set newValue EntityType {..}
    = EntityType {description = Prelude.pure newValue, ..}
instance Property "Name" EntityType where
  type PropertyType "Name" EntityType = Value Prelude.Text
  set newValue EntityType {..} = EntityType {name = newValue, ..}
instance Property "Tags" EntityType where
  type PropertyType "Tags" EntityType = [Tag]
  set newValue EntityType {..}
    = EntityType {tags = Prelude.pure newValue, ..}