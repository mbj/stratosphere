module Stratosphere.VpcLattice.Rule.PathMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PathMatchProperty :: Prelude.Type
instance ToResourceProperties PathMatchProperty
instance JSON.ToJSON PathMatchProperty