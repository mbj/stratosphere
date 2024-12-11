module Stratosphere.BCMDataExports.Export.DataQueryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataQueryProperty :: Prelude.Type
instance ToResourceProperties DataQueryProperty
instance Prelude.Eq DataQueryProperty
instance Prelude.Show DataQueryProperty
instance JSON.ToJSON DataQueryProperty