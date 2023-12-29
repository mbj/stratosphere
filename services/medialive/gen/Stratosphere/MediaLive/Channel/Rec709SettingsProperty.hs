module Stratosphere.MediaLive.Channel.Rec709SettingsProperty (
        Rec709SettingsProperty(..), mkRec709SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Rec709SettingsProperty
  = Rec709SettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRec709SettingsProperty :: Rec709SettingsProperty
mkRec709SettingsProperty = Rec709SettingsProperty {}
instance ToResourceProperties Rec709SettingsProperty where
  toResourceProperties Rec709SettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Rec709Settings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON Rec709SettingsProperty where
  toJSON Rec709SettingsProperty {} = JSON.object []