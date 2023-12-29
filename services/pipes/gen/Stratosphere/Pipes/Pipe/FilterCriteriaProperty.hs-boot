module Stratosphere.Pipes.Pipe.FilterCriteriaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterCriteriaProperty :: Prelude.Type
instance ToResourceProperties FilterCriteriaProperty
instance Prelude.Eq FilterCriteriaProperty
instance Prelude.Show FilterCriteriaProperty
instance JSON.ToJSON FilterCriteriaProperty