module Stratosphere.Rbin.Rule.UnlockDelayProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UnlockDelayProperty :: Prelude.Type
instance ToResourceProperties UnlockDelayProperty
instance Prelude.Eq UnlockDelayProperty
instance Prelude.Show UnlockDelayProperty
instance JSON.ToJSON UnlockDelayProperty