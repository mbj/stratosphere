module Stratosphere.DataSync.Task.OptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OptionsProperty :: Prelude.Type
instance ToResourceProperties OptionsProperty
instance Prelude.Eq OptionsProperty
instance Prelude.Show OptionsProperty
instance JSON.ToJSON OptionsProperty