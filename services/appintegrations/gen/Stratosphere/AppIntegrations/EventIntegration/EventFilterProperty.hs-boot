module Stratosphere.AppIntegrations.EventIntegration.EventFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventFilterProperty :: Prelude.Type
instance ToResourceProperties EventFilterProperty
instance Prelude.Eq EventFilterProperty
instance Prelude.Show EventFilterProperty
instance JSON.ToJSON EventFilterProperty