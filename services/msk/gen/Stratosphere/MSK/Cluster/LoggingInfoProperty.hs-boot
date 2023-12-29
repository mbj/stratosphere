module Stratosphere.MSK.Cluster.LoggingInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingInfoProperty :: Prelude.Type
instance ToResourceProperties LoggingInfoProperty
instance Prelude.Eq LoggingInfoProperty
instance Prelude.Show LoggingInfoProperty
instance JSON.ToJSON LoggingInfoProperty