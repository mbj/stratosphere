module Stratosphere.Bedrock.KnowledgeBase.QueryGenerationContextProperty (
        module Exports, QueryGenerationContextProperty(..),
        mkQueryGenerationContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.CuratedQueryProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.QueryGenerationTableProperty as Exports
import Stratosphere.ResourceProperties
data QueryGenerationContextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcontext.html>
    QueryGenerationContextProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcontext.html#cfn-bedrock-knowledgebase-querygenerationcontext-curatedqueries>
                                    curatedQueries :: (Prelude.Maybe [CuratedQueryProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationcontext.html#cfn-bedrock-knowledgebase-querygenerationcontext-tables>
                                    tables :: (Prelude.Maybe [QueryGenerationTableProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryGenerationContextProperty :: QueryGenerationContextProperty
mkQueryGenerationContextProperty
  = QueryGenerationContextProperty
      {haddock_workaround_ = (), curatedQueries = Prelude.Nothing,
       tables = Prelude.Nothing}
instance ToResourceProperties QueryGenerationContextProperty where
  toResourceProperties QueryGenerationContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.QueryGenerationContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CuratedQueries" Prelude.<$> curatedQueries,
                            (JSON..=) "Tables" Prelude.<$> tables])}
instance JSON.ToJSON QueryGenerationContextProperty where
  toJSON QueryGenerationContextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CuratedQueries" Prelude.<$> curatedQueries,
               (JSON..=) "Tables" Prelude.<$> tables]))
instance Property "CuratedQueries" QueryGenerationContextProperty where
  type PropertyType "CuratedQueries" QueryGenerationContextProperty = [CuratedQueryProperty]
  set newValue QueryGenerationContextProperty {..}
    = QueryGenerationContextProperty
        {curatedQueries = Prelude.pure newValue, ..}
instance Property "Tables" QueryGenerationContextProperty where
  type PropertyType "Tables" QueryGenerationContextProperty = [QueryGenerationTableProperty]
  set newValue QueryGenerationContextProperty {..}
    = QueryGenerationContextProperty
        {tables = Prelude.pure newValue, ..}