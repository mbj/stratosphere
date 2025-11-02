module Stratosphere.CodeBuild.Project.ProjectSourceVersionProperty (
        ProjectSourceVersionProperty(..), mkProjectSourceVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectSourceVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html>
    ProjectSourceVersionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceidentifier>
                                  sourceIdentifier :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceversion>
                                  sourceVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectSourceVersionProperty ::
  Value Prelude.Text -> ProjectSourceVersionProperty
mkProjectSourceVersionProperty sourceIdentifier
  = ProjectSourceVersionProperty
      {haddock_workaround_ = (), sourceIdentifier = sourceIdentifier,
       sourceVersion = Prelude.Nothing}
instance ToResourceProperties ProjectSourceVersionProperty where
  toResourceProperties ProjectSourceVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectSourceVersion",
         supportsTags = Prelude.False,
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