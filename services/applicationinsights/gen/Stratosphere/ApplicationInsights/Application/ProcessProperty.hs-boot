module Stratosphere.ApplicationInsights.Application.ProcessProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProcessProperty :: Prelude.Type
instance ToResourceProperties ProcessProperty
instance Prelude.Eq ProcessProperty
instance Prelude.Show ProcessProperty
instance JSON.ToJSON ProcessProperty