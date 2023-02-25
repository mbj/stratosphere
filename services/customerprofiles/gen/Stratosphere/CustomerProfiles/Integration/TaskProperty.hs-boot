module Stratosphere.CustomerProfiles.Integration.TaskProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TaskProperty :: Prelude.Type
instance ToResourceProperties TaskProperty
instance JSON.ToJSON TaskProperty