module Stratosphere.AppConfig.Environment.MonitorsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MonitorsProperty :: Prelude.Type
instance ToResourceProperties MonitorsProperty
instance Prelude.Eq MonitorsProperty
instance Prelude.Show MonitorsProperty
instance JSON.ToJSON MonitorsProperty