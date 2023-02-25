module Stratosphere.Backup.Framework.FrameworkControlProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FrameworkControlProperty :: Prelude.Type
instance ToResourceProperties FrameworkControlProperty
instance JSON.ToJSON FrameworkControlProperty