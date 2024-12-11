module Stratosphere.FIS.ExperimentTemplate.DataSourcesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataSourcesProperty :: Prelude.Type
instance ToResourceProperties DataSourcesProperty
instance Prelude.Eq DataSourcesProperty
instance Prelude.Show DataSourcesProperty
instance JSON.ToJSON DataSourcesProperty