module Stratosphere.EC2.Instance.StateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StateProperty :: Prelude.Type
instance ToResourceProperties StateProperty
instance Prelude.Eq StateProperty
instance Prelude.Show StateProperty
instance JSON.ToJSON StateProperty