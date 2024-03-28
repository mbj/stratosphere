module Stratosphere.B2BI.Capability.EdiTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EdiTypeProperty :: Prelude.Type
instance ToResourceProperties EdiTypeProperty
instance Prelude.Eq EdiTypeProperty
instance Prelude.Show EdiTypeProperty
instance JSON.ToJSON EdiTypeProperty