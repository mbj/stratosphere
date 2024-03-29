module Stratosphere.IoT1Click.Project.DeviceTemplateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeviceTemplateProperty :: Prelude.Type
instance ToResourceProperties DeviceTemplateProperty
instance Prelude.Eq DeviceTemplateProperty
instance Prelude.Show DeviceTemplateProperty
instance JSON.ToJSON DeviceTemplateProperty