module Stratosphere.EFS.AccessPoint.AccessPointTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessPointTagProperty :: Prelude.Type
instance ToResourceProperties AccessPointTagProperty
instance JSON.ToJSON AccessPointTagProperty