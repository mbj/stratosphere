module Stratosphere.Pinpoint.ApplicationSettings.QuietTimeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data QuietTimeProperty :: Prelude.Type
instance ToResourceProperties QuietTimeProperty
instance JSON.ToJSON QuietTimeProperty