module Stratosphere.EVS.Environment.CheckProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CheckProperty :: Prelude.Type
instance ToResourceProperties CheckProperty
instance Prelude.Eq CheckProperty
instance Prelude.Show CheckProperty
instance JSON.ToJSON CheckProperty