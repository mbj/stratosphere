module Stratosphere.Deadline.Queue.WindowsUserProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WindowsUserProperty :: Prelude.Type
instance ToResourceProperties WindowsUserProperty
instance Prelude.Eq WindowsUserProperty
instance Prelude.Show WindowsUserProperty
instance JSON.ToJSON WindowsUserProperty