module Stratosphere.ApiGateway.ApiKey.StageKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StageKeyProperty :: Prelude.Type
instance ToResourceProperties StageKeyProperty
instance Prelude.Eq StageKeyProperty
instance Prelude.Show StageKeyProperty
instance JSON.ToJSON StageKeyProperty