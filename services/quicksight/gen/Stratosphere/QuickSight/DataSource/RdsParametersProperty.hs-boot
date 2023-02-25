module Stratosphere.QuickSight.DataSource.RdsParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RdsParametersProperty :: Prelude.Type
instance ToResourceProperties RdsParametersProperty
instance JSON.ToJSON RdsParametersProperty