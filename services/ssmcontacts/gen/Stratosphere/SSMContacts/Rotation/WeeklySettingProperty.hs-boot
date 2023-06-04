module Stratosphere.SSMContacts.Rotation.WeeklySettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WeeklySettingProperty :: Prelude.Type
instance ToResourceProperties WeeklySettingProperty
instance JSON.ToJSON WeeklySettingProperty