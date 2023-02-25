module Stratosphere.Lex.Bot.TextLogSettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TextLogSettingProperty :: Prelude.Type
instance ToResourceProperties TextLogSettingProperty
instance JSON.ToJSON TextLogSettingProperty