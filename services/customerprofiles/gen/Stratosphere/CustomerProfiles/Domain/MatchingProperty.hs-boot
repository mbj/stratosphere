module Stratosphere.CustomerProfiles.Domain.MatchingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatchingProperty :: Prelude.Type
instance ToResourceProperties MatchingProperty
instance Prelude.Eq MatchingProperty
instance Prelude.Show MatchingProperty
instance JSON.ToJSON MatchingProperty