module Stratosphere.MediaLive.Channel.Rec601SettingsProperty (
        Rec601SettingsProperty(..), mkRec601SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Rec601SettingsProperty = Rec601SettingsProperty {}
mkRec601SettingsProperty :: Rec601SettingsProperty
mkRec601SettingsProperty = Rec601SettingsProperty {}
instance ToResourceProperties Rec601SettingsProperty where
  toResourceProperties Rec601SettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Rec601Settings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON Rec601SettingsProperty where
  toJSON Rec601SettingsProperty {} = JSON.object []