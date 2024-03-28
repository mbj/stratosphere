module Stratosphere.NetworkManager.Device.AWSLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AWSLocationProperty :: Prelude.Type
instance ToResourceProperties AWSLocationProperty
instance Prelude.Eq AWSLocationProperty
instance Prelude.Show AWSLocationProperty
instance JSON.ToJSON AWSLocationProperty