module Stratosphere.FMS.Policy.IEMapProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IEMapProperty :: Prelude.Type
instance ToResourceProperties IEMapProperty
instance Prelude.Eq IEMapProperty
instance Prelude.Show IEMapProperty
instance JSON.ToJSON IEMapProperty