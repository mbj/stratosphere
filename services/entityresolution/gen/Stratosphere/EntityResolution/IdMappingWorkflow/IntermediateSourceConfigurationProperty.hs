module Stratosphere.EntityResolution.IdMappingWorkflow.IntermediateSourceConfigurationProperty (
        IntermediateSourceConfigurationProperty(..),
        mkIntermediateSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntermediateSourceConfigurationProperty
  = IntermediateSourceConfigurationProperty {intermediateS3Path :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntermediateSourceConfigurationProperty ::
  Value Prelude.Text -> IntermediateSourceConfigurationProperty
mkIntermediateSourceConfigurationProperty intermediateS3Path
  = IntermediateSourceConfigurationProperty
      {intermediateS3Path = intermediateS3Path}
instance ToResourceProperties IntermediateSourceConfigurationProperty where
  toResourceProperties IntermediateSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.IntermediateSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["IntermediateS3Path" JSON..= intermediateS3Path]}
instance JSON.ToJSON IntermediateSourceConfigurationProperty where
  toJSON IntermediateSourceConfigurationProperty {..}
    = JSON.object ["IntermediateS3Path" JSON..= intermediateS3Path]
instance Property "IntermediateS3Path" IntermediateSourceConfigurationProperty where
  type PropertyType "IntermediateS3Path" IntermediateSourceConfigurationProperty = Value Prelude.Text
  set newValue IntermediateSourceConfigurationProperty {}
    = IntermediateSourceConfigurationProperty
        {intermediateS3Path = newValue, ..}