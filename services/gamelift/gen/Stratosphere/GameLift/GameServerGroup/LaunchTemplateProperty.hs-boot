module Stratosphere.GameLift.GameServerGroup.LaunchTemplateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LaunchTemplateProperty :: Prelude.Type
instance ToResourceProperties LaunchTemplateProperty
instance JSON.ToJSON LaunchTemplateProperty