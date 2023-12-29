module Stratosphere.OpsWorks.App.DataSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataSourceProperty :: Prelude.Type
instance ToResourceProperties DataSourceProperty
instance Prelude.Eq DataSourceProperty
instance Prelude.Show DataSourceProperty
instance JSON.ToJSON DataSourceProperty