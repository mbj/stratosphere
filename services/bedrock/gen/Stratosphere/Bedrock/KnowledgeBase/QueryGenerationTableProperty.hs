module Stratosphere.Bedrock.KnowledgeBase.QueryGenerationTableProperty (
        module Exports, QueryGenerationTableProperty(..),
        mkQueryGenerationTableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.QueryGenerationColumnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryGenerationTableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationtable.html>
    QueryGenerationTableProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationtable.html#cfn-bedrock-knowledgebase-querygenerationtable-columns>
                                  columns :: (Prelude.Maybe [QueryGenerationColumnProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationtable.html#cfn-bedrock-knowledgebase-querygenerationtable-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationtable.html#cfn-bedrock-knowledgebase-querygenerationtable-inclusion>
                                  inclusion :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationtable.html#cfn-bedrock-knowledgebase-querygenerationtable-name>
                                  name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryGenerationTableProperty ::
  Value Prelude.Text -> QueryGenerationTableProperty
mkQueryGenerationTableProperty name
  = QueryGenerationTableProperty
      {haddock_workaround_ = (), name = name, columns = Prelude.Nothing,
       description = Prelude.Nothing, inclusion = Prelude.Nothing}
instance ToResourceProperties QueryGenerationTableProperty where
  toResourceProperties QueryGenerationTableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.QueryGenerationTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Columns" Prelude.<$> columns,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Inclusion" Prelude.<$> inclusion]))}
instance JSON.ToJSON QueryGenerationTableProperty where
  toJSON QueryGenerationTableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Columns" Prelude.<$> columns,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Inclusion" Prelude.<$> inclusion])))
instance Property "Columns" QueryGenerationTableProperty where
  type PropertyType "Columns" QueryGenerationTableProperty = [QueryGenerationColumnProperty]
  set newValue QueryGenerationTableProperty {..}
    = QueryGenerationTableProperty
        {columns = Prelude.pure newValue, ..}
instance Property "Description" QueryGenerationTableProperty where
  type PropertyType "Description" QueryGenerationTableProperty = Value Prelude.Text
  set newValue QueryGenerationTableProperty {..}
    = QueryGenerationTableProperty
        {description = Prelude.pure newValue, ..}
instance Property "Inclusion" QueryGenerationTableProperty where
  type PropertyType "Inclusion" QueryGenerationTableProperty = Value Prelude.Text
  set newValue QueryGenerationTableProperty {..}
    = QueryGenerationTableProperty
        {inclusion = Prelude.pure newValue, ..}
instance Property "Name" QueryGenerationTableProperty where
  type PropertyType "Name" QueryGenerationTableProperty = Value Prelude.Text
  set newValue QueryGenerationTableProperty {..}
    = QueryGenerationTableProperty {name = newValue, ..}