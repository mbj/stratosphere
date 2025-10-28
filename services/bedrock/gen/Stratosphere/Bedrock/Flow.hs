module Stratosphere.Bedrock.Flow (
        module Exports, Flow(..), mkFlow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Flow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html>
    Flow {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-customerencryptionkeyarn>
          customerEncryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-definition>
          definition :: (Prelude.Maybe FlowDefinitionProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-definitions3location>
          definitionS3Location :: (Prelude.Maybe S3LocationProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-definitionstring>
          definitionString :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-definitionsubstitutions>
          definitionSubstitutions :: (Prelude.Maybe (Prelude.Map Prelude.Text JSON.Object)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-executionrolearn>
          executionRoleArn :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-name>
          name :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-tags>
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-flow.html#cfn-bedrock-flow-testaliastags>
          testAliasTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlow :: Value Prelude.Text -> Value Prelude.Text -> Flow
mkFlow executionRoleArn name
  = Flow
      {haddock_workaround_ = (), executionRoleArn = executionRoleArn,
       name = name, customerEncryptionKeyArn = Prelude.Nothing,
       definition = Prelude.Nothing,
       definitionS3Location = Prelude.Nothing,
       definitionString = Prelude.Nothing,
       definitionSubstitutions = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing,
       testAliasTags = Prelude.Nothing}
instance ToResourceProperties Flow where
  toResourceProperties Flow {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRoleArn" JSON..= executionRoleArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomerEncryptionKeyArn"
                                 Prelude.<$> customerEncryptionKeyArn,
                               (JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "DefinitionS3Location" Prelude.<$> definitionS3Location,
                               (JSON..=) "DefinitionString" Prelude.<$> definitionString,
                               (JSON..=) "DefinitionSubstitutions"
                                 Prelude.<$> definitionSubstitutions,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TestAliasTags" Prelude.<$> testAliasTags]))}
instance JSON.ToJSON Flow where
  toJSON Flow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRoleArn" JSON..= executionRoleArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CustomerEncryptionKeyArn"
                    Prelude.<$> customerEncryptionKeyArn,
                  (JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "DefinitionS3Location" Prelude.<$> definitionS3Location,
                  (JSON..=) "DefinitionString" Prelude.<$> definitionString,
                  (JSON..=) "DefinitionSubstitutions"
                    Prelude.<$> definitionSubstitutions,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TestAliasTags" Prelude.<$> testAliasTags])))
instance Property "CustomerEncryptionKeyArn" Flow where
  type PropertyType "CustomerEncryptionKeyArn" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {customerEncryptionKeyArn = Prelude.pure newValue, ..}
instance Property "Definition" Flow where
  type PropertyType "Definition" Flow = FlowDefinitionProperty
  set newValue Flow {..}
    = Flow {definition = Prelude.pure newValue, ..}
instance Property "DefinitionS3Location" Flow where
  type PropertyType "DefinitionS3Location" Flow = S3LocationProperty
  set newValue Flow {..}
    = Flow {definitionS3Location = Prelude.pure newValue, ..}
instance Property "DefinitionString" Flow where
  type PropertyType "DefinitionString" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {definitionString = Prelude.pure newValue, ..}
instance Property "DefinitionSubstitutions" Flow where
  type PropertyType "DefinitionSubstitutions" Flow = Prelude.Map Prelude.Text JSON.Object
  set newValue Flow {..}
    = Flow {definitionSubstitutions = Prelude.pure newValue, ..}
instance Property "Description" Flow where
  type PropertyType "Description" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {description = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" Flow where
  type PropertyType "ExecutionRoleArn" Flow = Value Prelude.Text
  set newValue Flow {..} = Flow {executionRoleArn = newValue, ..}
instance Property "Name" Flow where
  type PropertyType "Name" Flow = Value Prelude.Text
  set newValue Flow {..} = Flow {name = newValue, ..}
instance Property "Tags" Flow where
  type PropertyType "Tags" Flow = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Flow {..} = Flow {tags = Prelude.pure newValue, ..}
instance Property "TestAliasTags" Flow where
  type PropertyType "TestAliasTags" Flow = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Flow {..}
    = Flow {testAliasTags = Prelude.pure newValue, ..}