module Stratosphere.Bedrock.KnowledgeBase.QueryGenerationColumnProperty (
        QueryGenerationColumnProperty(..), mkQueryGenerationColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryGenerationColumnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcolumn.html>
    QueryGenerationColumnProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcolumn.html#cfn-bedrock-knowledgebase-querygenerationcolumn-description>
                                   description :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcolumn.html#cfn-bedrock-knowledgebase-querygenerationcolumn-inclusion>
                                   inclusion :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcolumn.html#cfn-bedrock-knowledgebase-querygenerationcolumn-name>
                                   name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryGenerationColumnProperty :: QueryGenerationColumnProperty
mkQueryGenerationColumnProperty
  = QueryGenerationColumnProperty
      {haddock_workaround_ = (), description = Prelude.Nothing,
       inclusion = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties QueryGenerationColumnProperty where
  toResourceProperties QueryGenerationColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.QueryGenerationColumn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Inclusion" Prelude.<$> inclusion,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON QueryGenerationColumnProperty where
  toJSON QueryGenerationColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Inclusion" Prelude.<$> inclusion,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Description" QueryGenerationColumnProperty where
  type PropertyType "Description" QueryGenerationColumnProperty = Value Prelude.Text
  set newValue QueryGenerationColumnProperty {..}
    = QueryGenerationColumnProperty
        {description = Prelude.pure newValue, ..}
instance Property "Inclusion" QueryGenerationColumnProperty where
  type PropertyType "Inclusion" QueryGenerationColumnProperty = Value Prelude.Text
  set newValue QueryGenerationColumnProperty {..}
    = QueryGenerationColumnProperty
        {inclusion = Prelude.pure newValue, ..}
instance Property "Name" QueryGenerationColumnProperty where
  type PropertyType "Name" QueryGenerationColumnProperty = Value Prelude.Text
  set newValue QueryGenerationColumnProperty {..}
    = QueryGenerationColumnProperty {name = Prelude.pure newValue, ..}