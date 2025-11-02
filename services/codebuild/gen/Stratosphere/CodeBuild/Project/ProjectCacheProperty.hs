module Stratosphere.CodeBuild.Project.ProjectCacheProperty (
        ProjectCacheProperty(..), mkProjectCacheProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectCacheProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html>
    ProjectCacheProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-location>
                          location :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-modes>
                          modes :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-type>
                          type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectCacheProperty ::
  Value Prelude.Text -> ProjectCacheProperty
mkProjectCacheProperty type'
  = ProjectCacheProperty
      {haddock_workaround_ = (), type' = type',
       location = Prelude.Nothing, modes = Prelude.Nothing}
instance ToResourceProperties ProjectCacheProperty where
  toResourceProperties ProjectCacheProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectCache",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Modes" Prelude.<$> modes]))}
instance JSON.ToJSON ProjectCacheProperty where
  toJSON ProjectCacheProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Modes" Prelude.<$> modes])))
instance Property "Location" ProjectCacheProperty where
  type PropertyType "Location" ProjectCacheProperty = Value Prelude.Text
  set newValue ProjectCacheProperty {..}
    = ProjectCacheProperty {location = Prelude.pure newValue, ..}
instance Property "Modes" ProjectCacheProperty where
  type PropertyType "Modes" ProjectCacheProperty = ValueList Prelude.Text
  set newValue ProjectCacheProperty {..}
    = ProjectCacheProperty {modes = Prelude.pure newValue, ..}
instance Property "Type" ProjectCacheProperty where
  type PropertyType "Type" ProjectCacheProperty = Value Prelude.Text
  set newValue ProjectCacheProperty {..}
    = ProjectCacheProperty {type' = newValue, ..}