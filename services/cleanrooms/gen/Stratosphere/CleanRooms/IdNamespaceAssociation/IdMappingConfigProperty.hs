module Stratosphere.CleanRooms.IdNamespaceAssociation.IdMappingConfigProperty (
        IdMappingConfigProperty(..), mkIdMappingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingConfigProperty
  = IdMappingConfigProperty {allowUseAsDimensionColumn :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingConfigProperty ::
  Value Prelude.Bool -> IdMappingConfigProperty
mkIdMappingConfigProperty allowUseAsDimensionColumn
  = IdMappingConfigProperty
      {allowUseAsDimensionColumn = allowUseAsDimensionColumn}
instance ToResourceProperties IdMappingConfigProperty where
  toResourceProperties IdMappingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdNamespaceAssociation.IdMappingConfig",
         supportsTags = Prelude.False,
         properties = ["AllowUseAsDimensionColumn"
                         JSON..= allowUseAsDimensionColumn]}
instance JSON.ToJSON IdMappingConfigProperty where
  toJSON IdMappingConfigProperty {..}
    = JSON.object
        ["AllowUseAsDimensionColumn" JSON..= allowUseAsDimensionColumn]
instance Property "AllowUseAsDimensionColumn" IdMappingConfigProperty where
  type PropertyType "AllowUseAsDimensionColumn" IdMappingConfigProperty = Value Prelude.Bool
  set newValue IdMappingConfigProperty {}
    = IdMappingConfigProperty
        {allowUseAsDimensionColumn = newValue, ..}