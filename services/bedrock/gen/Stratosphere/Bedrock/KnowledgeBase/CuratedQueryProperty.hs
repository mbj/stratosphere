module Stratosphere.Bedrock.KnowledgeBase.CuratedQueryProperty (
        CuratedQueryProperty(..), mkCuratedQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CuratedQueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-curatedquery.html>
    CuratedQueryProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-curatedquery.html#cfn-bedrock-knowledgebase-curatedquery-naturallanguage>
                          naturalLanguage :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-curatedquery.html#cfn-bedrock-knowledgebase-curatedquery-sql>
                          sql :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCuratedQueryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CuratedQueryProperty
mkCuratedQueryProperty naturalLanguage sql
  = CuratedQueryProperty
      {haddock_workaround_ = (), naturalLanguage = naturalLanguage,
       sql = sql}
instance ToResourceProperties CuratedQueryProperty where
  toResourceProperties CuratedQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.CuratedQuery",
         supportsTags = Prelude.False,
         properties = ["NaturalLanguage" JSON..= naturalLanguage,
                       "Sql" JSON..= sql]}
instance JSON.ToJSON CuratedQueryProperty where
  toJSON CuratedQueryProperty {..}
    = JSON.object
        ["NaturalLanguage" JSON..= naturalLanguage, "Sql" JSON..= sql]
instance Property "NaturalLanguage" CuratedQueryProperty where
  type PropertyType "NaturalLanguage" CuratedQueryProperty = Value Prelude.Text
  set newValue CuratedQueryProperty {..}
    = CuratedQueryProperty {naturalLanguage = newValue, ..}
instance Property "Sql" CuratedQueryProperty where
  type PropertyType "Sql" CuratedQueryProperty = Value Prelude.Text
  set newValue CuratedQueryProperty {..}
    = CuratedQueryProperty {sql = newValue, ..}