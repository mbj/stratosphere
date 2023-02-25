module Stratosphere.IoTSiteWise.AccessPolicy.ProjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProjectProperty :: Prelude.Type
instance ToResourceProperties ProjectProperty
instance JSON.ToJSON ProjectProperty