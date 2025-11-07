module Stratosphere.Bedrock.KnowledgeBase.CuratedQueryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CuratedQueryProperty :: Prelude.Type
instance ToResourceProperties CuratedQueryProperty
instance Prelude.Eq CuratedQueryProperty
instance Prelude.Show CuratedQueryProperty
instance JSON.ToJSON CuratedQueryProperty