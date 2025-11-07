module Stratosphere.Bedrock.Blueprint (
        Blueprint(..), mkBlueprint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Blueprint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html>
    Blueprint {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html#cfn-bedrock-blueprint-blueprintname>
               blueprintName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html#cfn-bedrock-blueprint-kmsencryptioncontext>
               kmsEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html#cfn-bedrock-blueprint-kmskeyid>
               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html#cfn-bedrock-blueprint-schema>
               schema :: JSON.Object,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html#cfn-bedrock-blueprint-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-blueprint.html#cfn-bedrock-blueprint-type>
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlueprint ::
  Value Prelude.Text
  -> JSON.Object -> Value Prelude.Text -> Blueprint
mkBlueprint blueprintName schema type'
  = Blueprint
      {haddock_workaround_ = (), blueprintName = blueprintName,
       schema = schema, type' = type',
       kmsEncryptionContext = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Blueprint where
  toResourceProperties Blueprint {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Blueprint", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BlueprintName" JSON..= blueprintName, "Schema" JSON..= schema,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "KmsEncryptionContext" Prelude.<$> kmsEncryptionContext,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Blueprint where
  toJSON Blueprint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BlueprintName" JSON..= blueprintName, "Schema" JSON..= schema,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "KmsEncryptionContext" Prelude.<$> kmsEncryptionContext,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BlueprintName" Blueprint where
  type PropertyType "BlueprintName" Blueprint = Value Prelude.Text
  set newValue Blueprint {..}
    = Blueprint {blueprintName = newValue, ..}
instance Property "KmsEncryptionContext" Blueprint where
  type PropertyType "KmsEncryptionContext" Blueprint = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Blueprint {..}
    = Blueprint {kmsEncryptionContext = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Blueprint where
  type PropertyType "KmsKeyId" Blueprint = Value Prelude.Text
  set newValue Blueprint {..}
    = Blueprint {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Schema" Blueprint where
  type PropertyType "Schema" Blueprint = JSON.Object
  set newValue Blueprint {..} = Blueprint {schema = newValue, ..}
instance Property "Tags" Blueprint where
  type PropertyType "Tags" Blueprint = [Tag]
  set newValue Blueprint {..}
    = Blueprint {tags = Prelude.pure newValue, ..}
instance Property "Type" Blueprint where
  type PropertyType "Type" Blueprint = Value Prelude.Text
  set newValue Blueprint {..} = Blueprint {type' = newValue, ..}