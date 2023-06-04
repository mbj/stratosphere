module Stratosphere.VpcLattice.Rule.HttpMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpMatchProperty :: Prelude.Type
instance ToResourceProperties HttpMatchProperty
instance JSON.ToJSON HttpMatchProperty