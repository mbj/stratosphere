module Stratosphere.VpcLattice.Rule.MatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatchProperty :: Prelude.Type
instance ToResourceProperties MatchProperty
instance Prelude.Eq MatchProperty
instance Prelude.Show MatchProperty
instance JSON.ToJSON MatchProperty