module Stratosphere.IoT.SecurityProfile.AlertTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlertTargetProperty :: Prelude.Type
instance ToResourceProperties AlertTargetProperty
instance JSON.ToJSON AlertTargetProperty