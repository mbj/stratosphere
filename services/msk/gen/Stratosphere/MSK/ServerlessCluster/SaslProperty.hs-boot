module Stratosphere.MSK.ServerlessCluster.SaslProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SaslProperty :: Prelude.Type
instance ToResourceProperties SaslProperty
instance JSON.ToJSON SaslProperty