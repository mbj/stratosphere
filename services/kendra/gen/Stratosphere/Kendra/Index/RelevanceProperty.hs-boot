module Stratosphere.Kendra.Index.RelevanceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RelevanceProperty :: Prelude.Type
instance ToResourceProperties RelevanceProperty
instance Prelude.Eq RelevanceProperty
instance Prelude.Show RelevanceProperty
instance JSON.ToJSON RelevanceProperty