module Stratosphere.EVS.Environment.VcfHostnamesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VcfHostnamesProperty :: Prelude.Type
instance ToResourceProperties VcfHostnamesProperty
instance Prelude.Eq VcfHostnamesProperty
instance Prelude.Show VcfHostnamesProperty
instance JSON.ToJSON VcfHostnamesProperty