module Stratosphere.AppFlow.Flow.InforNexusSourcePropertiesProperty (
        InforNexusSourcePropertiesProperty(..),
        mkInforNexusSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InforNexusSourcePropertiesProperty
  = InforNexusSourcePropertiesProperty {object :: (Value Prelude.Text)}
mkInforNexusSourcePropertiesProperty ::
  Value Prelude.Text -> InforNexusSourcePropertiesProperty
mkInforNexusSourcePropertiesProperty object
  = InforNexusSourcePropertiesProperty {object = object}
instance ToResourceProperties InforNexusSourcePropertiesProperty where
  toResourceProperties InforNexusSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.InforNexusSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON InforNexusSourcePropertiesProperty where
  toJSON InforNexusSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" InforNexusSourcePropertiesProperty where
  type PropertyType "Object" InforNexusSourcePropertiesProperty = Value Prelude.Text
  set newValue InforNexusSourcePropertiesProperty {}
    = InforNexusSourcePropertiesProperty {object = newValue, ..}