module Stratosphere.ElasticBeanstalk.Environment.OptionSettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OptionSettingProperty :: Prelude.Type
instance ToResourceProperties OptionSettingProperty
instance JSON.ToJSON OptionSettingProperty