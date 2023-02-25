module Stratosphere.MSK.ServerlessCluster.IamProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IamProperty :: Prelude.Type
instance ToResourceProperties IamProperty
instance JSON.ToJSON IamProperty