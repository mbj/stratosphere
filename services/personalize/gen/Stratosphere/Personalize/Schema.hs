module Stratosphere.Personalize.Schema (
        Schema(..), mkSchema
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Schema
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-schema.html>
    Schema {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-schema.html#cfn-personalize-schema-domain>
            domain :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-schema.html#cfn-personalize-schema-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-schema.html#cfn-personalize-schema-schema>
            schema :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchema :: Value Prelude.Text -> Value Prelude.Text -> Schema
mkSchema name schema
  = Schema
      {haddock_workaround_ = (), name = name, schema = schema,
       domain = Prelude.Nothing}
instance ToResourceProperties Schema where
  toResourceProperties Schema {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Schema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Schema" JSON..= schema]
                           (Prelude.catMaybes [(JSON..=) "Domain" Prelude.<$> domain]))}
instance JSON.ToJSON Schema where
  toJSON Schema {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Schema" JSON..= schema]
              (Prelude.catMaybes [(JSON..=) "Domain" Prelude.<$> domain])))
instance Property "Domain" Schema where
  type PropertyType "Domain" Schema = Value Prelude.Text
  set newValue Schema {..}
    = Schema {domain = Prelude.pure newValue, ..}
instance Property "Name" Schema where
  type PropertyType "Name" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {name = newValue, ..}
instance Property "Schema" Schema where
  type PropertyType "Schema" Schema = Value Prelude.Text
  set newValue Schema {..} = Schema {schema = newValue, ..}