module Stratosphere.IoTSiteWise.AssetModel.PropertyPathDefinitionProperty (
        PropertyPathDefinitionProperty(..),
        mkPropertyPathDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyPathDefinitionProperty
  = PropertyPathDefinitionProperty {name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyPathDefinitionProperty ::
  Value Prelude.Text -> PropertyPathDefinitionProperty
mkPropertyPathDefinitionProperty name
  = PropertyPathDefinitionProperty {name = name}
instance ToResourceProperties PropertyPathDefinitionProperty where
  toResourceProperties PropertyPathDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.PropertyPathDefinition",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON PropertyPathDefinitionProperty where
  toJSON PropertyPathDefinitionProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" PropertyPathDefinitionProperty where
  type PropertyType "Name" PropertyPathDefinitionProperty = Value Prelude.Text
  set newValue PropertyPathDefinitionProperty {}
    = PropertyPathDefinitionProperty {name = newValue, ..}