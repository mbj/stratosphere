module Stratosphere.Config.RemediationConfiguration.StaticValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StaticValueProperty :: Prelude.Type
instance ToResourceProperties StaticValueProperty
instance Prelude.Eq StaticValueProperty
instance Prelude.Show StaticValueProperty
instance JSON.ToJSON StaticValueProperty