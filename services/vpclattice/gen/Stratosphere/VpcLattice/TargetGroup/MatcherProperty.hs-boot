module Stratosphere.VpcLattice.TargetGroup.MatcherProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatcherProperty :: Prelude.Type
instance ToResourceProperties MatcherProperty
instance JSON.ToJSON MatcherProperty