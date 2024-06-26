module Stratosphere.AppStream.Stack.UserSettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserSettingProperty :: Prelude.Type
instance ToResourceProperties UserSettingProperty
instance Prelude.Eq UserSettingProperty
instance Prelude.Show UserSettingProperty
instance JSON.ToJSON UserSettingProperty