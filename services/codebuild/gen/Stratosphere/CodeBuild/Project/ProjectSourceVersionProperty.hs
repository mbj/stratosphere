module Stratosphere.CodeBuild.Project.ProjectSourceVersionProperty (
        ProjectSourceVersionProperty(..), mkProjectSourceVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectSourceVersionProperty
  = ProjectSourceVersionProperty {sourceIdentifier :: (Value Prelude.Text),
                                  sourceVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkProjectSourceVersionProperty ::
  Value Prelude.Text -> ProjectSourceVersionProperty
mkProjectSourceVersionProperty sourceIdentifier
  = ProjectSourceVersionProperty
      {sourceIdentifier = sourceIdentifier,
       sourceVersion = Prelude.Nothing}
instance ToResourceProperties ProjectSourceVersionProperty where
  toResourceProperties ProjectSourceVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectSourceVersion",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceIdentifier" JSON..= sourceIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "SourceVersion" Prelude.<$> sourceVersion]))}
instance JSON.ToJSON ProjectSourceVersionProperty where
  toJSON ProjectSourceVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceIdentifier" JSON..= sourceIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "SourceVersion" Prelude.<$> sourceVersion])))
instance Property "SourceIdentifier" ProjectSourceVersionProperty where
  type PropertyType "SourceIdentifier" ProjectSourceVersionProperty = Value Prelude.Text
  set newValue ProjectSourceVersionProperty {..}
    = ProjectSourceVersionProperty {sourceIdentifier = newValue, ..}
instance Property "SourceVersion" ProjectSourceVersionProperty where
  type PropertyType "SourceVersion" ProjectSourceVersionProperty = Value Prelude.Text
  set newValue ProjectSourceVersionProperty {..}
    = ProjectSourceVersionProperty
        {sourceVersion = Prelude.pure newValue, ..}