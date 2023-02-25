module Stratosphere.M2.Application.DefinitionProperty (
        DefinitionProperty(..), mkDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefinitionProperty
  = DefinitionProperty {content :: (Prelude.Maybe (Value Prelude.Text)),
                        s3Location :: (Prelude.Maybe (Value Prelude.Text))}
mkDefinitionProperty :: DefinitionProperty
mkDefinitionProperty
  = DefinitionProperty
      {content = Prelude.Nothing, s3Location = Prelude.Nothing}
instance ToResourceProperties DefinitionProperty where
  toResourceProperties DefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Application.Definition",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Content" Prelude.<$> content,
                            (JSON..=) "S3Location" Prelude.<$> s3Location])}
instance JSON.ToJSON DefinitionProperty where
  toJSON DefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Content" Prelude.<$> content,
               (JSON..=) "S3Location" Prelude.<$> s3Location]))
instance Property "Content" DefinitionProperty where
  type PropertyType "Content" DefinitionProperty = Value Prelude.Text
  set newValue DefinitionProperty {..}
    = DefinitionProperty {content = Prelude.pure newValue, ..}
instance Property "S3Location" DefinitionProperty where
  type PropertyType "S3Location" DefinitionProperty = Value Prelude.Text
  set newValue DefinitionProperty {..}
    = DefinitionProperty {s3Location = Prelude.pure newValue, ..}