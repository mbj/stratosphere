module Stratosphere.MediaLive.Channel.PassThroughSettingsProperty (
        PassThroughSettingsProperty(..), mkPassThroughSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PassThroughSettingsProperty
  = PassThroughSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPassThroughSettingsProperty :: PassThroughSettingsProperty
mkPassThroughSettingsProperty = PassThroughSettingsProperty {}
instance ToResourceProperties PassThroughSettingsProperty where
  toResourceProperties PassThroughSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.PassThroughSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON PassThroughSettingsProperty where
  toJSON PassThroughSettingsProperty {} = JSON.object []