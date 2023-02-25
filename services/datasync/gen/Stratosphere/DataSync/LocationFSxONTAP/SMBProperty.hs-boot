module Stratosphere.DataSync.LocationFSxONTAP.SMBProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SMBProperty :: Prelude.Type
instance ToResourceProperties SMBProperty
instance JSON.ToJSON SMBProperty