module Stratosphere.MSK.Cluster.ConfigurationInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConfigurationInfoProperty :: Prelude.Type
instance ToResourceProperties ConfigurationInfoProperty
instance JSON.ToJSON ConfigurationInfoProperty