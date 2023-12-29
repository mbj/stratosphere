module Stratosphere.AppRunner.Service.ImageConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ImageConfigurationProperty :: Prelude.Type
instance ToResourceProperties ImageConfigurationProperty
instance Prelude.Eq ImageConfigurationProperty
instance Prelude.Show ImageConfigurationProperty
instance JSON.ToJSON ImageConfigurationProperty