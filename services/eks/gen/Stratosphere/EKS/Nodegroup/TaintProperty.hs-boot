module Stratosphere.EKS.Nodegroup.TaintProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TaintProperty :: Prelude.Type
instance ToResourceProperties TaintProperty
instance Prelude.Eq TaintProperty
instance Prelude.Show TaintProperty
instance JSON.ToJSON TaintProperty