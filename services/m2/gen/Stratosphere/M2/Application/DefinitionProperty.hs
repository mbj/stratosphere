module Stratosphere.M2.Application.DefinitionProperty (
        DefinitionProperty(..), mkDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-application-definition.html>
    DefinitionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-application-definition.html#cfn-m2-application-definition-content>
                        content :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-application-definition.html#cfn-m2-application-definition-s3location>
                        s3Location :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefinitionProperty :: DefinitionProperty
mkDefinitionProperty
  = DefinitionProperty
      {haddock_workaround_ = (), content = Prelude.Nothing,
       s3Location = Prelude.Nothing}
instance ToResourceProperties DefinitionProperty where
  toResourceProperties DefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Application.Definition",
         supportsTags = Prelude.False,
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