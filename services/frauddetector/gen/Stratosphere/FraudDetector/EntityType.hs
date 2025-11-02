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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-entitytype.html>
    EntityType {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-entitytype.html#cfn-frauddetector-entitytype-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-entitytype.html#cfn-frauddetector-entitytype-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-entitytype.html#cfn-frauddetector-entitytype-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityType :: Value Prelude.Text -> EntityType
mkEntityType name
  = EntityType
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
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