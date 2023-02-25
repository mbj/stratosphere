module Stratosphere.AppSync.DataSource.DeltaSyncConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeltaSyncConfigProperty :: Prelude.Type
instance ToResourceProperties DeltaSyncConfigProperty
instance JSON.ToJSON DeltaSyncConfigProperty